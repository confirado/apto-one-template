export {};

declare global {
  interface AptoApi {
    root: string;
    query: string;
    command: string;
    batchExecute: string;
    setLocale: string;
    thumb: string;
    media: string;
    client: string;
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
    getPluginInstances(pluginName: string): unknown[];
  }

  interface Sw6Router {
    'frontend.cart.offcanvas': string;
  }

  interface Window {
    APTO_API: AptoApi;
    AptoInline: AptoInline;
    PluginManager: Sw6PluginManager;
    router: Sw6Router;
    AptoFrontendLocale: string;
  }
}
