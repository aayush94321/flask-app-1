# Dockerfile
FROM python:3.9-slim

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Install Flask
RUN pip3 install flask

# Copy the application code
COPY app.py /app/app.py

# Set the working directory
WORKDIR /app

# Expose the port Flask will run on
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run"]
