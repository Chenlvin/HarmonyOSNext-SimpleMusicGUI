import { display } from '@kit.ArkUI';

export class DisplayFunctions {
  width = -1
  height = -1
  constructor () {
    let displayClass: display.Display | null = null;
    try {
      displayClass = display.getDefaultDisplaySync();
      this.width = displayClass.width
      this.height = displayClass.height
    } catch (exception) {
      console.error('Failed to obtain the default display object. Code: ' + JSON.stringify(exception));
    }
  }
}

export const ScreenDisplay = new DisplayFunctions()