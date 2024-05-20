const db = require('../server/db');

const Patient = {
    create: async (patient) => {

        const connection = await db.get_connection();
        const query = `INSERT INTO patients (name, address, email, phone, password, photo, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)`;
        await connection.query(query, [patient.name, patient.address, patient.email, patient.phone_number, patient.password, patient.photo, patient.psychiatrist_id]);
    },
};

module.exports = Patient;


module.exports = Patient;