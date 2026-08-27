// This file is required by karma.conf.js and loads recursively all the .spec and framework files

import 'zone.js/testing';
import { getTestBed } from '@angular/core/testing';
import {
  BrowserDynamicTestingModule,
  platformBrowserDynamicTesting
} from '@angular/platform-browser-dynamic/testing';

import '../../../src/apto-one-core/Client/Base/frontend/services/basket.service.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/components/common/dialogs/save-dialog/save-dialog.component.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/components/summary-wrapper/summary-wrapper.component.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/services/catalog-message-bus.service.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/store/configuration/configuration.effects.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/store/configuration/configuration.reducer.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/store/configuration/configuration.repository.spec';
import '../../../src/apto-one-core/Client/Catalog/frontend/store/configuration/configuration.selectors.spec';

// First, initialize the Angular testing environment.
getTestBed().initTestEnvironment(
  BrowserDynamicTestingModule,
  platformBrowserDynamicTesting(),
);
