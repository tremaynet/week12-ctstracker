//Allows node to minipulate the employees database
const mysql = require('mysql');
//Provides (Command Line Interface) tool for query-based tasks associated with this project
const inquirer = require('inquirer');
//Require.. import the console table
require('console.table');

const promptMesssage = {
    viewAllEmployees: "View All Employees",
    viewByDepartment: "View All Emplyees By Department",
    viewByManager: "View All Employees By Manager",
    addEmployee: "Add An Employee",
    removeEmployee: "Remove An Employee",
    updateRole: "Update Emplyee Role",
    updateEmployeeManager: "Update Employee Manager",
    viaAllRoles: "View All Roles",
    exit: "Exit",
};

const connection = mysql.createConnection({
    host: 'localhost',

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: 'root',

    // Your password
    password: 'Suunto2!2!',
    database: 'employees'
});

connection.connect(err => {
    if (err) throw err;
    prompt();
});

funtion prompt() {
    inquirer.prompt({
        name: "action",
    }

    )
}

