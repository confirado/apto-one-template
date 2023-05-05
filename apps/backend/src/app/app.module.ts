// angular modules
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule } from '@angular/router';
import { EffectsModule } from '@ngrx/effects';
import { StoreModule } from '@ngrx/store';
import { StoreDevtoolsModule } from '@ngrx/store-devtools';

// apto modules
import { BackendComponent } from '@apto-base-backend/components/backend/backend.component';
import { AptoCorePluginImports } from '../../../../apps-build/tmp/apto-core-imports';
import { AptoBackendPluginImports } from '../../../../apps-build/tmp/apto-backend-imports';

// environment
import { RouterRegistry } from '@apto-base-core/router/router-registry';
import { environment } from '@apto-frontend/src/environments/environment';

@NgModule({
	declarations: [],
	imports: [
		BrowserModule,
		StoreModule.forRoot({}),
		StoreDevtoolsModule.instrument({
			maxAge: 25,
			logOnly: environment.production,
			autoPause: true,
		}),
		EffectsModule.forRoot([]),
		RouterModule.forRoot(RouterRegistry.getRoutes()),
		...AptoCorePluginImports,
		...AptoBackendPluginImports,
	],
	providers: [],
	bootstrap: [BackendComponent],
})
export class AptoBackendModule {}
