---
to: services/<%= h.changeCase.paramCase(name) %>/tsconfig.json
---
{
  "extends": "../../tsconfig.json",
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./.build",
    "sourceRoot": "./src"
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
