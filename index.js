const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
dotenv.config()


const dbConn = require('./config/db.config');

// setup SERVER Port
const port = process.env.PORT || 8080; 

app.use(cors());

// Configuring body parser middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


// Our handler function is passed a request and response object
app.get('/', function(req, res) {
    // We must end the request when we are done handling it
    res.end("Index Page");
});

const authRouter = require('./api/routes/auth.route')
app.use('/v1/api/auth', authRouter);


const bookRouter = require('./api/routes/book.route')
app.use('/v1/api/book', bookRouter);



module.exports = app;

// listen to port
app.listen(port, () => {
    console.log(`Server is running at PORT ${port}`);
})