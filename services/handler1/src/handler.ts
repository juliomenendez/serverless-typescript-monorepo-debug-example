import { Handler } from 'aws-lambda';
import { sum } from '@internal/test1';

export const hello: Handler = (event: any) => {
    const val = sum(1, 2);
    const response = {
        statusCode: 200,
        body: JSON.stringify(
            {
                message: `Go Serverless v1.0! Your function executed successfully! Val: ${val}`,
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