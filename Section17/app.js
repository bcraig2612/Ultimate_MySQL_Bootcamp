let express = require("express");
let mysql = require("mysql");
let bodyParser = require("body-parser");
let app = express();

// Using EJS (Embedded JavaScript)
app.set("view engine", "ejs");
// Using body-parse to allow us to extract data from our Post Requests:
app.use(bodyParser.urlencoded({ extended: true }));
// Informing Express to take whatever is in the public folder & serve them where we want access to them
// In this case, we link our css in home.ejs within the head
app.use(express.static(__dirname + "/public"));

// Create mySQL connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Kblair_2612",
  database: "join_us"
});

app.get("/", function(request, response) {
  // Find count of users in DB
  var q = "SELECT COUNT(*) AS count FROM users";
  db.query(q, function(error, result) {
    if (error) throw error;
    let count = result[0].count;
    // By adding EJS, this now looks for our home.ejs file:
    response.render("home", { count: count });
  });
});

app.post("/register", function(request, response) {
  let person = { email: request.body.email };
  db.query("INSERT INTO users SET ?", person, function(error, result) {
    if (error) throw error;
    response.redirect("/");
  });
});

app.listen(3000, function() {
  console.log("App listening on port 3000!");
});
