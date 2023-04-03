public class KExceptionHandlingDemos {

    public static void getDMLException()
    {
        try {
            
            Account acc= new Account();
            insert acc;

        } catch (DmlException ex) {

            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());         
        }
    }

    
    public static void getListException()
    {
        try {
            
             List<string> products= new List<string>{'Apple','Mango'};
             products.add('Apple');
             string newproduct= products[3];
              System.debug(products[3]);

        } catch (ListException ex) {

            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());         
        }
    }

    public static void getNullPointerException()
    {
        try {
            
           string product;
           Boolean  hasProduct=product.contains('Apple');
           System.debug(hasProduct);

        } catch (NullPointerException ex) {

            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());         
        }
    }

    public static void getQueryException()
    {
        try {
            
           List<Account> acc= [Select Id, Name from Account Where Name='How are you doing' Limit 1];
           
        //   System.debug(acc.size());

        } catch (Exception ex) {

            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());         
        }
    }

    public static void getSobjException()
    {
        try {
            
           Account acc= [Select Id from Account Where Name='How are you doing' Limit 1];
           
            string nameofAccount= acc.Name;

        } catch (Exception ex) {

            System.debug('Cause of the Exception is '+ ex.getCause());
            System.debug('Line number of the Exception is '+ ex.getLineNumber());
            System.debug('Details of the Exception is '+ ex.getMessage());
            System.debug('Type of the Exception is '+ ex.getTypeName());
            System.debug('Stack tracke of the Exception is '+ ex.getStackTraceString());         
        }
    }



}