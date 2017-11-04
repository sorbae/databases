var db = require('../db');
// var app = require('../app.js');
db.connection.connect();

module.exports = {
  messages: {
    get: function (cb) {
      db.connection.query('SELECT * FROM messages', function(err, results) {
        if (err) {
          throw err;
        }
        console.log('end GET message results: ', results);
        cb(JSON.stringify(results));
      })

    }, // a function which produces all the messages
    post: function (req) {
      db.connection.query(`INSERT INTO messages (text, usernames, room) VALUES (${JSON.stringify(req.message)}, '${req.username}', '${req.roomname}');`, function(err, results) {
        if (err) {
          console.log('message post error: ', err);
        }
      })
    } // a function which can be used to insert a message into the database
  },

  users: {
    get: function (cb) {
      db.connection.query('SELECT usernames FROM messages', function(err, results) {
        if (err) {
          throw err;
        }
        console.log('end GET user results: ', results);
        cb(JSON.stringify(results));
      })
    },

    post: function (req) {
      db.connection.query(`INSERT INTO messages (usernames) VALUES ('${req.username}')`, function(err, results) {
        if (err) {
          console.log('user post error ', err);
        }
      })
    }
  }
};
