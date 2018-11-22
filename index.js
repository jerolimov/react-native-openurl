
import { NativeModules } from 'react-native';
import { OpenUrlIOS } from './src';

const { RNOpenUrl } = NativeModules;


const OpenUrl = OpenUrlIOS; 
export { OpenUrl, RNOpenUrl };
