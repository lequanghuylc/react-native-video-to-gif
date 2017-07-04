# react-native-video-to-gif
Convert video to gif

Note: this project is ios only, but any PR are welcome

## Installation Process

* download this from npm

```bash
npm install react-native-video-to-gif --save
```
### Auto linking
* Run `react-native link react-native-video-to-gif` or...

### Manual linking
* Add `RNNSGif.xcodeproj` to Libraríe folder on Xcode Project :

* Add `libRNNSGif.a` to Link Binary with Libraris in Build Phases:

## Usage

```js
import RNGif from 'react-native-video-to-gif';

// methods (Just iOs for now)
RNGif.convert(pathToLocalVideo).then((gifPath) => {
  console.log('Video is converted to gif at: ', gifPath);
});
```