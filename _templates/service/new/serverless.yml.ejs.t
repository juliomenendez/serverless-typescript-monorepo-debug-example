---
to: packages/<%= h.changeCase.paramCase(name) %>/serverless.yml
---
service: <%= h.changeCase.paramCase(name) %>

custom:
  webpack:
    webpackConfig: ./webpack.config.js
    includeModules:
      forceExclude:
        - aws-sdk

provider:
  name: aws
  runtime: nodejs12.x

functions:
  hello:
    handler: src/handler.<%= h.changeCase.snakeCase(name) %>
    events:
      - http:
          path: /
          method: get

plugins:
  - serverless-webpack
  - serverless-offline

package:
  exclude:
    - .git/**
    - tests/**
