#!/bin/bash
# Production startup: Python Telegram bot + API health server birga ishlatish

echo "🚀 LangGo Academy production mode..."

# Python bot orqaga fonda ishga tushirish
echo "🤖 Telegram bot ishga tushmoqda..."
python3 bot/main.py &
BOT_PID=$!
echo "✅ Bot PID: $BOT_PID"

# Node.js API server (health check uchun) - asosiy jarayon
echo "🌐 API server ishga tushmoqda (port $PORT)..."
exec node --enable-source-maps artifacts/api-server/dist/index.mjs
