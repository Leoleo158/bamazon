var inquirer = require("inquirer");
var mySQL = require("mysql");
var Table = require("cli-table3");
const chalk = require("chalk");

var connection = mySQL.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db"
});

connection.connect(function (error) {
    if (error) throw error;
    console.log("Connected as ID:", connection.threadId + "\n");
    optionMenu();
});

