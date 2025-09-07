#!/bin/bash

# Bank Administration System - Installation Script
# This script helps set up the Bank Administration System

echo "🏦 Bank Administration System - Installation Script"
echo "=================================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.7 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip3."
    exit 1
fi

echo "✅ pip3 found"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📚 Installing dependencies..."
pip install -r Bank_Administration_System/requirements.txt

# Check if MySQL is running
echo "🗄️  Checking MySQL connection..."
if ! command -v mysql &> /dev/null; then
    echo "⚠️  MySQL is not installed. Please install MySQL Server."
    echo "   - Ubuntu/Debian: sudo apt-get install mysql-server"
    echo "   - macOS: brew install mysql"
    echo "   - Windows: Download from https://dev.mysql.com/downloads/mysql/"
fi

echo ""
echo "🎉 Installation completed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Set up your MySQL database:"
echo "   - Create a database named 'bank_system'"
echo "   - Update database credentials in Bank_Administration_System/app.py"
echo ""
echo "2. Run the application:"
echo "   source venv/bin/activate"
echo "   cd Bank_Administration_System"
echo "   python app.py"
echo ""
echo "3. Access the application at: http://localhost:5000"
echo ""
echo "🔐 Default admin credentials:"
echo "   Username: admin"
echo "   Password: 1234"
echo ""
echo "⚠️  Remember to change the default admin password in production!"
