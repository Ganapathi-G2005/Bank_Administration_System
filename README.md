# Bank Administration System

A comprehensive web-based banking system built with Flask that provides both customer and administrative functionalities. This system allows customers to manage their accounts, perform transactions, and apply for loans, while administrators can oversee all operations, manage customer accounts, and process loan applications.

## 🚀 Features

### Customer Features
- **Account Management**: Register new accounts with secure PIN authentication
- **Transaction History**: View detailed transaction history
- **Money Transfer**: Transfer funds to other accounts
- **Profile Management**: Update personal information and change PIN
- **Loan Applications**: Apply for loans with detailed financial information
- **Dashboard**: Comprehensive overview of account status and recent activities

### Admin Features
- **Customer Management**: Create, view, edit, and delete customer accounts
- **Transaction Processing**: Process deposits and withdrawals for any account
- **Loan Management**: Review, approve, or reject loan applications
- **System Overview**: Dashboard with key metrics and recent activities
- **Account Monitoring**: View detailed customer information and transaction history

## 🛠️ Technology Stack

- **Backend**: Python Flask
- **Database**: MySQL
- **Authentication**: Flask-Login with bcrypt password hashing
- **Frontend**: HTML, CSS, JavaScript
- **Security**: PIN-based authentication, secure password hashing

## 📋 Prerequisites

Before running this application, make sure you have the following installed:

- Python 3.7 or higher
- MySQL Server 5.7 or higher
- pip (Python package installer)

## 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd bank_system_final
   ```

2. **Create a virtual environment (recommended)**
   ```bash
   python -m venv venv
   
   # On Windows
   venv\Scripts\activate
   
   # On macOS/Linux
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r Bank_Administration_System/requirements.txt
   ```

4. **Set up MySQL Database**
   - Start your MySQL server
   - Create a database user with appropriate permissions
   - Update the database configuration in `app.py`:
     ```python
     db_config = {
         'host': 'localhost',
         'user': 'your_username',
         'password': 'your_password',
         'database': 'bank_system'
     }
     ```

5. **Initialize the database**
   - The application will automatically create the database and tables on first run
   - Default admin credentials: username: `admin`, password: `1234`

## 🚀 Running the Application

1. **Navigate to the application directory**
   ```bash
   cd Bank_Administration_System
   ```

2. **Run the Flask application**
   ```bash
   python app.py
   ```

3. **Access the application**
   - Open your web browser and go to `http://localhost:5000`
   - The application will be running in debug mode

## 📱 Usage

### Customer Login
- Select "Customer" as user type
- Enter your 10-digit account number
- Enter your 4-digit PIN

### Admin Login
- Select "Admin" as user type
- Username: `admin`
- Password: `1234`

### Customer Registration
- Click "Register" on the login page
- Fill in your details:
  - Full Name
  - 10-digit Account Number
  - 4-digit PIN
  - Initial Deposit (minimum ₹500)

## 🗄️ Database Schema

The system uses the following main tables:

- **customers**: Stores customer account information
- **transactions**: Records all financial transactions
- **loans**: Manages loan applications and approvals
- **admin**: Stores administrator credentials

## 🔒 Security Features

- **Password Hashing**: All PINs are hashed using bcrypt
- **Session Management**: Secure user sessions with Flask-Login
- **Input Validation**: Comprehensive validation for all user inputs
- **SQL Injection Protection**: Parameterized queries prevent SQL injection

## 📁 Project Structure

```
Bank_Administration_System/
├── app.py                 # Main Flask application
├── requirements.txt       # Python dependencies
├── schema.sql           # Database schema
├── static/
│   └── css/
│       ├── style.css    # Main stylesheet
│       └── dashboard.css # Dashboard-specific styles
└── templates/
    ├── login.html       # Login page
    ├── register.html    # Registration page
    ├── customer_dashboard.html # Customer interface
    ├── admin_dashboard.html    # Admin interface
    ├── view_customer.html      # Customer details view
    ├── edit_customer.html      # Customer edit form
    └── loan_application.html   # Loan application form
```

## 🚨 Important Security Notes

⚠️ **For Production Use:**
- Change the default admin password
- Use environment variables for sensitive configuration
- Enable HTTPS
- Implement proper logging and monitoring
- Use a production WSGI server (e.g., Gunicorn)
- Set up proper database backups

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:

1. Check the existing issues in the repository
2. Create a new issue with detailed information about the problem
3. Include error messages and steps to reproduce the issue

## 🔮 Future Enhancements

- [ ] Email notifications for transactions
- [ ] Mobile-responsive design improvements
- [ ] Advanced reporting and analytics
- [ ] Multi-currency support
- [ ] API endpoints for mobile applications
- [ ] Two-factor authentication
- [ ] Automated loan payment processing

---

**Note**: This is a demonstration project. For production use, additional security measures and testing are required.
