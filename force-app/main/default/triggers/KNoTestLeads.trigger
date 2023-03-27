trigger KNoTestLeads on Lead (before insert,before update) {

    string testvalue='test';


   /** for(Lead mylead:Trigger.new)
    {
       if(mylead.LastName.contains(testvalue) || (mylead.Company.contains(testvalue)))
       {
          mylead.Status='Disqualified';
       }
    } */


    for(Lead mylead:Trigger.new)
    {
      if(mylead.LastName.contains(testvalue) || (mylead.Company.contains(testvalue)))
      {
         mylead.addError('Kindly do not enter any test records into Leads');
      }
    }
}