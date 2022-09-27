var express = require('express');
const puppeter = require('puppeteer');
var router = express.Router();
const { QueryExecute } = require('./mysq_database');
var Cryptr = require('cryptr');


router.post("/v", function (req, res, next) {
    res.send("hai");
});

router.post('/register', function (req, res, next) {
    var { email, username, password } = {
        email: req.body.email.toString(), username: req.body?.username.toString(), password: req.body?.password.toString()
    };

    if (email && password && username) {

        //data encript by cryptr
        const cryptr = new Cryptr("encriptpybo");
        email = cryptr.encrypt(email);
        password = cryptr.encrypt(password);
        //const de = cryptr.decrypt(en);

        var query = `INSERT INTO register (email,username,password) VALUES ('${email}','${username}','${password}')`;
        QueryExecute(query)
            .then((result) => {
                if (result) {
                    res.status(201).send({ status: { data_saved: true } });
                }
            })
            .catch((err) => {
                if (err) {
                    res.status(404).send({ status: { data_saved: false } });
                }
            });

    } else {
        res.status(404).send({ status: { data_saved: false } });
    }

});


module.exports = router;