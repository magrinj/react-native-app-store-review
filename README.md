
# react-native-app-store-review

![ios-10 3-beta-1-note-application](https://cloud.githubusercontent.com/assets/3551795/25345134/81e6c8f8-2914-11e7-8ef4-68dded9073d1.jpg)

This library allow you to print the new iOS 10.3 rate pop-up.
If your users use a version of iOS higher than 8.0 but lesser than 10.3 a new view within the app is pushed with the app store page of your app.
And if your user got an iOS version lesser than 8.0, it will be redirected on the app store in the write review section of your app.

## Getting started

`$ npm install react-native-app-store-review --save`

### Mostly automatic installation

`$ react-native link react-native-app-store-review`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-app-store-review` and add `RNAppStoreReview.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAppStoreReview.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNAppStoreReviewPackage;` to the imports at the top of the file
  - Add `new RNAppStoreReviewPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-app-store-review'
  	project(':react-native-app-store-review').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-app-store-review/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-app-store-review')
  	```

## Usage
```javascript
import AppStoreReview from 'react-native-app-store-review';

AppStoreReview.requestReview('1234567890'); // Change to your app store id
```
