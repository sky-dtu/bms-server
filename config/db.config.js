const mysql = require('mysql');

console.log(process.env.DBHOST)

// MySQL connection
const dbConn = mysql.createConnection({
    host: process.env.DBHOST,
    user: process.env.DBUSER,
    password: process.env.DBPASSWORD,
    database: process.env.DBDATABASE,
    port: process.env.DBPORT
});

dbConn.connect( (err) => {
    if (err) throw err;
    console.log('Connected Database Successfully!');
});

 
module.exports = dbConn;