//setup 

var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');

app.use(bodyParser.urlencoded({ 'extended': 'true' }));
app.use(bodyParser.json());
app.use(bodyParser.json({ type: 'application/vnd.api+json' }));
app.use(methodOverride());

// configure app to use bodyParser()
// this will let us get the data from a POST
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

//create db connection
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '',
    database: 'cgpa-web',
    port: '3307'
});

//check connection
connection.connect(function (err) {
    if (err) {
        console.log('err');
    } else {
        console.log('Database connection successful');
    }
});

//api router 
var router = express.Router();
app.use('/api', router);

// ROUTES
// default root http://localhost:3000/api
app.get('*', function (req, res) {
    res.sendFile(__dirname + '/indexx.html'); // load the single view file (angular will handle the page changes on the front-end)
});

// start server
var espressPort = process.env.PORT || 3000;
var server = app.listen(espressPort, function () {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Listening at http:// %s: %s', host, port);
});

// localhost: 3000 / api / users
   router.get('/users', function (req, res) {
    var query = connection.query('SELECT * from  mpa ', function (err, rows, field) {
        if (err)
            console.log(err);
        else
            console.log('information:', rows);
        res.send(rows);
    });
})

// localhost: 3000 / api / users / id /
      router.get('/users/:id', function (req, res) {
      var query = connection.query('SELECT * from  mpa where 	MPA_ID = ' + req.params.id, function (err, rows, field) {
        if (err)
            console.log(err);
        else
            res.send(rows);
    });
})
