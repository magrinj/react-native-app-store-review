
# react-native-app-store-review

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

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNAppStoreReview.sln` in `node_modules/react-native-app-store-review/windows/RNAppStoreReview.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNAppStoreReview;` to the usings at the top of the file
  - Add `new RNAppStoreReviewPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNAppStoreReview from 'react-native-app-store-review';

// TODO: What to do with the module?
RNAppStoreReview;
```
  