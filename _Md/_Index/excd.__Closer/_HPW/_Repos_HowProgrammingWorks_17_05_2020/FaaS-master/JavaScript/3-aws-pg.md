# Read record from PostgreSQL

```js
exports.handler = (event, context, callback) => {
  const { Client } = require('pg');
  const client = new Client();
  client.connect();
  const id = parseInt(event.pathParameters.id);
  const query = 'SELECT * FROM users WHERE id = $1';
  client.query(query, [id], (err, data) => {
    callback(err, {
      statusCode: 200,
      body: JSON.stringify(data.rows),
    });
  });
};
```
