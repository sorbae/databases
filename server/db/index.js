let mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

module.exports.dbConnection = mysql.createConnection({
  host: 'localhost',
  user: 'student',
  password: 'student',
  database: 'chat'
});
//
// exports.connect = exports.dbConnection.connect(function(err) {
//   if (err) {
//     console.log('error connection: ' + err.stack);
//     return;
//   }
//   console.log('connected as id ' + dbConnection.threadId);
// });
