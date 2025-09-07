@echo off
REM Bank Administration System - Windows Installation Script
REM This script helps set up the Bank Administration System on Windows

echo 🏦 Bank Administration System - Installation Script
echo ==================================================

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed. Please install Python 3.7 or higher.
    echo    Download from: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo ✅ Python found
python --version

REM Check if pip is installed
pip --version >nul 2>&1
if errorlevel 1 (
    echo ❌ pip is not installed. Please install pip.
    pause
    exit /b 1
)

echo ✅ pip found

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo 🔧 Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo ⬆️  Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo 📚 Installing dependencies...
pip install -r Bank_Administration_System\requirements.txt

REM Check if MySQL is available
echo 🗄️  Checking MySQL...
mysql --version >nul 2>&1
if errorlevel 1 (
    echo ⚠️  MySQL is not installed or not in PATH.
    echo    Please install MySQL Server from: https://dev.mysql.com/downloads/mysql/
    echo    Make sure to add MySQL to your system PATH.
)

echo.
echo 🎉 Installation completed successfully!
echo.
echo 📋 Next steps:
echo 1. Set up your MySQL database:
echo    - Create a database named 'bank_system'
echo    - Update database credentials in Bank_Administration_System\app.py
echo.
echo 2. Run the application:
echo    venv\Scripts\activate.bat
echo    cd Bank_Administration_System
echo    python app.py
echo.
echo 3. Access the application at: http://localhost:5000
echo.
echo 🔐 Default admin credentials:
echo    Username: admin
echo    Password: 1234
echo.
echo ⚠️  Remember to change the default admin password in production!
echo.
pause
