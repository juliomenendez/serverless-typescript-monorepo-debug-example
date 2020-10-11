---
to: packages/<%= h.changeCase.paramCase(name) %>/tsconfig.json
---
{
  "extends": "../../tsconfig.json",
  "compilerOptions": {
    "rootDir": "./src"
  },
  "include": ["./src/**/*.ts"],
  "exclude": [
    "node_modules/**/*",
    ".serverless/**/*",
    ".webpack/**/*",
    "_warmup/**/*",
    ".vscode/**/*",
    "*.config.js",
    "**/*.js"
  ]
}
