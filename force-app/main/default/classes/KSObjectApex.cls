public with sharing class KSObjectApex {


    public static void sObjectFunctionality()
    {

        List<SObject> sobjs=Database.query('Select Id, Name from KHotel__c Limit 10');

        for(SObject sobj:sobjs)
        {
            System.debug('Sobject value is '+ sobj.get('Name'));
        }

    }

    public static void sObjectFunctionality(string query)
    {

        List<SObject> sobjs=Database.query(query);

        for(SObject sobj:sobjs)
        {
            System.debug('Sobject value is '+ sobj.get('Name'));
        }

    }


    
    public static void dbQueryResult()
    {
      
        List<Account> accounts= new List<Account>();

        accounts.add(new Account(Name='KTest1'));
        accounts.add(new Account(Name='KTest2'));
        accounts.add(new Account(Name=''));


        try {
            
          Database.SaveResult[] results  =Database.insert(accounts, false);

          for(Database.SaveResult saveresult:results)
          {
             if(saveresult.isSuccess())
             {
               System.debug('Successfully inserted acccounts'+saveresult.getId());
             }
             else {

                for(Database.Error er:SaveResult.getErrors())
                {
                    System.debug('Error Status Code is :'+er.getStatusCode() + ' Error Fields' +er.getFields());
                }
                
             }
          }

        } catch (DmlException ex) {
               throw new  DmlException('Unable to insert the account as its mandatory fields are missing');
            
        }

    }

    

}