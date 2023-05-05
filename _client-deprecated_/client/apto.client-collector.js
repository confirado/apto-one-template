const readDirRecursive = require('recursive-readdir-synchronous');
const path = require('path');
const filesystem = require('fs');
const filesystemExtra = require('fs-extra');
const rimraf = require("rimraf");

class AptoClients {
    constructor(aptoAppConfig, searchDirs) {
        this.root = aptoAppConfig.getRoot();
        this.app = aptoAppConfig.getApp();
        this.searchDirs = searchDirs;
        this.clientFiles = [];
        this.clients = [];
        this.buildClients();
    }

    buildClients() {
        let lookup = {};

        // collect all client files found in search directories
        for (let i = 0; i < this.searchDirs.length; i++) {
            const searchDir = this.searchDirs[i];

            // skip if folder does not exist
            if (!filesystem.existsSync(searchDir)) {
                continue;
            }

            this.clientFiles.push(
                readDirRecursive(searchDir, [this.ignoreFileMatch])
            );
        }

        // load all matched client files
        for (let i = 0; i < this.clientFiles.length; i++) {
            const clientFiles = this.clientFiles[i];
            for (let j = 0; j < clientFiles.length; j++) {
                // import client file
                const clientFile = clientFiles[j];
                const aptoClient = require(clientFile);
                let client = aptoClient.client(this.app);

                // if client has no current app or is already registered continue with next one
                if (null === client || !client.package || lookup[client.package]) {
                    continue;
                }

                // set package as already registered
                lookup[client.package] = true;

                // push client into list of clients
                client.path = path.dirname(clientFile);
                client.module = path.relative(
                    this.root,
                    path.join(client.path, this.app)
                );

                if (client.app) {
                    client.resolve = path.join(
                        client.path,
                        path.join(this.app, client.app)
                    );
                }

                this.clients.push(client);
            }
        }

        // sort clients by priority
        this.clients.sort(this.sortClientsByPriority);
    }

    /**
     * file match function for apto client file
     * @param file
     * @param stats
     * @returns {boolean|string}
     */
    ignoreFileMatch(file, stats) {
        // force directories
        if (stats.isDirectory()) {
            return false;
        }

        // ignore files not matching our client file
        return path.basename(file) !== 'apto.client.js';
    }

    /**
     * compare function to sort clients by priority
     * @param a
     * @param b
     * @returns {number}
     */
    sortClientsByPriority(a, b) {
        if (!a.priority) {
            return 1;
        }

        if (!b.priority) {
            return -1;
        }

        if (a.priority < b.priority)
            return 1;
        if (a.priority > b.priority)
            return -1;
        return 0;
    }

    getWebpackResolveAliases() {
        let aliases = {};

        for (let i = 0; i < this.clients.length; i++) {
            const client = this.clients[i];

            if (
                !client.webpackConfig ||
                !client.webpackConfig.resolve ||
                !client.webpackConfig.resolve.alias
            ) {
                continue;
            }

            Object.assign(aliases, client.webpackConfig.resolve.alias);
        }

        return aliases;
    }

    getWebpackPlugins() {
        let plugins = [];

        for (let i = 0; i < this.clients.length; i++) {
            const client = this.clients[i];

            if (
                !client.webpackConfig ||
                !client.webpackConfig.plugins
            ) {
                continue;
            }

            plugins = plugins.concat(client.webpackConfig.plugins);
        }

        return plugins;
    }

    getClients() {
        return this.clients;
    }

    copyTo(dst) {
        // clear tmp directory
        rimraf.sync(dst);

        // copy each packages to tmp directory
        this.clients.forEach((client) => {
            const clientDst = dst + client.package.replace('/', '-') + '/';
            const clientSrc = client.path;
            filesystemExtra.copySync(clientSrc, clientDst, { overwrite: true });
        });
    }
}

module.exports = AptoClients;
