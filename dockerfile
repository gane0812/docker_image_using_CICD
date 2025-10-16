FROM python:3.7-slim
WORKDIR /app
COPY . /app/
RUN apt-get update && apt-get install -y python3 python3-pip
CMD [ "python3", "app.py" ]
