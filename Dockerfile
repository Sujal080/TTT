FROM python:3.9.7-slim-buster

# Set working directory
WORKDIR /app

# Copy all files to container
COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    ffmpeg \
    aria2 \
    && pip install --no-cache-dir -r requirements.txt

# Start the bot
CMD ["python", "main.py"]
