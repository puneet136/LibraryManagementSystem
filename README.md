# 📚 Library Management System (LMS)

## 🚀 Project Overview

The **Library Management System (LMS)** is a command-line-based application built using **Java and MySQL** to manage library operations efficiently. It allows librarians and students to manage books, track issued/returned books, and view users.

## 🛠️ Technologies Used

- **Programming Language:** Java (CLI-based, No GUI)
- **Database:** MySQL
- **Database Connectivity:** JDBC (Java Database Connectivity)
- **Development Tools:** VS Code / IntelliJ IDEA
- **Version Control:** Git & GitHub

## 🎯 Features

✅ **User Authentication** (Super Admin & Librarians & Students)
✅ **View Books** (Available & Issued)
✅ **Issue and Return Books**
✅ **Search Books by Title, Author, Genre**
✅ **Add & Delete Books (Librarians Only)**
✅ **Change Password**
✅ **Submit Feedback**
✅ **View User Details**
✅ **MySQL Database Integration**
✅ **Transaction Management for Book Issuing & Returning**

## 📌 Prerequisites

Ensure you have the following installed before running the project:

- **Java JDK 11+**
- **MySQL Server & Workbench**
- **MySQL JDBC Driver**
- **Git (for version control)**

## 🔧 Setup and Installation

1️⃣ **Clone the Repository**

```sh
git clone https://github.com/yourusername/LibraryManagementSystem.git
cd LibraryManagementSystem
```

2️⃣ **Configure Database**

- Open MySQL and create a database:

```sql
CREATE DATABASE LibraryDB;
```

- Import the SQL file (`schema.sql` if provided) to set up tables.

3️⃣ **Configure Database Connection**

- Update `DatabaseConnection.java` with your **MySQL credentials**:

```java
String url = "jdbc:mysql://localhost:3306/LibraryDB";
String user = "your_username";
String password = "your_password";
```

4️⃣ **Compile and Run the Project**

```sh
javac -d . *.java
java LMS
```

## 🏆 Future Enhancements

🚀 **Google Books API Integration** (Fetch book details automatically)
🚀 **Email Notifications** for due dates
🚀 **GUI-Based Interface (Swing/JavaFX)**
🚀 **Advanced Reports (Issued Books Summary, User Activity Logs)**

## 🤝 Contributing

Want to contribute? Follow these steps:

1. **Fork** the repository
2. Create a **new branch** (`git checkout -b feature-name`)
3. **Commit** changes (`git commit -m "Added new feature"`)
4. **Push** to GitHub (`git push origin feature-name`)
5. Open a **Pull Request** 🎉

## 📜 License

This project is open-source and available under the **MIT License**. 

---

🔗 **Connect with Me**: [GitHub](https://github.com/yourusername) | [LinkedIn](https://linkedin.com/in/puneet-agrawal)

