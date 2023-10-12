import { defineConfig } from "cypress";

let path = 'vendor/apto-one/core/Tests/';
if (process.env['APTO_CYPRESS_ENV'] === 'dev') {
  path = 'src/apto-one-core/Tests/';
}

const folders = {
  specPattern: path + '/cypress/e2e/**/*.cy.{js,jsx,ts,tsx}',
  downloadsFolder: path + '/cypress/Tests/_downloads',
  fixturesFolder: path + '/cypress/_fixtures',
  supportFolder: path + '/cypress/_support',
  supportFile: path + '/cypress/_support/index.ts',
  videosFolder: path + '/cypress/_videos',
  screenshotsFolder: path + '/cypress/_screenshots',
};

export default defineConfig({
  e2e: {
    ...folders,
    env: {
      baseUrl: 'http://grobi.projektversion.de/apto-one-template/web/#'
    },
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
  viewportWidth: 1920,
  viewportHeight: 1200,
});
