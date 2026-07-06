FROM python:3.11-slim

WORKDIR /app

# نسخ كل شيء
COPY . /app

# عرض الملفات للتأكد
RUN ls -la /app

# تثبيت المكتبات
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "/app/main.py"]
