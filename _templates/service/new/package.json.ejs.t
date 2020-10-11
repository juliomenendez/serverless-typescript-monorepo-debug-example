---
to: packages/<%= h.changeCase.paramCase(name) %>/package.json
sh: cd packages/<%= h.changeCase.paramCase(name) %> && yarn install
---
{
  "name": "<%= name %>",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "start": "serverless offline -s dev",
    "build": "tsc -b"
  },
  "author": "",
  "license": "ISC"
}
