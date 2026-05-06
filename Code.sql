CREATE DATABASE matrimonial_db;
USE matrimonial_db;

CREATE TABLE USER_DETAILS (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    religion VARCHAR(30),
    caste VARCHAR(30),
    city VARCHAR(30)
);

CREATE TABLE EDUCATION_DETAILS (
    edu_id INT PRIMARY KEY,
    user_id INT,
    qualification VARCHAR(50),
    college VARCHAR(50),
    graduation_year INT,
    FOREIGN KEY (user_id) REFERENCES USER_DETAILS(user_id)
);

CREATE TABLE PROFESSION_DETAILS (
    prof_id INT PRIMARY KEY,
    user_id INT,
    occupation VARCHAR(50),
    company VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES USER_DETAILS(user_id)
);

CREATE TABLE PARTNER_PREFERENCE (
    pref_id INT PRIMARY KEY,
    user_id INT,
    preferred_age INT,
    preferred_city VARCHAR(30),
    preferred_religion VARCHAR(30),
    FOREIGN KEY (user_id) REFERENCES USER_DETAILS(user_id)
);
