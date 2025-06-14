#!/bin/bash

echo "🚀 Starting Classifier Server..."
start "" "C:\Program Files\Git\git-bash.exe" -c "cd classifier_server && python classifier_api.py"

sleep 2

echo "🔧 Starting Backend Server..."
start "" "C:\Program Files\Git\git-bash.exe" -c "cd server && npm start"

sleep 2

echo "🌐 Starting Frontend (React) App..."
start "" "C:\Program Files\Git\git-bash.exe" -c "cd client && npm start"
