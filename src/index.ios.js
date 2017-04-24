import { NativeModules } from 'react-native';

const { RNAppStoreReview } = NativeModules;

class AppStoreReview {

  static requestReview(appIdentifier) {
    if (!RNAppStoreReview) {
      return console.error('RNAppStoreReview library seems to be not linked to your project...');
    }
    return RNAppStoreReview.requestReview(appIdentifier);
  }

}

export default AppStoreReview;
