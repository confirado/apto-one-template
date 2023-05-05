AptoAppConfig = require('./apto');

class AptoCustomConfig extends AptoAppConfig {
    constructor(root, app, environment) {
        super(root, app, environment);
    }
}
module.exports = AptoCustomConfig;
