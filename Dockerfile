FROM python:3.9.7-slim-buster

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    ffmpeg \
    aria2 \
    ntpdate \
    chromium-driver \
    libnss3 \
    libgconf-2-4 \
    libxss1 \
    libappindicator1 \
    libindicator7 \
    fonts-liberation \
    libu2f-udev \
    wget \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Sync system time to prevent msg_id or SSL errors
RUN ntpdate -u time.google.com

# Install pip tools and Python packages
RUN pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Run the bot
CMD ntpdate -u time.google.com && python main.py
