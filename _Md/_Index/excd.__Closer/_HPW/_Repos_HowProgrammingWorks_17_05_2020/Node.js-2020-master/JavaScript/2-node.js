'use strict';

const http = require('http');
const PORT = 3000;

const routing = {
  '/': {
    get: () => 'Hello World!',
    post: () => 'Got a POST request',
  },
  '/user': {
    put: () => 'Got a PUT request at /user',
    delete: () => 'Got a DELETE request at /user',
  },
};

const server = http.createServer((req, res) => {
  const route = routing[req.url];
  if (!route) {
    res.statusCode = 404;
    res.end();
    return;
  }
  const method = req.method.toLowerCase();
  const handler = route[method];
  res.end(handler());
});

server.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}!`);
});
