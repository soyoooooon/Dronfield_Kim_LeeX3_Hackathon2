const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('./utils/sql');
const sass = require('node-sass');

const port = process.env.PORT || 3000;
const app = express();


app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('views', path.join( __dirname + "/views"));


app.get('/', (req, res) => {
  res.render('home', { specs: "Wanna know my specs?", information: "working!" })
})

app.get('/', (req, res) => {
  sql.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = "SELECT * FROM tbl_specs";

    sql.query(query, (err, rows) => {
      connection.release();

      if (err) { return console.log (err.message); }
      console.log(rows);

      res.render('user', rows[7]);
    })
  })

})

app.listen(port, () => {
  console.log(`app is running on port ${port}`);
})