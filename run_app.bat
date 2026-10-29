@echo off
cd /d "%~dp0"

if not exist ".venv312\Scripts\python.exe" (
    echo App environment was not found. Please ask for setup help.
    pause
    exit /b 1
)

".venv312\Scripts\python.exe" -m streamlit run app.py --server.showEmailPrompt false
