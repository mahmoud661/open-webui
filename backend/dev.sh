#!/bin/bash

# Activate the Python 3.11 virtual environment
source venv/bin/activate

PORT="${PORT:-8080}"
uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips '*' --reload