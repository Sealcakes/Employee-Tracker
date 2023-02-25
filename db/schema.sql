DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE departments (
    department_names VARCHAR(255) NOT NULL,
    department_id INT NOT NULL
);

CREATE TABLE roles (
    job_title VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    department_of_role INT NOT NULL,
    salary INT NOT NULL
);

CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR(255) NOT NULL
);