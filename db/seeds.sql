INSERT INTO department (id, name)
VALUES 
    (001, "Engineering"),
    (002, "Sales"),
    (003, "Finance"),
    (004, "Legal");

INSERT INTO role (id, title, salary, department_id)
VALUES  
    (001, "Lead Engineer", 120000, 001),
    (002, "Manufacturing Engineer", 85000, 001),
    (003, "Process Engineer", 90000, 001),
    (004, "Engineering Manager", 130000, 001),
    (005, "Sales Manager", 120000, 002),
    (006, "Sales", 90000, 002),
    (007, "Accountant Manager", 120000, 003),
    (008, "Accountant", 90000, 003),
    (009, "Legal Team Manager", 200000, 004),
    (010, "Lawyer", 150000, 004);


INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES 
    (001, "Stephanie", "Luck", 004, 001),
    (002, "Taylor", "Seal", 002, 001),
    (003, "Mark", "Smith", 009, 003),
    (004, "Benjamin", "Canyon", 010, 003),
    (005, "Trang", "Ho", 005, 005),
    (006, "Marshall", "Bennett", 006, 005),
    (007, "Tracy", "Johnson", 007, 007),
    (008, "Patricia", "Spank", 008, 007);