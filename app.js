const mysql = require('mysql');
const inquirer = require('inquirer');
require('console.table');

const promptMesssage = {
    viewAllEmployees: "View All Employees",
    viewByDepartment: "View All Emplyees By Department",
    viewByManager: "View All Employees By Manager",
    
}