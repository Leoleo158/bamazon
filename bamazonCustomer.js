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

function optionMenu() {
    console.log((chalk.green("Welcome to Bamazon!")))
    inquirer.prompt({
        type: "list",
        message: "What would you like to do?",
        name: "choice",
        choices: ["Make a purchase", "Exit"]
    }).then(function (response) {
        switch (response.choice) {
            case "Make a purchase":
                inventoryItem();
                break;
            case "Exit":
                connection.end();
                console.log("You have exited the program. Please come again!")
                break;
        }
    })
}