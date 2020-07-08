var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/:jobid', function(req, res, next) {
  res.send({"job":"return job details here"});
});

module.exports = router;
