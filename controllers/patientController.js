const Patient = require("../models/Patient");

async function registerPatient(req , res){

    let patient = req.body;
    if(!patient){
        return res.status(404).json({message: 'invalid details'});
    };
    const errors = validate_patient(patient);
    if (errors.length > 0) {
        return res.status(401).json({ errors });
    }

    try{
        await Patient.create(patient);
        return res.status(201).json({message : 'Patient details added'})
    }catch(error){
        return res.status(500).json({message : 'Something went wrong' , message : error.message})

    }
};

function validate_patient(patient){

    let errors = [];

    if(!patient.name || typeof patient.name !== 'string'){
        errors.push({ field: 'name', message: 'Name is required' });
    }
    if(!patient.address || typeof patient.address !== 'string' || patient.address.length < 10){
        errors.push({field : 'address' , message : 'Address should be at least 10 characters'});
    }
    if (!patient.email || !validateEmail(patient.email)) {
        errors.push({ field: 'email', message: 'Email must be valid' });
    }
    if (!patient.phone_number || !validatePhoneNumber(patient.phone_number)) {
        errors.push({ field: 'phone_number', message: 'Phone number must be at least 10 digits with country code' });
    }
    if (!patient.password || !validatePassword(patient.password)) {
        errors.push({ field: 'password', message: 'Password must be 8-15 characters long and include one uppercase letter, one lowercase letter, and one number' });
    }
    if (!patient.photo || typeof patient.photo !== 'string' || patient.photo.trim() === '') {
        errors.push({ field: 'photo', message: 'Patient photo is required' });
    }

    return errors;
};

const validateEmail = (email) => {
    const regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@(([^<>()[\]\.,;:\s@"]+\.)+[^<>()[\]\.,;:\s@"]{2,})$/i;
    return regex.test(String(email).toLowerCase());
};

const validatePassword = (password) => {
    
    if(password.length < 8 || password.length > 15){
        return false;
    }

    const chars = password.split('');
    const hasUpperCase = chars.some(char => char >= 'A' && char <= 'Z');
    const hasLowerCase = chars.some(char => char >= 'a' && char <= 'z');
    const hasNumber = chars.some(char => char >= '0' && char <= '9');

    return hasUpperCase && hasLowerCase && hasNumber;
};

const validatePhoneNumber = (phone) => {
    const regex = /^\+\d{1,3}\d{10}$/;
    return regex.test(phone);
};

module.exports = {registerPatient}