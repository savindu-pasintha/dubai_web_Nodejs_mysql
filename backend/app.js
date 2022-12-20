var express = require('express');
var createError = require('http-errors');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var app = express();


var indexRouter = require('./routes/index');
var contactRouter = require('./routes/contact');
var newsRouter = require('./routes/news');
var registerRouter = require('./routes/register');
var careerRouter = require('./routes/career');


// View Engine Setup
//Tempalte engine == jage ? app.set('view engine', 'jade');
//Tempalte engine == ejs ? app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));//extended: true  =   content type :  form-data not support*   raw , x-ww-form-urlencodel support
app.use(cors({ origin: ["https://salemalmakranicargo.ae", "https://api.salemalmakranicargo.ae"] }));//Add your front end url to avoid the cors error
app.use(logger('dev'));
app.use(cookieParser());

//load sattics file : css/images/others
app.use(express.static(path.join(__dirname, 'public')));

//Here You Can Define All The Https/Http Endpoints 
app.use('/', indexRouter);
app.use('/api', contactRouter);
app.use('/api', newsRouter);
app.use('/api', careerRouter);
app.use('/api', registerRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
