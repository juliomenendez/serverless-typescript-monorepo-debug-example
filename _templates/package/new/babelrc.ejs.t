---
to: packages/<%= h.changeCase.paramCase(name) %>/.babelrc
---
{
  "presets": [
    [
      "@babel/preset-env",
      {
        "targets": {
          "node": "12"
        }
      }
    ],
    [
      "@babel/preset-typescript",
      {
        "onlyRemoveTypeImports": true // this is important for proper files watching
      }
    ]
  ]
}
