# Use the official Ubuntu base image
FROM ubuntu:latest

# Set non-interactive mode for any apt installs (none in this case, just a safe default)
ENV DEBIAN_FRONTEND=noninteractive

# Set working directory (optional)
WORKDIR /app

RUN echo "This will fail now" && exit 1

# Start a shell when the container runs
CMD ["sh", "-c", "echo Hello!; /bin/bash"]
