const Hospital = require('../models/Hospital');
const Psychiatrist = require('../models/Psychiatrist');
async function add_psychiatrist(req,res){

    let name = req.query.name;
    let hospital_id = req.query.hospital_id;

    if(!name || !hospital_id){
        return res.status(400).json({message : 'Name and Hospital required..!'})
    };

    const response = await Hospital.findById(hospital_id);
    
    if(!response || response.length < 1){
        return res.status(404).json({message : 'Please select valid hospital'})
    }

    try{
        await Psychiatrist.insert(name , hospital_id);
        return res.status(201).json({message : 'Psychiatrist details added'})
    }catch(error){
        return res.status(500).json({message : 'Something went wrong' , message : error.message})

    }
};

module.exports = {add_psychiatrist}