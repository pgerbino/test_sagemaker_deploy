# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install flask

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Copy and prepare the serve script
COPY serve /usr/local/bin/serve
RUN chmod +x /usr/local/bin/serve

