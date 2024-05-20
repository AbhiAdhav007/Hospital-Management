const Hospital = require('../models/Hospital');
const Psychiatrist = require('../models/Psychiatrist');

async function add_hospitals(req , res){
    
    const list = req.body;
    try{
        await Hospital.createBulk(list);
    }catch(err){
        return res.status(500).json({status : 'error' , message : err.message});
    }

    return res.status(200).json({message : 'Hospital data inserted successfully...!'})
};

async function add(req , res){
    
    const name = req.params.name;

    try{
        await Hospital.insertOne(name);
    }catch(err){
        return res.status(500).json({status : 'error' , message : err.message});
    }

    return res.status(200).json({message : 'New hospital registered'});
};
async function get_hospital_data(req,res){

    const hospital_id = req.query.id;

    const hospital = await Hospital.findById(hospital_id);

    if(!hospital || hospital.length < 1){
        return res.status(404).json({message : 'Please give valid hospital_id'})
    }

    const results = await Psychiatrist.findAllByHospitalId(hospital_id);
    const totalPatients = results.reduce((acc, psychiatrist) => acc + psychiatrist.patients_count, 0);
    return res.status(200).json({hospitalName : hospital[0].name , totalPsychiatrists : results.length , totalPatients , psychiatrists : results})
};

module.exports = {get_hospital_data , add , add_hospitals};
