import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AptoFrontendModule } from './app/app.module';
import { environment } from './environments/environment';

declare global {
  interface Window {
    APTO_API: AptoApi;
    AptoInline: AptoInline;
    PluginManager: Sw6PluginManager;
    router: Sw6Router;
    AptoFrontendLocale: string;
  }
}

interface AptoApi {
  root: string,
  query: string,
  command: string,
  batchExecute: string,
  setLocale: string,
  thumb: string,
  media: string,
  client: string
}

interface AptoInline {
  productId: string;
  configurationId: string;
  configurationType: string;
  additionalData: {
    swProductId: string;
    swProductUrl: string;
  };
}

interface Sw6PluginManager {
  getPluginInstances(pluginName: string): any[];
}

interface Sw6Router {
  'frontend.cart.offcanvas': string
}

if (environment.production) {
  enableProdMode();
}

platformBrowserDynamic().bootstrapModule(AptoFrontendModule)
  .catch(err => console.error(err));
