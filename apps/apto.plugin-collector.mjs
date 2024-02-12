import readDirRecursive from 'recursive-readdir-synchronous';
import path from 'path';
import filesystem from 'fs';

export default class AptoPluginCollector {
    constructor(searchDirs) {
        this.searchDirs = searchDirs;

        this.apps = [];
        this.plugins = [];
        this.tsConfigPaths = {};
        this.angularFileReplacements = {
            backend: [],
            frontend: []
        };
        this.imports = {
            core: [],
            backend: [],
            frontend: []
        };

        this.collectPlugins();
        this.collectTsConfigPaths();
        this.collectAngularFileReplacements();
        this.collectImports();
    }

    build() {
        //this.writePaths();
        this.writeTsConfig();
        this.writeAngularOptions();
        this.writeImports();
    }

    collectPlugins() {
        let lookup = {};
        let pluginFiles = [];

        for (let i = 0; i < this.searchDirs.length; i++) {
            const searchDir = this.searchDirs[i];

            if (!filesystem.existsSync(searchDir)) {
                continue;
            }

            pluginFiles = [
                ...pluginFiles,
                ...readDirRecursive(searchDir, [this.ignoreFileMatch])
            ];
        }

        for (let i = 0; i < pluginFiles.length; i++) {
            // define plugin
            const pluginFile = pluginFiles[i];
            const pluginPath = path.dirname(pluginFile) + '/';
            const rootPath = path.relative(pluginPath, '') + '/';
            const pluginConfig = JSON.parse(filesystem.readFileSync(pluginFile).toString());

            // if plugin is already registered continue with next one
            if (lookup[pluginConfig.id]) {
                continue;
            }

            // set package as already registered
            lookup[pluginConfig.id] = true;

            // add plugin to plugins
            this.plugins.push(
                {
                    file: pluginFile,
                    path: pluginPath,
                    root: rootPath,
                    config: pluginConfig
                }
            );

            if (!this.apps.includes(pluginConfig.app)) {
                this.apps.push(pluginConfig.app);
            }
        }

        // sort clients by priority
        this.plugins.sort(this.sortPluginsByPriority);
    }

    collectTsConfigPaths() {
        this.tsConfigPaths = {
            compilerOptions: {
                paths: {}
            }
        };

        for (let i = 0; i < this.plugins.length; i++) {
            const plugin = this.plugins[i];

            this.tsConfigPaths.compilerOptions.paths['@' + plugin.config.id + '/*'] = [ plugin.path + '*' ];

            for (const alias of plugin.config.aliases || []) {
                this.tsConfigPaths.compilerOptions.paths[alias.alias] = [ plugin.path + alias.path ];
            }
        }
    }

    collectAngularFileReplacements() {
        for (let i = 0; i < this.apps.length; i++) {
            const app = this.apps[i];
            const plugins = this.getAppPlugins(app);

            // core plugins dont support file replacements
            if (app === 'core') {
                for (let j = 0; j < plugins.length; j++) {
                    const plugin = plugins[j];
                    if (plugin.config.fileReplacements) {
                        throw "Core plugins dont support fileReplacements directly. If you want to replace a core file you have to specify it for a specific app(backend or frontend).";
                    }
                }
                continue;
            }

            // reset file replacements
            this.angularFileReplacements[app] = [];

            for (let j = 0; j < plugins.length; j++) {
                const plugin = plugins[j];

                if (!plugin.config.fileReplacements) {
                    continue;
                }

                for (let k = 0; k < plugin.config.fileReplacements.length; k++) {
                    const replacement = plugin.config.fileReplacements[k];

                    this.angularFileReplacements[app].push({
                        replace: this.tsPathToAbsolute(replacement.replace),
                        with: this.tsPathToAbsolute(replacement.with)
                    })
                }
            }
        }
    }

    collectImports() {
        for (let i = 0; i < this.apps.length; i++) {
            const app = this.apps[i];
            const plugins = this.getAppPlugins(app);

            // reset imports
            this.imports[app] = [];

            for (let j = 0; j < plugins.length; j++) {
                const plugin = plugins[j];

                if (!plugin.config.imports) {
                    continue;
                }

                for (let k = 0; k < plugin.config.imports.length; k++) {
                    const pImport = plugin.config.imports[k];

                    this.imports[app].push({
                        class: pImport.class,
                        file: plugin.path + path.parse(pImport.file).name,
                        app: plugin.config.app
                    });
                }
            }
        }
    }

    writePaths() {
        const template = 'export const PLUGIN = PLUGIN_PATHS';
        let tmpPath = '';
        let aptoCorePaths = '';
        let aptoBackendPaths = '';
        let aptoFrontendPaths = '';

        for (let i = 0; i < this.plugins.length; i++) {
            const plugin = this.plugins[i];

            tmpPath = template
                .replace(
                    'PLUGIN',
                    this.hyphenToCamelCase(plugin.config.id)
                )
                .replace(
                    'PLUGIN_PATHS',
                    JSON.stringify({ path: plugin.path, root: plugin.root }, null, 2)
                ) + '\n';

            switch (plugin.config.app) {
                case 'core': {
                    aptoCorePaths += tmpPath;
                    break;
                }
                case 'backend': {
                    aptoBackendPaths += tmpPath;
                    break;
                }
                case 'frontend': {
                    aptoFrontendPaths += tmpPath;
                    break;
                }
            }
        }

        filesystem.writeFileSync('apps-build/tmp/apto-core-paths.ts', aptoCorePaths);
        filesystem.writeFileSync('apps-build/tmp/apto-backend-paths.ts', aptoBackendPaths);
        filesystem.writeFileSync('apps-build/tmp/apto-frontend-paths.ts', aptoFrontendPaths);
    }

    writeTsConfig() {
        filesystem.writeFileSync('apps-build/tmp/tsconfig.apto.json', JSON.stringify(this.tsConfigPaths, null, 2));
    }

    writeAngularOptions() {
        const angularJson = JSON.parse(filesystem.readFileSync('angular.json').toString());

        for (let i = 0; i < this.apps.length; i++) {
            const app = this.apps[i];

            // core plugins dont support file replacements
            if (app === 'core') {
                continue;
            }

            // set file replacements
            angularJson.projects[app].architect.build.options.fileReplacements = this.angularFileReplacements[app];
        }

        // write angular.json file
        filesystem.writeFileSync('angular.json', JSON.stringify(angularJson, null, 2) + '\n');
    }

    writeImports() {
        for (let i = 0; i < this.apps.length; i++) {
            const app = this.apps[i];

            let templateImport = 'import { CLASS } from "FILE";';
            let templateExport = 'export const Apto' + this.capitalize(app) + 'PluginImports = [EXPORTS];';
            let imports = '';
            let exports = '';

            for (let i = 0; i < this.imports[app].length; i++) {
                const pImport = this.imports[app][i];
                let isLast = i === (this.imports[app].length - 1);

                imports += templateImport
                    .replace(
                        'CLASS',
                        pImport.class
                    )
                    .replace(
                        'FILE',
                        pImport.file
                    )
                ;

                imports += '\n' + (isLast ? '\n' : '');
                exports += '  ' + pImport.class + (isLast ? '' : ',\n');
            }

            filesystem.writeFileSync(
                'apps-build/tmp/apto-' + app + '-imports.ts',
                imports + templateExport.replace('EXPORTS', '\n' + exports + '\n')
            );
        }
    }

    getAppPlugins(app) {
        let plugins = [];
        for (let i = 0; i < this.plugins.length; i++) {
            if (this.plugins[i].config.app === app) {
                plugins.push(this.plugins[i]);
            }
        }
        return plugins;
    }

    tsPathToAbsolute(path) {
        const tsPaths = this.tsConfigPaths.compilerOptions.paths;

        for(let tsPath in tsPaths) {
            if (!tsPaths.hasOwnProperty(tsPath) || !path.startsWith(tsPath.replace('*', ''))) {
                continue;
            }

            const tsPathEntries = tsPaths[tsPath];
            return path.replace(
                tsPath.replace('*', ''),
                tsPathEntries[tsPathEntries.length - 1].replace('*', '')
            );
        }

        return path;
    }

    ignoreFileMatch(file, stats) {
        // force directories
        if (stats.isDirectory()) {
            return false;
        }

        // ignore files not matching our plugin file
        return path.basename(file) !== 'apto.plugin.json';
    }

    sortPluginsByPriority(a, b) {
        if (!a.config.priority) {
            return -1;
        }

        if (!b.config.priority) {
            return 1;
        }

        if (a.config.priority < b.config.priority)
            return -1;
        if (a.config.priority > b.config.priority)
            return 1;
        return 0;
    }

    hyphenToCamelCase(str) {
        return str.split('-').map((word, index) => {
            // If it is the first word make sure to lowercase all the chars.
            if(index === 0){
                return word.toLowerCase();
            }

            // If it is not the first word only upper case the first char and lowercase the rest.
            return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
        }).join('');
    }

    capitalize(str) {
        return str && str[0].toUpperCase() + str.slice(1);
    }
}
