FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir robotframework robotframework-requests

# Copy test files
COPY test.robot /app/

# Command to run the tests
CMD ["robot", "/app/test.robot"]
