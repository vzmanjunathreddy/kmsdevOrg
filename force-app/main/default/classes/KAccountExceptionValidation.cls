public with sharing class KAccountExceptionValidation {
 
  
    public static void AddAccountData(){

        try {
            
            InsertAccount();
        } catch (KAccountException ex) {
            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());    
        }
    }

    private static void InsertAccount()
    {
        try {
            
            Account acc= new Account();
            insert acc;
        } catch (DmlException ex) {
            throw new KAccountException('Oh Dear Kindly check the Required fields before inserting the new account');            
        }
    }
}