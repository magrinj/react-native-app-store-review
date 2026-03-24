
# react-native-app-store-review

> **This library is deprecated and no longer maintained.** Please use one of the actively maintained alternatives below.

## Alternatives

- **[expo-store-review](https://docs.expo.dev/versions/latest/sdk/storereview/)** - Works with Expo and bare React Native projects. Supports iOS and Android.
- **[react-native-in-app-review](https://github.com/MinaSamir11/react-native-in-app-review)** - Supports iOS (SKStoreReviewController) and Android (In-App Review API).

---

<details>
<summary>Original README (archived)</summary>

![rsz_ios-103-beta-1-note-application](https://cloud.githubusercontent.com/assets/3551795/25345288/f78ff17e-2914-11e7-9939-8d2f6897bf7e.jpg)

This library allow you to print the new iOS 10.3 rate pop-up.
If your users use a version of iOS higher than 8.0 but lesser than 10.3 a new view within the app is pushed with the app store page of your app.
And if your user got an iOS version lesser than 8.0, it will be redirected on the app store in the write review section of your app.

## Getting started

`$ npm install react-native-app-store-review --save`

`$ cd ios && pod install`

## Usage
```javascript
import AppStoreReview from 'react-native-app-store-review';

AppStoreReview.requestReview('1234567890'); // Change to your app store id
```

## Troubleshooting

Please first read the Apple documentation: https://developer.apple.com/reference/storekit/skstorereviewcontroller/2851536-requestreview#discussion

Release app:
In release mode apple allow you to print this the review pop-up only 3-4 times a year

TestFlight app:
If you submit your app with testflight for test, the review pop-up will not be printed

Dev app:
The review pop-up is printed each time you call the function, but the submit button stay grey

</details>
