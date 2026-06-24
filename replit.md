# LangGo Academy Bot

Telegram ta'lim boti — til o'rganish (Ingliz, Nemis, Rus, Turk), aniq fanlar, Writing/Speaking baholash, Quiz/Test va AI suhbat.

## Run & Operate

- `python3 bot/main.py` — botni ishga tushirish (LangGo Bot workflow orqali)
- Required env: `TELEGRAM_BOT_TOKEN`, `GROQ_API_KEY`

## Stack

- Python 3.11
- python-telegram-bot 22.7 (job-queue bilan)
- Groq AI API (llama-3.3-70b-versatile, llama-4-scout vision)
- pdfplumber — PDF tahlil

## Where things live

- `bot/main.py` — asosiy bot kodi (barcha handlerlar, AI logika)
- `bot/users.json` — kundalik so'z uchun obunachиlar ro'yxati

## Product

- 🌍 Jahon tillari — tarjima, grammatika, idiomlar (Ingliz, Nemis, Rus, Turk)
- 🔢 Aniq fanlar — Matematika, Fizika, Kimyo, Biologiya, Adabiyot, Ona tili
- 📝 Writing tekshiruv — 0-75 ball tizimida baholash
- 🎤 Speaking simulyatsiya — 0-75 ball, namuna javob
- 🎯 Quiz / Test — AI tomonidan yaratilgan 5 ta savol
- 🗣 Erkin suhbat — xatolarni to'g'irlash bilan
- 📸 Rasm tahlil — o'quv kitobi saхifalarini AI tahlil qiladi
- 📄 PDF tahlil — PDF matnlarni tahlil qiladi
- 📅 Kundalik so'z — har kuni ertalab soat 08:00 da

## User preferences

- Bot @wortuzbot username bilan ishlaydi
- Admin ID ni `bot/main.py` dagi `ADMIN_ID` o'zgaruvchisiga qo'yish kerak (/myid buyrug'i bilan aniqlash mumkin)

## Gotchas

- Faqat bitta bot instance ishlashi kerak — ikkinchi instance Conflict xatolik beradi
- Groq API rate limit bo'lsa, bot avtomatik 3 marta qayta urinadi
- `bot/users.json` fayli kundalik so'z obunachilari ro'yxatini saqlaydi
