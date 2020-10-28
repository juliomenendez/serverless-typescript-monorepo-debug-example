---
to: packages/<%= h.changeCase.paramCase(name) %>/package.json
sh: cd packages/<%= h.changeCase.paramCase(name) %> && yarn install
---
{
  "name": "@internal/<%= name %>",
  "version": "1.0.0",
  "description": "",
  "main": "src/index.ts",
  "scripts": {
    "build": "tsc -b"
  },
  "author": "",
  "license": "ISC"
}
