const db = require('../server/db');

const Hospital = {
    createBulk: async (hospitalNames) => {
        const connection = await db.get_connection();
        const values = hospitalNames.map((name)=>[name]);
        const query = `INSERT INTO hospitals (name) VALUES ?`;
        await connection.query(query, [values]);
    },
    insertOne : async (name)=>{
        
        const connection = await db.get_connection();
        const query = `INSERT INTO hospitals (name) VALUES (?)`;
        await connection.query(query, [name]);
    },
    findById: async (id) => {
        const connection = await db.get_connection();
        const query = `SELECT * FROM hospitals WHERE id = ${id}`;
        const result = await connection.execute(query);
        return result[0];
    },
};

module.exports = Hospital;