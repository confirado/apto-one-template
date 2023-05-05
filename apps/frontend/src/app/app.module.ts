// angular modules
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule } from '@angular/router';
import { EffectsModule } from '@ngrx/effects';
import { StoreModule } from '@ngrx/store';
import { StoreDevtoolsModule } from '@ngrx/store-devtools';

// apto modules
import { FrontendComponent } from '@apto-base-frontend/components/frontend/frontend.component';
import { AptoCorePluginImports } from '../../../../apps-build/tmp/apto-core-imports';
import { AptoFrontendPluginImports } from '../../../../apps-build/tmp/apto-frontend-imports';

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
		RouterModule.forRoot(RouterRegistry.getRoutes(), { useHash: true }),
		...AptoCorePluginImports,
		...AptoFrontendPluginImports,
	],
	providers: [],
	bootstrap: [FrontendComponent],
})
export class AptoFrontendModule {}
