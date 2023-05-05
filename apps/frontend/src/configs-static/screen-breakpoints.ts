import { ScreenSizes } from './screen-sizes';
import { ScreenSizesInterface } from './screen-sizes-interface';

export const ScreenBreakpoints: Readonly<ScreenSizesInterface> = {
  mobile: `(max-width: ${ScreenSizes.mobile}px)`,
  tablet: `(min-width: ${ScreenSizes.mobile + 1}px) and (max-width: ${ScreenSizes.tablet}px)`,
  desktop: `(min-width: ${ScreenSizes.desktop + 1}px)`,
};
