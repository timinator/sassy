TEST_VARIABLES = [
  {
    :name=>"Respondent_ID", 
    :type=>"character", 
    :label=>"ID", 
    :values=>
    {
      "generated"=>"Generated"
    }
  },  
  {
    :name=>"AGE_GROUP", 
    :type=>"single", 
    :label=>"Age group", 
    :values=>
    {
      "1"=>"18-29", 
      "2"=>"30-44", 
      "3"=>"45+"
    }
  }, 
  {
    :name=>"Q24", 
    :type=>"single", 
    :label=>"Employment status", 
    :values=>
    {
      "1"=>"Work for someone else full-time (30+ hours)", 
      "2"=>"Temporarily unemployed", 
      "3"=>"Self-employed", 
      "4"=>"Work for someone else part-time only (8-29 hours)", 
      "5"=>"Retired, not employed", 
      "6"=>"Student, disabled, etc. not employed", 
      "7"=>"Full time homemaker", 
      "8"=>"None"
    }
  },  
  {
    :name=>"Q32", 
    :type=>"quantity", 
    :label=>"Years as loyal customer", 
    :values=>
    {
      "range"=>"-9..99"
    }
  }]