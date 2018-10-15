var path = require('path');
var webpack = require('webpack');

var dir = function(d){
  return path.join(__dirname, d ? d : '');
};

var extConfig =  {
  entry: {
    ext: './index.js',
  },
  output: {
    filename: '[name].js',
    path: dir('./')
  },
  devtool: '#eval-source-map',
  context: dir(''),
  module: {
    rules: [{
      test: /\.(js|jsx)$/,
      exclude: /node_modules/,
      use: {
        loader: 'babel-loader',
        options: {
          presets: ['@babel/preset-env']
        }
      }
    }
  ]
  },
  node: {
    __dirname: false
  }
};

var nodeConfig = Object.assign({},extConfig);
nodeConfig.entry = {etymology: ['babel-polyfill', './cli.js']};
nodeConfig.target = 'node';


module.exports = [extConfig, nodeConfig];
