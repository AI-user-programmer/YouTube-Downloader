FROM python:3.10.6-slim-buster

RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "main.py"]
