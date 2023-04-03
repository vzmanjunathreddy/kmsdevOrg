public with sharing class kfirstApex {

    Decimal price;
    Boolean hasvalue;
    Integer num;
    string nameOfaPerson;


    public void getReciepeDetails2()
    {
     System.debug('Welcome to Reciepe preparation ...');
    }
    public void getReciepeDetails4()
    {
     System.debug('Welcome to Reciepe preparation ...');
    }
    public void WelcomeUser()
    {
        System.debug('welcome to the Salesforce Development');
    }
    
    public static void WelcomeUser(string name, string city, Integer age)
    {
         System.debug('welcome to the Salesforce Development '+ ', ' + name +'Age is'+ age + 'and City is ' + city);
    }

    public List<string> getFruits()
    {
        // List are the order collection of elements 
        // fruits[0] is always going to apple - n no of times you execute it

        //Collections
          // List Ordered Collection of elments
          //Set UnOrdered Collections of elements 
          // SET stores unique values no duplicate values are stored
          // Map is collection which stores ele in the form of Key , value
          // <Id,String>
          // <String,string>
          //<Id, Account>



        List<string> fruits= new List<string>{'Apple','banana','Oranges'};
        fruits.add('Strawberries');
        return fruits;

    }

    public List<Khotel__c> GetListofHotels()
    {
        List<Khotel__c> hotels= [Select Id,Name, City__c  from KHotel__c Limit 5];
        return hotels;

    }

    public Set<String> GetSetoffruits()
    {
        SET<string> fruits= new SET<string>{'Apple','banana','Oranges'};
        fruits.add('Strawberries');

        return fruits;
    }

    public Map<string, string> getListofHotelsintheCity()
    {
        Map<string,string> hotelsinCity= new Map<string,string>();
        hotelsinCity.put('Nagpur','Taj Hotel');
        hotelsinCity.put('Banglore','Taj Hotel');
        hotelsinCity.put('Hyderabad','Marriot Hotels');

        return hotelsinCity;
         
    }

    
    public Map<Id, Account> getListofmpAccounts()
    {
        Map<Id,Account> mpAccounts= new Map<Id,Account>();
         
        List<Account> accounts=[Select Id,Name,Site from Account Limit 10];

        for(Account ac:accounts){
            mpAccounts.put(ac.Id,ac);
        }

        return mpAccounts;
         
    }

}