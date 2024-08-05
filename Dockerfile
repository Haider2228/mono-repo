# Use an official C++ base image
FROM gcc:latest

# Set the working directory in the container
WORKDIR /app

# Copy the C++ source code into the container
COPY . .

# Install any dependencies if needed (e.g., build-essential)
RUN apt-get update && apt-get install -y build-essential

# Compile the C++ application
RUN g++ -o myapp main.cpp

# Specify the command to run the application
CMD ["./myapp"]

