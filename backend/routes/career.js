var express = require('express');
const puppeter = require('puppeteer');
var router = express.Router();
const { QueryExecute } = require('./mysq_database');


router.post('/career', function (req, res, next) {
    var {
        jobTitle,
        shortDescription,
        location,
        positions,
        endDate,
        resposibilities,
        qualifications}
        = {
        jobTitle: req.body?.jobTitle.toString(),
        location: req.body?.location.toString(),
        shortDescription: req.body?.shortDescription.toString(),
        positions: req.body?.positions.toString(),
        endDate: req.body?.endDate.toString(),
        resposibilities: req.body?.resposibilities.toString(),
        qualifications: req.body?.qualifications.toString(),
    };
    if (jobTitle &&
        shortDescription &&
        location &&
        positions &&
        endDate &&
        resposibilities &&
        qualifications) {
        var query = `INSERT INTO career (jobTitle,shortDescription,location,positions,endDate,resposibilities,qualifications) VALUES ('${jobTitle}','${shortDescription}','${location}','${positions}','${endDate}','${resposibilities}','${qualifications}')`;
        console.log(query);
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


router.get('/career', function (req, res, next) {
    var query = "SELECT jobTitle,shortDescription,location,positions,endDate,resposibilities,qualifications FROM career";
    QueryExecute(query)
        .then((result) => {
            if (result.length > 0) {
                res.status(200).send({ status: true, data: result });
            } else {
                res.status(200).send({ status: false, data: result });
            }

        })
        .catch((err) => {
            if (err) {
                res.status(404).send({ status: false });
            }
        });

});

module.exports = router;