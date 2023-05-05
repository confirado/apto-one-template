import AptoPluginCollector from "./apps/apto.plugin-collector.mjs";

const collector = new AptoPluginCollector([
    'templates',
    'src',
    'vendor/apto-one',
    'apps'
]);

collector.build();
