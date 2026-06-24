FROM python:3.11-slim

WORKDIR /app

# Tizim kutubxonalari (pdfplumber uchun)
RUN apt-get update && apt-get install -y \
    libpoppler-cpp-dev \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

# Python paketlar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Bot kodini ko'chirish
COPY bot/ ./bot/

# Port (Railway avtomatik o'rnatadi)
ENV PORT=8000

# Botni ishga tushirish
CMD ["python3", "bot/main.py"]
