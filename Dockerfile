# Use an official Python runtime
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirement files
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy app files
COPY . .

# Command to run the app
CMD ["flask", "--app", "hello", "run", "--host=0.0.0.0"]
