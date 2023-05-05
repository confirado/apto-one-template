import { Promise } from 'es6-promise';

// apto angular module registry
const registry = {
    preload: [],
    extend: {},
    routes: {},
    constants: {},
    configs: {},
    providers: {},
    services: {},
    factories: {},
    filters: {},
    controllers: {},
    components: {},
    directives: {}
};

// load
function load(type, module) {
    if (!registry.hasOwnProperty(type)) {
        return;
    }

    const values = registry[type];

    for (let valueId in values) {
        if (!values.hasOwnProperty(valueId)) {
            continue;
        }

        switch (type) {
            case 'routes': {
                module.constant(valueId, values[valueId]);
                break;
            }
            case 'constants': {
                module.constant(valueId, values[valueId]);
                break;
            }
            case 'configs': {
                module.config(values[valueId]);
                break;
            }
            case 'providers': {
                module.provider(valueId, values[valueId]);
                break;
            }
            case 'services': {
                module.service(valueId, values[valueId]);
                break;
            }
            case 'factories': {
                module.factory(valueId, values[valueId]);
                break;
            }
            case 'filters': {
                module.filter(valueId, values[valueId]);
                break;
            }
            case 'controllers': {
                module.controller(valueId, values[valueId]);
                break;
            }
            case 'components': {
                module.component(valueId, values[valueId]);
                break;
            }
            case 'directives': {
                module.directive(valueId, values[valueId]);
                break;
            }
        }
    }
}

function registerRoute(type, value) {
    const name = value[0];

    if (!registry[type][name]) {
        registry[type][name] = {};
    }

    const node = registry[type][name];

    for (let sfRoute in value[1]) {
        // continue if not an own property
        if (!value[1].hasOwnProperty(sfRoute)) {
            continue;
        }

        // set new node for symfony route if not exists
        if (!node[sfRoute]) {
            node[sfRoute] = {};
        }

        // get angular routes
        const angularRoutes = value[1][sfRoute];

        for (let angularRoute in angularRoutes) {
            // continue if not an own property
            if (!angularRoutes.hasOwnProperty(angularRoute)) {
                continue;
            }

            // set new node for angular route if not exists
            if (!node[sfRoute][angularRoute]) {
                node[sfRoute][angularRoute] = {};
            }

            // angular route config for symfony route
            const routeConfig = angularRoutes[angularRoute];

            // set template if exists
            if (routeConfig.template) {
                node[sfRoute][angularRoute].template = routeConfig.template;
            }

            // set controller if exists
            if (routeConfig.controller) {
                node[sfRoute][angularRoute].controller = routeConfig.controller;
            }
        }
    }
}

/**
 * value must be an object with the following properties:
 * {
 *     query: string the query name
 *     arguments: array needed arguments for the query (optional)
 *     fulfilled: function called on success (optional), you can use register function here
 *     rejected: function called on failure (optional), you can use register function here
 * }
 * @param type
 * @param value
 */
function registerPreload(type, value) {
    if (!value.arguments) {
        value.arguments = [];
    }

    if (!value.fulfilled) {
        value.fulfilled = function(){};
    }

    if (!value.rejected) {
        value.rejected = function(){};
    }

    // create angular $http service
    let initInjector = angular.injector(['ng']);
    let $http = initInjector.get('$http');

    // create promise
    const promise = $http.post(
        APTO_API.query,
        {
            query: value.query,
            arguments: value.arguments
        }
    );

    promise.then(value.fulfilled, value.rejected);
    registry.preload.push(promise);
}

export function register(type, values) {
    if (!registry.hasOwnProperty(type)) {
        return;
    }

    for (let i = 0; i < values.length; i++) {
        const value = values[i];

        if (type === 'routes') {
            registerRoute(type, value);
            continue;
        }

        if (type === 'preload') {
            registerPreload(type, value);
            continue;
        }

        registry[type][value[0]] = value[1];
    }
}

export function setComponentTemplate(componentId, template) {
    registry.components[componentId].template = template;
}

export function setComponentController(componentId, controller) {
    registry.components[componentId].controller = controller;
}

// function to start angular
export function autoload(module) {
    // load registered routes
    load('routes', module);

    // load registered constant
    load('constants', module);

    // load registered config
    load('configs', module);

    // load registered page provider
    load('providers', module);

    // load registered page service
    load('services', module);

    // load registered page factory
    load('factories', module);

    // load registered page filter
    load('filters', module);

    // load registered page controller
    load('controllers', module);

    // load registered page component
    load('components', module);

    // load registered page directive
    load('directives', module);
}

export function preload() {
    return Promise.all(registry.preload);
}

export function log() {
    console.log(registry);
}
