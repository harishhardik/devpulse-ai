#!/usr/bin/env bash
set -e

echo "Starting DevPulse AI Backend Setup..."

if [ ! -f .env ]; then
    echo "No .env file found. Add OPENAI_API_KEY to backend/.env before using AI features."
fi

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Starting FastAPI server..."
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
