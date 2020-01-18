const mysql = require("mysql");
const faker = require("faker");

// Create mySQL connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Kblair_2612",
  database: "join_us"
});

// SELECTING USING NODE:
// var q = "SELECT COUNT(*) AS total FROM users";
// db.query(q, function(error, results, fields) {
//   if (error) throw error;
//   console.log(results[0].total);
// });

// INSERTING USING NODE:
// var q = { email: faker.internet.email(), created_at: faker.date.past() };
// db.query("INSERT INTO users SET ?", q, function(error, result) {
//   if (error) throw error;
//   console.log(result);
// });

//INSERTING 500 USERS USING NODE:
// var data = [];
// for (let i = 0; i < 500; i++) {
//   data.push([faker.internet.email(), faker.date.past()]);
// }
// let q = "INSERT INTO users (email, created_at) VALUES ?";
// db.query(q, [data], function(error, result) {
//   console.log(error);
//   console.log(result);
// });

db.end();
