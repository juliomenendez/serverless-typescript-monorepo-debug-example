---
to: services/<%= h.changeCase.paramCase(name) %>/src/handler.ts
---
import { Handler } from 'aws-lambda';

export const <%= h.changeCase.snakeCase(name) %>: Handler = (event: any) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify(
            {
                message: 'Hello from service <%= name %>! Your function executed successfully!',
                input: event,
            },
            null,
            2
        ),
    };

    return new Promise((resolve) => {
        resolve(response)
    })
}