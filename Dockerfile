FROM python:3.9.7-slim-buster

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    gcc \
    libffi-dev \
    ffmpeg \
    aria2 \
    chromium \
    chromium-driver \
    curl \
    unzip \
    && apt-get clean

# Set environment variables for Selenium
ENV CHROMIUM_PATH=/usr/bin/chromium

# Copy bot files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Run the bot
CMD ["python3", "main.py"]
