FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV POST_INTERVAL_MINUTES=60
CMD ["python", "bot.py"]
