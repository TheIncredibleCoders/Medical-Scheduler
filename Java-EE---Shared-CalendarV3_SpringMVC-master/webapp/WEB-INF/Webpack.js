var webpack = require("webpack")
var path = require("path")
var ExtractTextPlugin = require("extract-text-webpack-plugin")
var HtmlWebpackPlugin = require("html-webpack-plugin")

module.exports = {
    entry: {
        app: "./index.js",
        vendor: [
            "jquery",
            "moment",
            "fullcalendar"
        ]
    },
    output: {
        path: path.join(__dirname, '../../public'),
        publicPath: '/',
        filename: "scripts/app.[chunkhash].js"
    },
    module: {
        loaders: [
            { test: /\.css$/, loader: ExtractTextPlugin.extract("style", ["css"]) },
            { test: require.resolve('jquery'), loader: 'expose?$!expose?jQuery' },
            { test: require.resolve('moment'), loader: 'expose?moment' }
        ]
    },
    resolve: {
      alias: {
        jquery: path.resolve(path.join(__dirname, '../..', 'node_modules', 'jquery')),
        fullcalendar: 'fullcalendar/dist/fullcalendar'
      }
    },
    plugins: [
        new webpack.optimize.DedupePlugin(),
        new webpack.optimize.CommonsChunkPlugin({ names: ["vendor"], filename: "scripts/[name].[chunkhash].js" }),
        new ExtractTextPlugin("styles/[name].[chunkhash].css"),
        new HtmlWebpackPlugin({
            template: "index.html.handlebars"
        }),
        new webpack.IgnorePlugin(/^\.\/locale$/, /moment$/) 
    ]
};