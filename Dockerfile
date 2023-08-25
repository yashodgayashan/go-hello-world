# Use the official Go image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code to the container's working directory
COPY . .

# Build the Go application
RUN go build -o hello-world .

# Command to run the application when the container starts
CMD ["./hello-world"]
