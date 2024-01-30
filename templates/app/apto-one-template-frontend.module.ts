import { NgModule } from '@angular/core';

/*  Usage:
    We need to add some 'apto-slot-outlet' component where we want our custom component to be added:

    <apto-slot-outlet identifier="step-navigation-container"></apto-slot-outlet>

    'step-navigation-container' attribute must be unique for each apto-slot-outlet
    then we need to call SlotRegistry like example below:
    Now we have set that SomeComponentYouWantToRenderContent components content ill be rendered within that slot!  */

@NgModule({
  declarations: [
    // SomeComponentYouWantToRenderContent,
  ],
  exports: [],
  entryComponents: [],
  imports: [],
  providers: []
})
export class AptoOneTemplateFrontendModule {
  public constructor() {
    // example usage
    // SlotRegistry.components.set('step-navigation-container', SomeComponentYouWantToRenderContent);
  }
}
