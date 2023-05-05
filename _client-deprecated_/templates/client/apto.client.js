const webpack = require('webpack');

module.exports = {
    getPackage: function () {
        return 'apto-one/template';
    },
    client: function (app) {
        switch (app) {
            case 'backend': {
                return this.backend();
            }
            case 'frontend': {
                return this.frontend();
            }
        }
        return null;
    },
    backend: function () {
        return {
            package: this.getPackage(),
        };
    },
    frontend: function () {
        return {
            package: this.getPackage(),
            priority: 500,
            app: 'apto-project-one/app.js',
            less: 'apto-project-one/assets/less/app.less'
        };
    }
};
