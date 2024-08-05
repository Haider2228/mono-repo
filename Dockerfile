# Base image
FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y g++ cmake

# Set working directory
WORKDIR /app

# Copy source code to container
COPY . /app

# Build the C++ application
RUN g++ -o myapp main.cpp

# Expose the port on which the application will run
EXPOSE 8080

# Run the application
CMD ["./myapp"]

