import { parameters } from "apps-build/parameters/local";

export const environment = {
  production: true,
  api: window.APTO_API,
  aptoInline: window.AptoInline,
  ...parameters
};
