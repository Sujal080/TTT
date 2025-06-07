# Base image with Python
FROM python:3.9-slim-bullseye

# Disable interactive prompts during package install
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies required for pip packages and tools like ffmpeg
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    python3-dev \
    libffi-dev \
    ffmpeg \
    aria2 \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all project files to container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Run the bot
CMD ["python", "main.py"]ain.py"
