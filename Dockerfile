FROM python:3.11-slim

WORKDIR /app

# انسخ كل الملفات أولاً
COPY . .

# ثبّت المتطلبات
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "main.py"]
