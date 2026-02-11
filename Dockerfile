<<<<<<< HEAD
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
=======
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
>>>>>>> decb61123f11536ef6b1bf999157abeffd3f4ffe
CMD ["python", "app.py"]
