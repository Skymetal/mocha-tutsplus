var express = require("express");
var app = express();

app.set('view engine', 'jade');

app.get("/", function (req, res) {
	res.render("index", { palette: ["#FF0000", "#00FF00","#0000FF" ]});
});

app.listen(9000);