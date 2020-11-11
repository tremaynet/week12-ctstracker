DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;
CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);
CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);
CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
use employees;
INSERT INTO department
    (name)
VALUES
    ('Operations'),
    ('Analystics'),
    ('Security'),
    ('Executive');
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('CTO', 11000000, 1),
    ('CIO', 4000000, 1),
    ('Team Lead', 15000000, 2),
    ('Developer', 8000000, 2),
    ('Security Analyst', 7000000, 3),
    ('Architect', 3000000, 3),
    ('CEO', 45000000, 4),
    ('Design Engineer', 25000000, 4);
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Tremayne', 'Terry', 1, NULL),
    ('Todd', 'Bonnewell', 2, 1),
    ('Sean', 'Bennant', 3, NULL),
    ('Dev', 'Starr', 4, 3),
    ('Div', 'Patel', 5, NULL),
    ('Chris', 'Bellenger', 6, 5),
    ('Don', 'Wan', 7, NULL),
    ('Laura', 'Keedle', 8, 7);
    
