'use strict';

const express = require('express');
const { Pool } = require('pg');

const PORT = 3000;

const app = express();

const client = new Pool({
  host: '127.0.0.1',
  port: 5432,
  database: 'application',
  user: 'marcus',
  password: '532',
});

app.get('/user/:id', (req, res) => {
  const id = parseInt(req.params.id);
  const query = 'SELECT * FROM users WHERE id = $1';
  client.query(query, [id], (err, data) => {
    if (err) throw err;
    res.status(200).json(data.rows);
  });
});

app.listen(PORT, () => {
  console.log(`Open: http://127.0.0.1:${PORT}/user/10`);
});
