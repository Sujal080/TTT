FROM python:3.9.7-slim-buster

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    ffmpeg \
    aria2 \
    ntpdate \
    python3-magic \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN ntpdate -u time.google.com

RUN pip install --upgrade pip setuptools wheel

RUN pip install --no-cache-dir -r requirements.txt

CMD ntpdate -u time.google.com && python main.py
