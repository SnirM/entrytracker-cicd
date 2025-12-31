FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

ENV DB_HOST=mysql \
    DB_USER=root \
    DB_PASSWORD=password \
    DB_NAME=app_db

CMD ["python", "app.py"]
