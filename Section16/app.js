const express = require("express");
const mysql = require("mysql");
const faker = require("faker");

// Create mySQL connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password"
  // database: "mysql_bootcamp_project_db"
});

// Connect to mySQL db
db.connect(error => {
  if (error) {
    throw error;
  }
  console.log("mySQL Connected!");
});

const app = express();

//Create database
app.get("/createdb", (request, response) => {
  let sql = "CREATE DATABASE mysql_bootcamp_project_db";
  db.query(sql, (error, result) => {
    if (error) throw error;
    console.log(result);
    response.send("Database has been created!");
  });
});

app.listen("3000", () => {
  console.log("Server started on port 3000");
});
