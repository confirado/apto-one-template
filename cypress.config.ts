import { defineConfig } from "cypress";

let path = 'vendor/apto-one/core/Tests/';
let componentTestPath = 'vendor/apto-one/core/Client/';
if (process.env['APTO_CYPRESS_ENV'] === 'dev') {
  path = 'src/apto-one-core/Tests/';
  componentTestPath = 'src/apto-one-core/Client/';
}

const folders = {
  specPattern: path + 'cypress/e2e/**/*.cy.{js,jsx,ts,tsx}',
  downloadsFolder: path + 'cypress/Tests/_downloads',
  fixturesFolder: path + 'cypress/_fixtures',
  supportFolder: path + 'cypress/_support',
  supportFile: path + 'cypress/_support/index.ts',
  videosFolder: path + 'cypress/_videos',
  screenshotsFolder: path + 'cypress/_screenshots',
};

export default defineConfig({
  e2e: {
    pageLoadTimeout: 4000, // default 60.000
    requestTimeout: 4000, // default 50.000
    responseTimeout: 4000, // 30.000

    ...folders,
    // testIsolation: false,
    env: {
      // keepLocalStorageForTestSuites: true,
      baseUrl: 'http://grobi.projektversion.de/apto-one-template/web/',
      shopwareUrl: 'http://grobi.projektversion.de/shopware65/public/template/AptoConnector/',
      mediaUrl: 'http://grobi.projektversion.de/apto-one-template/web/public/media/',
      // CHROME_EXTRA_LAUNCH_ARGS: ''
    },
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },

  viewportWidth: 1920,
  viewportHeight: 1200,

  // these configs are for the component testing, do not uncomment because they cause issue in e2e testing
  // component: {
  //   devServer: {
  //     framework: "angular",
  //     bundler: "webpack",
  //   },
  //   specPattern: componentTestPath + '**/*.cy.ts',
  //   indexHtmlFile: path + '/cypress/_support/component-index.html',
  //   downloadsFolder: path + 'cypress/Tests/_downloads',
  //   fixturesFolder: path + 'cypress/_fixtures',
  //   supportFolder: path + 'cypress/_support',
  //   supportFile: path + 'cypress/_support/index.ts',
  //   videosFolder: path + 'cypress/_videos',
  //   screenshotsFolder: path + 'cypress/_screenshots',
  // },
});
