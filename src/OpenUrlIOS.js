/**
 * @private
 * @providesModule ChromeIOS
 * @flow
 */
'use strict';

import { NativeModules } from 'react-native';

const OpenUrlManager = NativeModules.RNOpenUrl;

export default class OpenUrlIOS {

  /**
   * Opens the URL on a Chrome.
   *
   * @param url the Uri to be opened.
   * @param option the Option in iOS is ignored
   */
  static openURL(url: string, option: TabOption = {}): Promise<boolean> {
    return OpenUrlManager.openURL(url)
  }
}