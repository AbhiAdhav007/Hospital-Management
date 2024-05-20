const express = require('express');
const dotenv = require('dotenv');
dotenv.config();
const router = require('./router');
const app = express();
const PORT = process.env.PORT;

app.use(express.json());
app.use(router);
app.listen(PORT , ()=>{
    console.log(`server running on port ${PORT}`);
});
