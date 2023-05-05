const path = require('path');

class AptoAppConfig {
    constructor(root, app, environment) {
        this.root = root;
        this.environment = environment;
        this.app = app;

        this.template = {
            backend: process.env.APTO_APP_BACKEND_TEMPLATE ? process.env.APTO_APP_BACKEND_TEMPLATE : 'apto',
            frontend: process.env.APTO_APP_FRONTEND_TEMPLATE ? process.env.APTO_APP_FRONTEND_TEMPLATE : 'apto'
        };

        this.packages = {
            mode: 'exclude',
            list: []
        };

        this.less = {
            mode: 'exclude',
            list: [],
            prefix: ''
        };

        this.angular = {
            bootstrap: {
                backend: 'html',
                frontend: 'html'
            }
        };

        this.hashOutputFilenames = {
            development: {
                frontend: false,
                backend: false
            },
            production: {
                frontend: true,
                backend: true
            }
        };
    }

    getRoot() {
        return this.root;
    }

    getApp() {
        return this.app;
    }

    getEnvironment() {
        return this.environment;
    }

    getAngularBootstrap() {
        return this.angular.bootstrap[this.app];
    }

    getTemplate() {
        return this.template[this.app];
    }

    getLocalPath() {
        return path.join(
            this.root,
            '..',
            'web',
            'public',
            'dist',
            this.app,
            this.getEnvPath(),
            this.getTemplate(),
            process.env.APTO_APP_CONFIG
        );
    }

    getDistPath() {
        return path.join(
            'public',
            'dist',
            this.app,
            this.getEnvPath(),
            this.getTemplate(),
            process.env.APTO_APP_CONFIG
        );
    }

    getEnvPath() {
        switch (this.environment) {
            case 'production': {
                return 'prod';
            }
            case 'development': {
                return 'dev';
            }
            default: {
                return this.environment;
            }
        }
    }

    getOutputFileNames() {
        let filename = this.app;

        if (this.hashOutputFilenames[this.environment][this.app]) {
            filename += '-[hash:12]';
        }

        if ('production' === this.environment) {
            filename += '.min';
        }

        return {
            js: filename + '.js',
            css: filename + '.css'
        };
    }

    includePackage(clientPackage) {
        const packageInList = this.packages.list.indexOf(clientPackage) >= 0;

        switch (this.packages.mode) {
            case 'include': {
                return packageInList;
            }
            case 'exclude': {
                return !packageInList;
            }
        }
        return true;
    }

    includeLess(clientPackage) {
        const lessPackageInList = this.less.list.indexOf(clientPackage) >= 0;

        switch (this.less.mode) {
            case 'include': {
                return lessPackageInList;
            }
            case 'exclude': {
                return !lessPackageInList;
            }
        }
        return true;
    }

    getLessPrefix() {
        return this.less.prefix;
    }
}
module.exports = AptoAppConfig;
