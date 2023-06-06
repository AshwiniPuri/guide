# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy files from the host to the container
COPY . .

# Run commands to install dependencies
RUN apt-get update && \
    apt-get install -y python3

# Set an environment variable
ENV PORT=8080

# Expose a port
EXPOSE $PORT

# Define the command to run when the container starts
CMD ["python3", "app.py"]
