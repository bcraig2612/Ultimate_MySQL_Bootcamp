var express = require("express");
var app = express();

app.get("/", function(request, response) {
  response.send("Hello from our Web App!");
});

app.get("/joke", function(request, response) {
  let joke =
    "What do you call a dog that does magic tricks? A labracadabrador.";
  response.send(joke);
});

app.get("/random_num", function(request, response) {
  let num = Math.floor(Math.random() * 10 + 1);
  response.send("Your lucky number is " + num);
});

app.listen(3000, function() {
  console.log("App listening on port 3000!");
});
