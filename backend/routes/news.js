var express = require('express');
const puppeter = require('puppeteer');
var router = express.Router();
const { QueryExecute } = require('./mysq_database');


router.post('/news', function (req, res, next) {
    //res.send("hai")
    // console.log(req.body);
    var {
        author,
        category,
        shortDescription,
        newsHead,
        contentData,
        blockQuote, image  } = {
        author: req.body?.author.toString(),
        category: req.body?.category.toString(),
        shortDescription: req.body?.shortDescription.toString(),
        newsHead: req.body?.newsHead.toString(),
        contentData: req.body?.contentData.toString(),
        blockQuote: req.body?.blockQuote.toString(),
        image: req.body?.image.toString()

    };
    if (author &&
        category &&
        shortDescription &&
        newsHead &&
        contentData &&
        blockQuote) {
        var query = `INSERT INTO news (author,category,shortDescription,newsHead,contentData,blockQuote,image) VALUES ('${author}','${category}','${shortDescription}','${newsHead}','${contentData}','${blockQuote}','${image}')`;
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

router.get('/news', function (req, res, next) {
    var query = "SELECT id,author,category,shortDescription,newsHead,contentData,blockQuote,image FROM news ";
    QueryExecute(query)
        .then((result) => {
            console.log(result)
            if (result) {
                res.status(200).send({ status: true, data: result });
            } else {
                res.status(200).send({ status: false, data: result });
            }

        })
        .catch((err) => {
            if (err) {
                res.status(404).send({ status: err });
            }
        });

});

router.delete('/news', function (req, res, next) {
    var query = "DELETE FROM news WHERE id="+req.body.id;
    QueryExecute(query)
        .then((result) => {
            res.status(200).send({ status: true, data: result });
        })
        .catch((err) => {
            if (err) {
                res.status(404).send({ status: false });
            }
        });

});

module.exports = router;