# Base image (OS)

FROM python:3.14-slim

# Working directory

WORKDIR /app

# Copy src code to container

RUN apt-get update && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*
COPY . .

# Run the build commands

RUN pip install --no-cache-dir -r requirements.txt

# expose port 80

EXPOSE 80

# serve the app / run the app (keep it running)

CMD ["python","run.py"]

