# test_sagemaker_deploy

python -m venv .venv
source .venv/bin/activate

install requirements
flask

(aws ecr get-login --no-include-email --region us-west-2)

# use the ecr push commands

<!-- Issues -->

1. Roles not defined - fixed
2. CannotStartContainerError. Please ensure the model container for variant AllTraffic starts correctly when invoked with 'docker run <image> serve'

3. aws_sagemaker_endpoint.example: Still creating... [20m10s elapsed]
aws_sagemaker_endpoint.example: Still creating... [20m20s elapsed]
aws_sagemaker_endpoint.example: Still creating... [20m30s elapsed]

╷
│ Error: waiting for SageMaker Endpoint (hello-world-endpoint) to be in service: ResourceNotReady: failed waiting for successful resource state

The primary container for production variant AllTraffic did not pass the ping health check. Please check CloudWatch logs for this endpoint.

4. Have updated teh docker image and now running terraform doesn't work
<!-- when attempt to call invocations -->
<UnknownOperationException/>

5. {"message":"Missing Authentication Token"}
Need to POST not GET
# Error
# creating SageMaker model: ValidationException: RoleArn: Cross-account pass role is not allowed.

<!-- For goodness sake -->
https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html

docker run -p 8080:8080 <image-name>

Docker push commands
```
docker build -t test_sage_maker .
docker tag test_sage_maker:latest 511771194412.dkr.ecr.eu-west-1.amazonaws.com/test_sage_maker:latest_1
docker push 511771194412.dkr.ecr.eu-west-1.amazonaws.com/test_sage_maker:latest_1
```
