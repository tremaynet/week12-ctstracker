const mysql = require('mysql');
const inquirer = require('inquirer');
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