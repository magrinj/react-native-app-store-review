import { NativeModules } from 'react-native';

const { RNAppStoreReview } = NativeModules;

export function requestReview(appIdentifier) {
  if (!RNAppStoreReview) {
    throw new Error('RNAppStoreReview library seems to be not linked to your project...');
  }
  return RNAppStoreReview.requestReview(appIdentifier);
}
