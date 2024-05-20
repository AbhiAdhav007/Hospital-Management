const db = require('../server/db');

const Psychiatrist = {
    insert: async (name , hospital_id) => {

        const connection = await db.get_connection();
        const query = `INSERT INTO psychiatrists (name, hospital_id) VALUES (?, ?)`;
        await connection.query(query, [name, hospital_id]);
    },
    findAllByHospitalId: async (hospitalId) => {
        const connection = await db.get_connection();
        const query = `SELECT p.id, p.name, COUNT(pt.id) AS patients_count 
                       FROM psychiatrists p 
                       LEFT JOIN patients pt ON p.id = pt.psychiatrist_id 
                       WHERE p.hospital_id = ? 
                       GROUP BY p.id`;
        const [rows] = await connection.execute(query, [hospitalId]);
        return rows;
    },
};

module.exports = Psychiatrist;
