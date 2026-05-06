
---

# Matrimonial Database Management System

## Overview

The Matrimonial Database Management System is a DBMS project designed to efficiently manage and organize matrimonial profiles. It replaces traditional manual record-keeping systems with a structured relational database, improving data consistency, searchability, and overall management.

The system stores user details, education, profession, and partner preferences, enabling quick and accurate profile matching.

---

## Objectives

* Store matrimonial profile data in a structured format
* Maintain educational and professional details of users
* Record partner preferences for matchmaking
* Establish relationships using primary and foreign keys
* Enable fast search and filtering of profiles
* Reduce redundancy through normalization
* Improve data accuracy and consistency

---

## Problem Statement

Manual management of matrimonial profiles leads to:

* Duplicate records
* Difficult search operations
* Lack of data relationships
* Poor data security
* Time-consuming maintenance

This project solves these issues using a relational database system.

---

## System Scope

This system can be used in:

* Matrimonial websites
* Marriage bureaus
* Community marriage services
* Religious organizations
* Private matchmaking services

---

## Technologies Used

* SQL (MySQL / Oracle / SQL Server)
* DBMS concepts and relational database design
* SQL queries and joins

---

## Database Design

### Main Tables

1. USER_DETAILS
2. EDUCATION_DETAILS
3. PROFESSION_DETAILS
4. PARTNER_PREFERENCE

### Relationships

* One user is linked to education, profession, and partner preference
* USER_DETAILS acts as the parent table
* Other tables are connected using foreign keys

---

## Table Structure

### USER_DETAILS

Stores personal information:

* user_id (Primary Key)
* full_name
* gender
* age
* religion
* caste
* city

### EDUCATION_DETAILS

Stores academic information:

* edu_id (Primary Key)
* user_id (Foreign Key)
* qualification
* college
* graduation_year

### PROFESSION_DETAILS

Stores job and salary details:

* prof_id (Primary Key)
* user_id (Foreign Key)
* occupation
* company
* salary

### PARTNER_PREFERENCE

Stores partner requirements:

* pref_id (Primary Key)
* user_id (Foreign Key)
* preferred_age
* preferred_city
* preferred_religion

---

## Normalization

The database is normalized up to Third Normal Form (3NF):

* 1NF: Removed repeating groups and ensured atomic values
* 2NF: Eliminated partial dependency
* 3NF: Removed transitive dependency

This reduces redundancy and improves performance.

---

## SQL Implementation

### Create Database

```sql
CREATE DATABASE matrimonial_db;
USE matrimonial_db;
```

### Create Tables

```sql
CREATE TABLE USER_DETAILS (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    religion VARCHAR(30),
    caste VARCHAR(30),
    city VARCHAR(30)
);
```

(Other tables follow similar structure with foreign keys)

---

## Sample Queries

### 1. Display All Users

```sql
SELECT * FROM USER_DETAILS;
```

### 2. Find Female Profiles

```sql
SELECT * FROM USER_DETAILS
WHERE gender = 'Female';
```

### 3. Search by City

```sql
SELECT * FROM USER_DETAILS
WHERE city = 'Hyderabad';
```

### 4. Join User and Profession

```sql
SELECT U.full_name, P.occupation, P.company
FROM USER_DETAILS U
JOIN PROFESSION_DETAILS P
ON U.user_id = P.user_id;
```

### 5. High Salary Users

```sql
SELECT * FROM PROFESSION_DETAILS
WHERE salary > 600000;
```

---

## Features

* Structured data storage
* Fast profile search
* Reduced duplication
* Data consistency through relationships
* Easy maintenance and scalability

---

## Advantages

* Efficient profile management
* Quick data retrieval
* Improved accuracy
* Better data integrity
* Scalable for large datasets

---

## Limitations

* No login authentication
* No profile image storage
* No automatic matching algorithm
* No notification system

---

## Future Enhancements

* User authentication system
* Profile photo storage
* Horoscope matching
* Admin dashboard
* Automated match recommendation system

---

## Conclusion

This project demonstrates the practical implementation of DBMS concepts such as relational modeling, normalization, and SQL queries. It provides an efficient solution for managing matrimonial data and simplifies the process of finding suitable matches.

---

## Key Concepts Covered

* Primary Key and Foreign Key
* ER Model
* Normalization (1NF, 2NF, 3NF)
* SQL Queries and Joins
* Data Integrity

---

## Project Use

This project is suitable for:

* Academic DBMS coursework
* Viva examinations
* Basic database system implementation practice

---

## License

This project is for educational purposes as part of an academic course requirement.
