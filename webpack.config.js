const path = require('path');
const filesystem = require('fs');

// look for config file in environment var
let appConfigFile = './client/config/' + process.env.APTO_APP_CONFIG + '.js';

// if no config file is set via environment var get config file from npm config
if (!filesystem.existsSync(appConfigFile)) {
    console.error('Configfile not found!');
    process.exit();
}

// create app config
const aptoAppConfig = new (require(appConfigFile))(__dirname, process.env.APTO_APP, process.env.NODE_ENV);

// create client collector
const aptoClientCollector = new (require('./client/apto.client-collector'))(aptoAppConfig, [
    path.join(__dirname, 'templates/'),
    path.join(__dirname, 'src/'),
    path.join(__dirname, 'vendor/apto-one/')
]);

// create webpack builder
const aptoWebpackBuilder = new (require('./client/apto.webpack.builder'))(aptoAppConfig, aptoClientCollector);

// clear old compiled files
aptoWebpackBuilder.clearOutputPath();

// export config to webpack
module.exports = aptoWebpackBuilder.getConfig();
