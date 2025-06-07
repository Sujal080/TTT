# Base image
FROM python:3.10-slim

# Working directory
WORKDIR /app

# Install system-level tools
RUN apt-get update && apt-get install -y \
    ffmpeg \
    mediainfo \
    git \
    curl \
    gcc \
    libffi-dev \
    libssl-dev \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python packages
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy all bot code
COPY . .

# Run the bot
CMD ["python3", "main.py"].py"]
