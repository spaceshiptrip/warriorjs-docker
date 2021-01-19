const express = require('express')
const app = express()
const port = 3000

// just server the local directory
var connect = require('connect');
var serveStatic = require('serve-static');
var port = 8080;
var __dirname = 'warriorjs'

connect().use(serveStatic(__dirname)).listen(port, function(){
        console.log('Server running on ' + port + '...');
});

 
