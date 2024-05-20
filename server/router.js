const express = require('express');
const router = express.Router();
const patientController = require('../controllers/patientController');
const psychiatristController = require('../controllers/psychiatristController');
const hospitalCtr = require('../controllers/hospitalController');


router.post('/hospital/add_names' , hospitalCtr.add_hospitals);
router.post('/hospital/add/:name' , hospitalCtr.add);
router.get('/hospital/find' , hospitalCtr.get_hospital_data);

router.post('/patient/register' , patientController.registerPatient);

router.post('/psychiatrist/create' , psychiatristController.add_psychiatrist);

module.exports = router;