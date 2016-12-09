var path = require('path');
var webpack = require('webpack');

var dir = function(d){
  return path.join(__dirname, d ? d : '');
};

var config =  {
  entry: './index.js',
  output: {
    filename: 'etymology.js',
    path: dir('./')
  },
  context: dir(''),
  module: {
    loaders: [
    {
      test: /\.jsx?$/,
      loader: 'babel',
      query: {
        presets: ['es2015', 'stage-2']
      }
    }
    ],
    plugins: [
    ],
    node: {
    }
  }
};

module.exports = config;
