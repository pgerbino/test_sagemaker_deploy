# def lambda_handler(event, context):
#     return {
#         'statusCode': 200,
#         'body': 'Hello, World'
#     }

import boto3

def lambda_handler(event, context):

    # Create a SageMaker runtime client with the AWS SDK
    client = boto3.client('sagemaker-runtime', region_name='eu-west-1')

    # Specify the endpoint name and content type
    response = client.invoke_endpoint(
        EndpointName='hello-world-endpoint',
        ContentType='application/json',
        Body=b'{ "key": "value"}'
    )

    print(response)
    return (response['Body'].read().decode('utf-8'))
