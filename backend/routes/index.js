var express = require('express');
const puppeter = require('puppeteer');
var router = express.Router();
var api_service = require('./api_service');

/* Load templates ejs == jage*/

// router.get('/', function (req, res, next) {
//   res.render('layouts/index',
//   );
// });

// router.get('/index.ejs', function (req, res, next) {
//   res.render('layouts/index',
//   );
// });

router.get('/', async function (req, res, next) {
  var data = [];
  api_service.getData("http://localhost:5000/api/news")
    .then((resp) => {
      data = resp.data?.data;
      if (data.length > 0) {
        res.render('layouts/news-list', { renderData: data });
      } else {
        res.render('layouts/news-list', {});
      }
    })
    .catch(e => {
      console.log(e);
      res.render('layouts/news-list', {});
    });
});

router.get('/news-list.ejs', async function (req, res, next) {
  var data = [];
  api_service.getData("http://localhost:5000/api/news")
    .then((resp) => {
      data = resp.data?.data;
      if (data.length > 0) {
        res.render('layouts/news-list', { renderData: data });
      } else {
        res.render('layouts/news-list', {});
      }
    })
    .catch(e => {
      console.log(e);
      res.render('layouts/news-list', {});
    });
});

router.get('/news-form.ejs', function (req, res, next) {
  res.render('layouts/news-form',
  );
});

router.get('/email-inbox.ejs', function (req, res, next) {
  var data = [];
  api_service.getData("http://localhost:5000/api/career")
    .then((resp) => {
      data = resp.data?.data;
      if (data.length > 0) {
        res.render('layouts/email-inbox.ejs', { renderData: data });
      } else {
        res.render('layouts/email-inbox.ejs', { renderData: [] });;
      }
    })
    .catch(e => {
      console.log(e);
      res.render('layouts/email-inbox.ejs', { renderData: [] });
    });

});

router.get('/form-repeater.ejs', function (req, res, next) {
  res.render('layouts/form-repeater',
  );
});

router.get('/pages-register.ejs', function (req, res, next) {
  res.render('layouts/pages-register',
  );
});


module.exports = router;
