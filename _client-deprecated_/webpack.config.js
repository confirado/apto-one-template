const path = require('path');
const filesystem = require('fs');

// look for config file in environment var
let appConfigFile = './client/config/' + process.env.APTO_APP_CONFIG + '.js';
console.error(appConfigFile);

// if no config file is set via environment var get config file from npm config
if (!filesystem.existsSync(appConfigFile)) {
    console.error('Configfile not found!');
    process.exit();
}

// create app config
const aptoAppConfig = new (require(appConfigFile))(__dirname, process.env.APTO_APP, process.env.NODE_ENV);

// copy composer.lock file to read versions for backend home page
filesystem.copyFileSync(
    path.join(__dirname, '../composer.lock'),
    path.join(__dirname, '_only_needed_for_versions_composer.lock')
);

// create copy client collector
const aptoCopyClientCollector = new (require('./client/apto.client-collector'))(aptoAppConfig, [
    path.join(__dirname, 'templates/'),
    path.join(__dirname, '../templates/'),
    path.join(__dirname, 'src/'),
    path.join(__dirname, '../src/'),
    path.join(__dirname, '../src-deprecated/'),
    path.join(__dirname, '../vendor/apto-plugin/'),
    path.join(__dirname, '../vendor/apto-one/')
]);

aptoCopyClientCollector.copyTo(
    path.join(__dirname, 'src-tmp/')
);

// create client collector
const aptoClientCollector = new (require('./client/apto.client-collector'))(aptoAppConfig, [
    path.join(__dirname, 'src-tmp/')
]);

// create webpack builder
const aptoWebpackBuilder = new (require('./client/apto.webpack.builder'))(aptoAppConfig, aptoClientCollector);

// clear old compiled files
aptoWebpackBuilder.clearOutputPath();

// export config to webpack
module.exports = aptoWebpackBuilder.getConfig();
