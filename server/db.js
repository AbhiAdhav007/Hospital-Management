const mysql = require('mysql2/promise');
const db = {

    async get_connection() {

        if (!this.connection) {
            
            const database = process.env.MYSQL_DATABASE;
            const host = process.env.MYSQL_HOST;
            const user = process.env.MYSQL_USERNAME;
            const password = process.env.MYSQL_PASSWORD;
            this.connection = await mysql.createConnection({ host, database, user, password });
            this.connection.conn
        }

        return this.connection;
    },
};

module.exports = db;