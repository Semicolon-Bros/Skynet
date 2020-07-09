var express = require('express');
var router = express.Router();
var Mongo = require('../helpers/mongoWrapper');


const _mongo = new Mongo();

/* GET single job. */
router.get('/:job_id', function(req, res, next) {
  _mongo.search("jobs", {"soc_code":req.params.job_id})
  .then(job=>{
    if(job.length > 0){
      res.json({"job":job[0]});
    }
    else{
      res.json({"error":"Job does not exist"});
    }
  })
  .catch(error=>{
    console.log('Error in query --'+error);

  });
 
});

//GET all jobs that match search term
router.get('/search/:job_title_query', function(req, res, next){
  var query = req.params.job_title_query;
  var re = new RegExp(query,"i");
  var filter = {
    soc_title:
    {
      $regex:re
    }
  }
  console.log(filter);
  _mongo.search("jobs", filter )
  .then(jobs=>{
    if(jobs.length > 0){
      res.json({"all_Jobs":jobs});
    }
    else{
      res.json({"error":"Job title does not exist"});
    }
  })
  .catch(error=>{
    console.log('Error in query --'+error);
  })
})

module.exports = router;
