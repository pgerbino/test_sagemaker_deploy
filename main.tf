provider "aws" {
  region = "us-west-2"
}

resource "aws_sagemaker_model_package_group" "example" {
  model_package_group_name = "hello-world-group"
}

resource "aws_sagemaker_model" "example" {
  name = "hello-world-model"

  execution_role_arn = "arn:aws:iam::123456789012:role/service-role/AmazonSageMaker-ExecutionRole-20200101T000001"

  primary_container {
    image = "511771194412.dkr.ecr.eu-west-1.amazonaws.com/test_sagemaker:latest"
  }
}

resource "aws_sagemaker_endpoint_configuration" "example" {
  name = "hello-world-endpoint-config"

  production_variants {
    variant_name          = "AllTraffic"
    model_name            = aws_sagemaker_model.example.name
    initial_instance_count = 1
    instance_type         = "ml.t2.medium"
  }
}

resource "aws_sagemaker_endpoint" "example" {
  name                 = "hello-world-endpoint"
  endpoint_config_name = aws_sagemaker_endpoint_configuration.example.name
}
