---
to: services/<%= h.changeCase.paramCase(name) %>/webpack.config.js
---
/* eslint-disable @typescript-eslint/no-var-requires */
const slsw = require("serverless-webpack");
const { merge } = require("webpack-merge");
const common = require("../../webpack.config");
module.exports = merge(common, {
  entry: slsw.lib.entries,
});
