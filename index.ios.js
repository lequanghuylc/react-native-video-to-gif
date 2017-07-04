/**
 * @providesModule RNNSGif
 * @flow
 */
"use strict";

var NativeRNNSGif = require("NativeModules").RNNSGif;

var RNNSGif = {
  convert: function(videoPath) {
    NativeRNNSGif.convert(videoPath);
  }
};

module.exports = RNNSGif;
