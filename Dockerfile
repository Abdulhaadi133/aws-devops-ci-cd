# Use Python 3.9 slim image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the app
COPY app.py .

# Install Flask
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
