# Use a Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /code

# Copy dependencies into the container
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the application code
COPY ./app /code/app

# Expose port 5000 (for documentation and interoperability)
EXPOSE 5000

# Command to start the Flask application
CMD ["python", "app/app.py"]
