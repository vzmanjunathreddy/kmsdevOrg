public with sharing class KBasics {

    public void WelcomeUser()
    {
        System.debug('welcome to the Salesforce Development');
    }

    public String WelcomeUserUser()
    {
        return 'Welcome';
    }
    
    public List<String> getProducts()
    {
       // List<string> products= new List<string>{'Apple','Mango','Cherries'};           
       // return products;
        
       return new List<string>{'Apple','Mango','Cherries'};
    }

    public static List<Account> getAccountDetails(Id accountId)
    {
        List<Account> account=[Select Name from Account where Id=:accountId Limit 1];

        return account;

        
    }
}