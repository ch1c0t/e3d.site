html = require 'html-webpack-plugin'

load_css =
  test: /\.css$/
  use: [
    'style-loader'
    'css-loader'
  ]

load_sass =
  test: /\.sass$/
  use: [
    'style-loader'
    'css-loader'
    'sass-loader'
  ]

load_coffee =
  test: /\.coffee$/
  use: [
    'babel-loader'
    'coffee-loader'
  ]

load_images =
   test: /\.(png|jpg|gif)$/
   use: 'file-loader'

load_vue_components =
  test: /\.vue$/
  use: 'vue-loader'

module.exports =
  entry: './src/main.coffee'
  output:
    path: "#{__dirname}/dist"
    filename: 'main.js'
  module:
    rules: [
      load_css
      load_sass
      load_coffee
      load_images
      load_vue_components
    ]
  plugins: [
    new html
      title: "Eugene Chernov | 3D Artist | Product Modeling and Visualization"
      template: '!!pug-loader!src/template.pug'
      hash: on
  ]
