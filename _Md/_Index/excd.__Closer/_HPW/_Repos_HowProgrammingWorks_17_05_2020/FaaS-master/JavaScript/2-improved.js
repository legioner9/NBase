'use strict';

const url = 'https://github.com/HowProgrammingWorks';

(async () => {
  const result = await api.https.get(url);
  return result.statusCode;
});
