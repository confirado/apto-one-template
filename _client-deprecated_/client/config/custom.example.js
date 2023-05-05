AptoAppConfig = require('./apto');

class AptoCustomConfig extends AptoAppConfig {
    constructor(root, app, environment) {
        super(root, app, environment);

        this.template = {
            backend: 'custom-template-backend',
            frontend: 'custom-template-frontend'
        };
    }
}
module.exports = AptoCustomConfig;
