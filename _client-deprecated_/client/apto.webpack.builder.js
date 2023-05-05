const path = require('path');
const filesystem = require('fs');
const rimraf = require('rimraf');
const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const PostcssDiscardComments = require("postcss-discard-comments");
const PostcssPrefixSelector = require('postcss-prefix-selector');
const _unique = require('lodash/uniq');

class AptoWebpackBuilder {
    constructor(aptoAppConfig, aptoClientCollector) {
        this.aptoAppConfig = aptoAppConfig;
        this.root = this.aptoAppConfig.getRoot();
        this.app = this.aptoAppConfig.getApp();
        this.environment = this.aptoAppConfig.getEnvironment();
        this.localPath = this.aptoAppConfig.getLocalPath();
        this.lessPrefix = this.aptoAppConfig.getLessPrefix();
        this.outputFilenames = this.aptoAppConfig.getOutputFileNames();

        this.appEntry = path.join(
            this.root,
            'client',
            'tmp',
            'bootstrap-' + this.app + '.js'
        );

        this.lessEntry = path.join(
            this.root,
            'client',
            'tmp',
            'bootstrap-' + this.app + '.less'
        );

        this.output = {};
        this.plugins = aptoClientCollector.getWebpackPlugins();
        this.module = {};
        this.resolve = {
            alias: Object.assign(
                {
                    'apto/less': this.lessEntry
                },
                aptoClientCollector.getWebpackResolveAliases()
            ),
            modules: ['client', 'node_modules']
        };
        this.devtool = 'source-map';
        this.aptoClients = aptoClientCollector.getClients();

        this.includePackage = this.aptoAppConfig.includePackage.bind(this.aptoAppConfig);
        this.includeLess = this.aptoAppConfig.includeLess.bind(this.aptoAppConfig);
        this.buildBootstrap();
        this.buildWebpackConfig();
    }

    buildBootstrap() {
        switch (this.app) {
            case 'backend': {
                this.buildBootstrapBackend();
                break;
            }

            case 'frontend': {
                this.buildBootstrapFrontend();
                break;
            }
        }
    }

    buildBootstrapBackend() {
        const angularModuleName = 'Apto' + this.app.replace(/^./, function(l){ return l.toUpperCase() });
        let angularRequires = [];
        let angularModules = [];
        let angularRequiresString;
        let angularModulesString;

        let clientLessString = '';

        let aptoPackageRequires = 'import { autoload } from \'app/apto-loader\';\n';

        for (let i = 0; i < this.aptoClients.length; i++) {
            const client = this.aptoClients[i];

            // continue if package is excluded
            if (!this.includePackage(client.package)) {
                continue;
            }

            // if package has an app file, require this package
            if (client.resolve) {
                aptoPackageRequires += 'require(\'' + client.app + '\');\n';
            }

            if (client.less && this.includeLess(client.package)) {
                clientLessString += '@import "~' + client.less + '";\n';
            }

            // continue here if client do not has to add some own angular modules
            if (!client.angular) {
                continue;
            }

            // add all requires for angular
            if (client.angular.requires) {
                angularRequires = angularRequires.concat(client.angular.requires);
            }

            // add all modules for angular
            if (client.angular.modules) {
                angularModules = angularModules.concat(client.angular.modules);
            }
        }

        // make angular requires and modules unique
        angularRequires = _unique(angularRequires);
        angularModules = _unique(angularModules);

        // make a src string for angular requires
        angularRequiresString = angularRequires.map(i => "require('" + i + "');\n").join('');

        // make a src string for angular modules
        angularModulesString = angularModules.map(i => "'" + i + "'").join(',');
        angularModulesString = 'const ' + angularModuleName + " = angular.module('" + angularModuleName + "', [" + angularModulesString + "]);\n";

        // misc content
        const miscContent = '' +
            "autoload(" + angularModuleName + ");\n" +
            "require('apto/less');\n";

        // write content into file
        filesystem.writeFileSync(this.appEntry, '' +
            '//angularRequires\n' + angularRequiresString + '\n' +
            '//angularModules\n' + angularModulesString + '\n' +
            '//packageRequires\n' + aptoPackageRequires + '\n' +
            '//miscContent\n' + miscContent + '\n'
        );

        // write less into file
        filesystem.writeFileSync(this.lessEntry, clientLessString);
    }

    buildBootstrapFrontend() {
        const angularModuleName = 'Apto' + this.app.replace(/^./, function(l){ return l.toUpperCase() });
        let angularRequires = [];
        let angularModules = [];
        let aptoFixHtmlString = '$(\'' + this.aptoAppConfig.getAngularBootstrap() + '\').removeAttr(\'data-ng-app\');\n';
        let angularRequiresString;
        let angularModulesString;
        let clientLessString = '';
        let clientCssString = '';
        let aptoPackageRequires = 'import { autoload, preload } from \'app/apto-loader\';\n';

        for (let i = 0; i < this.aptoClients.length; i++) {
            const client = this.aptoClients[i];

            // continue if package is excluded
            if (!this.includePackage(client.package)) {
                continue;
            }

            // if package has an app file, require this package
            if (client.resolve) {
                aptoPackageRequires += 'require(\'' + client.app + '\');\n';
            }

            if (client.less && this.includeLess(client.package)) {
                clientLessString += '@import "~' + client.less + '";\n';
            }

            if (client.css && this.includeLess(client.package)) {
                clientCssString += 'require(\'' + client.css + '\');\n';
            }

            // continue here if client do not has to add some own angular modules
            if (!client.angular) {
                continue;
            }

            // add all requires for angular
            if (client.angular.requires) {
                angularRequires = angularRequires.concat(client.angular.requires);
            }

            // add all modules for angular
            if (client.angular.modules) {
                angularModules = angularModules.concat(client.angular.modules);
            }
        }

        // add css & less requires
        aptoPackageRequires += '\n// cssContent\n' + clientCssString + '\n';
        aptoPackageRequires += '// LessContent\n' + 'require(\'apto/less\');\n';

        // make angular requires and modules unique
        angularRequires = _unique(angularRequires);
        angularModules = _unique(angularModules);

        // make a src string for angular requires
        angularRequiresString = angularRequires.map(i => "require('" + i + "');\n").join('');

        // make a src string for angular modules
        angularModulesString = angularModules.map(i => "'" + i + "'").join(',');
        angularModulesString = 'const ' + angularModuleName + " = angular.module('" + angularModuleName + "', [" + angularModulesString + "]);\n";

        // misc content
        const miscContent = '' +
            'preload().then(() => {\n' +
            '    // load angular app\n' +
            '    ' + angularModulesString +
            '    autoload(' + angularModuleName + ');\n' +
            '    angular.bootstrap($(\'' + this.aptoAppConfig.getAngularBootstrap() + '\'), [\'' + angularModuleName + '\']);\n' +
            '});\n'
        ;

        // write content into file
        filesystem.writeFileSync(this.appEntry, '' +
            '// aptoFixHtmlString\n' + aptoFixHtmlString + '\n' +
            '// angularRequires\n' + angularRequiresString + '\n' +
            '// packageRequires\n' + aptoPackageRequires + '\n' +
            '// miscContent\n' + miscContent + '\n'
        );

        // write less into file
        filesystem.writeFileSync(this.lessEntry, clientLessString);
    }

    buildWebpackConfig() {
        this.buildModules();
        this.buildPlugins();
        this.buildResolve();
        this.buildOutput();
    }

    buildModules() {
        // set default module
        this.module = {
            rules: [
                {
                    test: /\.js$/,
                    use: ['babel-loader'],
                    exclude: /node_modules/
                }, {
                    test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
                    loader: "file-loader"
                }, {
                    test: /\.(woff|woff2)$/,
                    loader:"url-loader?prefix=font/&limit=1"
                }, {
                    test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
                    loader: "url-loader?limit=1&mimetype=application/octet-stream"
                }, {
                    test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
                    loader: "url-loader?limit=1&mimetype=image/svg+xml"
                }, {
                    test: /\.html$/,
                    loader: "html-loader"
                }, {
                    test: /\.(jpg|png|gif)$/,
                    loader: 'url-loader?limit=1'
                }, {
                    test: /\.external\.js$/,
                    use: [ 'script-loader' ]
                }, {
                    test: require.resolve('jquery'),
                    use: [{
                        loader: 'expose-loader',
                        options: 'jQuery'
                    },{
                        loader: 'expose-loader',
                        options: '$'
                    }]
                }
            ]
        };

        // check for less prefix
        if (this.app !== 'backend' && this.lessPrefix !== '') {
            if (this.environment === 'production') {
                this.module.rules.push({
                    test: /\.no-prefix\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [
                            'css-loader?minimize'
                            ,{
                                loader: 'postcss-loader',
                                options: {
                                    plugins: () => [
                                        PostcssDiscardComments ({
                                            removeAll: true
                                        })
                                    ],
                                    minimize: true
                                }
                            }
                        ]
                    })
                });

                this.module.rules.push({
                    exclude: /\.no-prefix\.css$/,
                    test: /\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [
                            'css-loader?minimize'
                            ,{
                                loader: 'postcss-loader',
                                options: {
                                    plugins: () => [
                                        PostcssPrefixSelector({
                                            prefix: this.lessPrefix
                                        }),
                                        PostcssDiscardComments ({
                                            removeAll: true
                                        })
                                    ],
                                    minimize: true
                                }
                            }
                        ]
                    })
                });

                this.module.rules.push({
                    test: /\.less$/,
                    use: ExtractTextPlugin.extract({
                        use: [
                            'css-loader?minimize'
                            ,{
                                loader: 'postcss-loader',
                                options: {
                                    plugins: () => [
                                        PostcssPrefixSelector({
                                            prefix: this.lessPrefix
                                        }),
                                        PostcssDiscardComments ({
                                            removeAll: true
                                        })
                                    ],
                                    minimize: true
                                }
                            },
                            'less-loader',
                        ]
                    })
                });
            }

            // set development modules
            if (this.environment === 'development') {
                this.module.rules.push({
                    test: /\.no-prefix\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [{
                            loader: 'css-loader',
                            options: {
                                sourceMap: true
                            }
                        }]
                    })
                });

                this.module.rules.push({
                    exclude: /\.no-prefix\.css$/,
                    test: /\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [{
                            loader: 'css-loader',
                            options: {
                                sourceMap: true
                            }
                        },{
                            loader: 'postcss-loader',
                            options: {
                                plugins: () => [
                                    PostcssPrefixSelector({
                                        prefix: this.lessPrefix
                                    })
                                ],
                            }
                        }
                        ]
                    })
                });

                this.module.rules.push({
                    test: /\.less$/,
                    use: ExtractTextPlugin.extract({
                        use: [{
                            loader: 'css-loader',
                            options: {
                                sourceMap: true
                            }
                        },{
                            loader: 'postcss-loader',
                            options: {
                                sourceMap: true,
                                plugins: () => [
                                    PostcssPrefixSelector({
                                        prefix: this.lessPrefix
                                    })
                                ],
                            }
                        }, {
                            loader:'less-loader',
                            options: {
                                sourceMap: true
                            }
                        }]
                    })
                });
            }
        } else {
            // set production modules
            if (this.environment === 'production') {
                this.module.rules.push({
                    test: /\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [
                            'css-loader?minimize'
                            ,{
                                loader: 'postcss-loader',
                                options: {
                                    plugins: () => [
                                        PostcssDiscardComments ({
                                            removeAll: true
                                        })
                                    ],
                                    minimize: true
                                }
                            }
                        ]
                    })
                });

                this.module.rules.push({
                    test: /\.less$/,
                    use: ExtractTextPlugin.extract({
                        use: ['css-loader?minimize'
                            ,{
                                loader: 'postcss-loader',
                                options: {
                                    plugins: () => [
                                        PostcssDiscardComments ({
                                            removeAll: true
                                        })
                                    ],
                                    minimize: true
                                }
                            },'less-loader']
                    })
                })
            }

            // set development modules
            if (this.environment === 'development') {
                this.module.rules.push({
                    test: /\.css$/,
                    use: ExtractTextPlugin.extract({
                        use: [{
                            loader: 'css-loader',
                            options: {
                                sourceMap: true
                            }
                        }]
                    })
                });

                this.module.rules.push({
                    test: /\.less$/,
                    use: ExtractTextPlugin.extract({
                        use: [{
                            loader: 'css-loader',
                            options: {
                                sourceMap: true
                            }
                        }, {
                            loader:'less-loader',
                            options: {
                                sourceMap: true
                            }
                        }]
                    })
                });
            }
        }
    }

    buildPlugins() {
        // set default plugins
        this.plugins.push(
            new webpack.EnvironmentPlugin([
                "NODE_ENV"
            ]),
            new webpack.DefinePlugin({
                'aptoClients': JSON.stringify(this.aptoClients),
                'APTO_DIST_PATH': JSON.stringify(this.aptoAppConfig.getDistPath())
            }),
            new webpack.ProvidePlugin({
                $: 'jquery',
                jQuery: 'jquery',
                'window.jQuery': 'jquery'
            })
        );

        // set global plugins
        this.plugins.push(
            new ExtractTextPlugin(this.outputFilenames.css)
        );
    }

    buildResolve() {
        this.resolve.modules = this.resolve.modules.concat(this.getClientPaths());
    }

    buildOutput() {
        this.output = {
            path: this.localPath,
            filename: this.outputFilenames.js
        }
    }

    getClientPaths(join) {
        let paths = [];

        if (!join) {
            join = '';
        }

        for (let i = 0; i < this.aptoClients.length; i++) {
            const client = this.aptoClients[i];
            paths.push(
                path.relative(
                    this.root,
                    path.join(
                        client.path,
                        this.app,
                        join
                    )
                )
            );
        }

        return paths;
    }

    getConfig() {
        let config = {
            entry: this.appEntry,
            module: this.module,
            plugins: this.plugins,
            output: this.output,
            resolve: this.resolve
        };

        if (this.environment === 'development') {
            config.devtool = this.devtool;
        }

        return config;
    }

    clearOutputPath() {
        if (this.environment === 'production') {
            rimraf.sync(this.localPath);
        }

        if (this.environment === 'development') {
            rimraf.sync(this.localPath);
        }
    }
}

module.exports = AptoWebpackBuilder;
