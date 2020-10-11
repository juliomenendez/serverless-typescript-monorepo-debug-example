---
inject: true
to: .vscode/launch.json
after: configurations
skip_if: "Launch <%= name %>"
---
    {
        "type": "node",
        "request": "launch",
        "name": "Launch <%= name %>",
        "skipFiles": ["<node_internals>/**"],
        "cwd": "${workspaceFolder}/packages/<%= h.changeCase.paramCase(name) %>",
        "program": "${workspaceRoot}/node_modules/serverless/bin/serverless",
        "args": ["offline", "--noTimeout", "--dontPrintOutput", "--stage=dev"],
        "sourceMaps": true,
        "runtimeArgs": ["--lazy"],
        "outFiles": ["${workspaceFolder}/.webpack/**/*.js"],
        "protocol": "inspector",
        "runtimeExecutable": "node",
        "env": {
            // Here we set some environment vars that should be set locally.
            // They can and will overwrite the ones coming from your serverless.yml
        },
        "windows": {
            "program": "${workspaceRoot}\\node_modules\\serverless\\bin\\serverless"
        }
    },