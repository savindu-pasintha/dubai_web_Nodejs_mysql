var express = require('express');
const puppeter = require('puppeteer');
var router = express.Router();
const { QueryExecute } = require('./mysq_database');
var nodemailer = require('nodemailer');
var Cryptr = require('cryptr');

/**
 * 1-contact data saved to database
 * 2-sent email
*/
var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'savindupasingtha@gmail.com',
        pass: 'yourpassword'
    }
});

router.post('/contact', function (req, res, next) {
    var { name, email, transport, phone, comment, subject } = {
        name: req.body?.name.toString(),
        email: req.body?.email.toString(),
        transport: req.body?.transport.toString(),
        phone: req.body?.phone.toString(),
        comment: req.body?.comment.toString(),
        subject: req.body?.subject.toString()

    };
    if (name && email && transport && phone && comment) {
        const toEmail = email;
        //data encript by cryptr
        const cryptr = new Cryptr("encriptpybo");
        email = cryptr.encrypt(email);
        //const de = cryptr.decrypt(en);
        var query = `INSERT INTO contact (name, email, transport, phone, comment, subject) VALUES ('${name}','${email}','${transport}','${phone}','${comment}','${subject}')`;
        QueryExecute(query)
            .then((result) => {
                if (result) {
                    //sent mail
                    var email_sending_status = false;
                    var mailOptions = {
                        from: 'savindupasingtha@gmail.com',//company email
                        to: toEmail,
                        subject: subject.toString(),
                        text: comment.toString()
                    };

                    transporter.sendMail(mailOptions, function (error, info) {
                        if (error) {
                            email_sending_status = false;
                        } else {
                            email_sending_status = true;
                            // console.log('Email sent: ' + info.response);
                        }
                    });
                    res.status(201).send({ status: { data_saved: true, email_sent: email_sending_status } });
                }
            })
            .catch((err) => {
                if (err) {
                    res.status(404).send({ status: { data_saved: false, email_sent: false } });
                }
            });
    } else {
        res.status(404).send({ status: { data_saved: false, email_sent: false } });
    }
});

module.exports = router;