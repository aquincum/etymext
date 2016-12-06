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
    },
    {
      test: /.purs$/,
      loader: 'purs-loader',
      query: {
        src: [ 'bower_components/purescript-*/src/**/*.purs', 'src/**/*.purs' ],
        bundle: false,
        pscIde: false
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
