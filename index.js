// import postgresql from "pg";
// import "dotenv/config";

const { pool } = require("pg");
// require("dotenv/config");

// const { Pool, Client } = postgresql;
const pool = new Pool({
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB
});

try {
    let testConnection = await pool.query("SELECT NOW()");
    console.log(testConnection.rows);
} catch (error) {
    console.log(error.message);
}