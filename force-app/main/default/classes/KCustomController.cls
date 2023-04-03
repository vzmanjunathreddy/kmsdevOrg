public with sharing class KCustomController {

    public Account accountObj{get;set;}

    public List<Account> accountsList {get;set;}

    public KCustomController(ApexPages.StandardController controller) {
        accountObj= new Account();
        accountsList= [Select Id,Name,site,type ,accountNumber from Account Limit 10];

    }

    public Pagereference createMyAccount(){

         insert accountObj;
         return new Pagereference('/'+accountObj.Id);
    }

    public string getWelcomeNote()
    {
        return 'Welcome to VF Extension Method';
    }
}