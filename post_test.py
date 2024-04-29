import boto3

# Create a SageMaker runtime client with the AWS SDK
client = boto3.client('sagemaker-runtime', region_name='eu-west-1')

# Specify the endpoint name and content type
response = client.invoke_endpoint(
    EndpointName='hello-world-endpoint',
    ContentType='application/json',
    Body=b'{ "key": "value"}'
)

print(response)
print(response['Body'].read().decode('utf-8'))