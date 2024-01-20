const mysql = require("mysql2");
const express = require("express");
const router = express.Router();

const server = express();

const connection = mysql.createConnection({
 host: "localhost",
 user: "tweet",
 password: "abcxyz123",
 database: "tweet",
 socketPath: '/run/mysqld/mysqld.sock'
});

connection.connect((err) => {
 if (err) throw err;
 console.log('Conectado a la Base de Datos!')
});

router.get("/users", (req, res) => {
 connection.query("SELECT * FROM users", (err, results) => {
   if (err) {
     console.error(err);
     res.status(500).send("Error retrieving users");
   } else {
     res.json(results);
   }
 });
});

server.use(router);

module.exports = {
 server, 
 connection, 
};
