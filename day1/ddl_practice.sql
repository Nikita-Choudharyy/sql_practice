-- ======================================
-- SQL DDL Practice - Day 1
-- Core Concepts Only
-- ======================================

-- Create Database
CREATE DATABASE practice;
USE practice;

-- --------------------------------------
-- 1. Department Table
-- Concept: PRIMARY KEY + AUTO_INCREMENT
-- --------------------------------------
CREATE TABLE department (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(50)
);

-- --------------------------------------
-- 2. Employee Table
-- Concepts:
-- PRIMARY KEY
-- FOREIGN KEY
-- UNIQUE
-- CHECK constraint
-- --------------------------------------
CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    joining_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

-- --------------------------------------
-- 3. Project Table
-- Concept: CHECK constraint with dates
-- --------------------------------------
CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    CHECK (end_date >= start_date)
);

-- --------------------------------------
-- 4. Order Details Table
-- Concept: COMPOSITE PRIMARY KEY
-- --------------------------------------
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);

-- --------------------------------------
-- 5. Products Table
-- Concepts:
-- DEFAULT values
-- UNIQUE constraint
-- AUTO_INCREMENT
-- --------------------------------------
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL UNIQUE,
    price DECIMAL(8,2) DEFAULT 100.00,
    stock INT DEFAULT 10
);
