var express = require('express');
var app = express();

// Our handler function is passed a request and response object
app.get('/', function(req, res) {
    // We must end the request when we are done handling it
    res.end();
});

module.exports = app;