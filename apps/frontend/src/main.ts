import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AptoFrontendModule } from './app/app.module';
import { environment } from './environments/environment';

declare global {
  interface Window {
    APTO_API: AptoApi;
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

if (environment.production) {
  enableProdMode();
}

platformBrowserDynamic().bootstrapModule(AptoFrontendModule)
  .catch(err => console.error(err));
