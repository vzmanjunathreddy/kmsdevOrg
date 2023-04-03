public class KBatchApexDemo implements Database.Batchable<sObject> {

    public Database.QueryLocator  start(Database.BatchableContext bc) {
       
        string query='Select Id,Name, City__c  from KHotel__c';

        return Database.getQueryLocator(query);
               
    }
    public void execute(Database.BatchableContext bc, List<KHotel__c> hotels){

        for(KHotel__c ht:hotels)
        {
            ht.Name='IN ' +ht.Name;
            
        }
       try {
        
        update hotels;
       } 
       catch (Exception ex) {
         System.debug('Exception has occured in the code of batch job'+ex.getMessage());
        
       }

    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}