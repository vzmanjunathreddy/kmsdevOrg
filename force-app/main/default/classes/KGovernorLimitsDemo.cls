public with sharing class KGovernorLimitsDemo {
 
    public static void getrecordsInserts()
    {
        //DML governor Limit is only 150

        for(interger i=0;i<=200; i++)
        {
            Account ac= new Account(Name='KAccount'+i);
            insert ac;
        }
  
       try {


        // Bulkify 
        List<Account> accountslist= new List<Account>();

        for(interger i=0;i<=200; i++)
        {
            Account ac= new Account(Name='KAccount'+i);

            accountslist.add(ac);
        }

        insert accountslist;
        
       } catch (Exception ex) {

        
       }
 
    }
}