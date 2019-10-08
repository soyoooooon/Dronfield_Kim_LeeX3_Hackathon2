const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('./utils/sql');

const port = process.env.PORT || 3000;
const app = express();
app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('views', path.join( __dirname + "/views"));


app.get('/', (req, res) => {
  res.render('home', { homemessage: "hey there", bio: "some generic bio info" })
})

app.get('/user', (req, res) => {
  // get user data when he hit this route

  //try a connections
  // if the connection fails, log error(s) to the console and quit
  sql.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = "SELECT * FROM tbl_card";

    sql.query(query, (err, rows) => {
      // we're done with our DB connections, so let soneone else
      connection.release();

      // if something broke, quit and show ab error message
      if (err) { return console.log (err.message); }

      // show me the data!
      console.log(rows);

      res.render('user', rows[0]);
    })
  })

})

app.listen(port, () => {
  console.log(`app is running on port ${port}`);
})