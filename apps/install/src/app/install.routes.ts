import { RegisteredRoute } from "@apto-base-core/router/router-registry";
import { StepsComponent } from './components/steps/steps.component';

export const Routes: RegisteredRoute[] = [
  { route: { path: '', component: StepsComponent }, priority: 100 }
];
