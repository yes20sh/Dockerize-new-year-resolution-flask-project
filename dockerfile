
FROM python:3.9-slim


WORKDIR /app


COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt


COPY . .

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port that the app runs on
EXPOSE 8000

# Run the application
CMD ["flask", "run", "--port=8000"]