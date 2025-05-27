# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run tests during image build (optional)
RUN pytest tests/

# Set entrypoint to run the app (optional)
CMD ["python3"]
