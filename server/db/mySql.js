const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "storeproducts",
});

connection.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("mysql connected");
});

/* connection.query("SELECT * form products", function (err, rows, fields) {
  if (err) throw err;
}); */
/* 
connection.end(); */

module.exports = connection;
