const express = require('express');
const inquirer = require('inquirer');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    
    {
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'employees_db'
    },
    console.log(`Connected to the employees_db database`)
);

const initialPrompts = [
    {
        type: "list",
        name: "mainMenu",
        message: "What would you like to do?",
        choices: [
            "View All Departments",
            "View All Roles",
            "View All Employees",
            "Add A Department",
            "Add A Role",
            "Add An Employee",
            "Update An Employee Role"
        ]
    }
]

function init() {
    inquirer.prompt(initialPrompts).then((answers) => {
        const userChoice = answers.mainMenu;

        switch (userChoice) {
            case 'View All Departments':
                db.query('SELECT * FROM departments', (err, data) => {
                    if (err) {
                        console.error(err);
                    } else {
                        console.table(data);
                        init();
                    }
                })
        }
    });
};

init();
