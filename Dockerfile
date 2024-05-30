# Use the official Ubuntu 18.04 as the base image
FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
# Create necessary directories
RUN mkdir -p /appenv/src /appenv/logs /share/

# Set environment variables
ENV APP_DIR /appenv/src/

# Set the working directory
WORKDIR $APP_DIR

# Copy the script into the container
COPY install_python3.sh /tmp/install_python3.sh

# Make the script executable
RUN chmod +x /tmp/install_python3.sh

# Run the script to install Python 3.8
RUN /tmp/install_python3.sh
