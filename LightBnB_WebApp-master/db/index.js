const { Pool } = require('pg');

// @ts-ignore
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

module.exports = {
  query: (text, params) => {
    const start = Date.now();
    return pool.query(text, params).then(res => {
      const duration = Date.now() - start;
      console.log('executed query', { text, duration, rows: res.rowCount });
      return res;
    });
  }
};
