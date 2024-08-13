# Use an official Python runtime as a parent image. Slim version is used for lighter image.
FROM python:3.9-slim

# Set the working directory in the container. Inside container an app folder is created in runtime which will have all the execution that we do in below steps.
WORKDIR /app

# Install git to clone the repository. apt get update is used to update the package to latest version. Then we write command to install git which is needed. -y is used to avoid the manual process of pressing y.
RUN apt-get update && apt-get install -y git

# Clone your GitHub repository
RUN git clone https://github.com/Utsav247-crypto/DockerTest.git

# Change directory to your cloned repo
WORKDIR /app/DockerTest

# Run the hello.py script when the container launches
CMD ["python", "hello.py"]