This is a simple example of a dockerized express web application.  It returns a message when the root location is hit.  

1. Build Dockerfile:
   ```
   docker build -t simple .
   ```
1. Run Dockerfile:
   ```
   docker run -d -v ${PWD}:/app -v /app/node_modules -p 8080:3000 --name foo --rm simple
   ```
1. Test with cURL command:
   ```
   curl -i localhost:8080
   ```
   
## More Info
The code is doesn't serve any static page to make it really easy for an HTTP response:
```
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!! From your Simple Express Web-Server!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
```

If you wanted to server a static page, use another simple express code:
```
// just server the local directory
var connect = require('connect');
var serveStatic = require('serve-static');
var port = 8080;
connect().use(serveStatic(__dirname)).listen(port, function(){
        console.log('Server running on ' + port + '...');
});
```
This serves the local directory 

