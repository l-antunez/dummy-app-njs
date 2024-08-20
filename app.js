// app.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World! This is my dummy app running on an EC2 instance.');
});

app.listen(port, () => {
  console.log(`Dummy app listening at http://localhost:${port}`);
});
