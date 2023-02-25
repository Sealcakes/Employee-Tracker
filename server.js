const inquirer = require('inquirer');
const mysql = require('mysql2');


const db = mysql.createConnection(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
        host: 'localhost',
        port: 3001
    },
    console.log(`Connected to the ${process.env.DB_NAME} database`)
);