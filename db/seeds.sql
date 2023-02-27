INSERT INTO departments (department_names)
VALUES  ('Sales'),
        ('Engineering'),
        ('Finance'),
        ('Legal');


INSERT INTO roles (job_title, salary, department_id)
VALUES  ('Sales Manager', 110000, 1),
        ('Engineering Manager', 150000, 2),
        ('Finance Manager', 125000, 3),
        ('Lawyer', 150000, 4);

-- INSERT INTO employees (first_name, last_name)