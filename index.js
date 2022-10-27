const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hi, there');
});

app.post('/', (req, res) => {;
  res.send('You used POST method');
})

app.listen(8080, () => {
  console.log('Listening on port 8080');
});
