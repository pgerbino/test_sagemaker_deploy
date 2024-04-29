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

docker run -p 8080:8080 <image-name>
