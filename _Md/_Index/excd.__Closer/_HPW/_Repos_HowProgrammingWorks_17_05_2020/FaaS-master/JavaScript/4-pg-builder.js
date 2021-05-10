'use strict';

(async id =>
  application.database
    .select('users')
    .where({ id })
);
