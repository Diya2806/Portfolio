const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: process.env.DB_HOST || 'localhost',
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || 'Diya123@',
    database: process.env.DB_NAME || 'portfolio_db',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    ssl: process.env.DB_HOST && process.env.DB_HOST !== 'localhost' ? {
        rejectUnauthorized: false
    } : undefined
});

module.exports = pool;
