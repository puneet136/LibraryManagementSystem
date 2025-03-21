CREATE DATABASE Library;
USE Library;
drop database librarydb;
-- Users Table
CREATE TABLE User (
User_ID int auto_increment unique,
    email Varchar(200) unique PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role ENUM('Admin', 'Librarian', 'User') DEFAULT 'User'
);

ALTER TABLE User MODIFY Role ENUM('SUPER_ADMIN', 'ADMIN', 'USER');

-- INSERT INTO User (email, name, Password, Role) 
-- VALUES ('user@example.com', 'John Doe', SHA2('MySecurePass', 256), 'User');

-- Alter table user drop column password;
-- alter table user add column password varchar(255);



select * from User;

select * from Books;

SET SQl_safe_updates = 0;

-- Books Table
CREATE TABLE Books (
    SN int auto_increment unique,
    Book_id INT  PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
   -- Quantity int,
    Status ENUM('Available', 'Issued') DEFAULT 'Available'
);

Alter table Books add column  Quantity int default 1;



-- Transactions Table
CREATE TABLE Transaction (
 
    User_ID int auto_increment unique,
     Book_id INT  primary key,
    IssueDate DATE DEFAULT (CURRENT_DATE),
    ReturnDate DATE,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);

Select*from transaction;
CREATE TABLE IF NOT EXISTS IssuedBooks (
    -- Issue_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID int auto_increment unique,
    Book_ID INT,
    IssueDate DATE DEFAULT (CURRENT_DATE),
    ReturnDate DATE NULL,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);
select*from issuedBooks;
CREATE TABLE Feedback (
    -- Feedback_ID INT AUTO_INCREMENT PRIMARY KEY,
   email Varchar(200) unique PRIMARY KEY,
    Feedback TEXT NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (email) REFERENCES User(email) ON DELETE CASCADE
);
drop table Feedback;
select*from Feedback;