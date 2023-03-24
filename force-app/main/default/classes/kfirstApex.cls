public with sharing class kfirstApex {

    Decimal price;
    Boolean hasvalue;
    Integer num;
    string nameOfaPerson;

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

    
    public  Map<Id, Account> getListofmpAccounts()
    {
        Map<Id,Account> mpAccounts= new Map<Id,Account>();
         
        List<Account> accounts=[Select Id,Name,Site from Account Limit 10];

        for(Account ac:accounts){
            mpAccounts.put(ac.Id,ac);
        }

        return mpAccounts;
         
    }

    /**
     * Execution in anonymous window
     * 
     
  kfirstApex kobj= new kfirstApex();

  Map<String,String> mphotels=  kobj.getListofHotelsintheCity();

  Set<String> hotelKeys= mphotels.keySet();

 if(mphotels.containsKey('Banglore'))
 {
       for(string hotlkey:hotelKeys)
  	{
      // Display only the hotel of Nagpur no other cities
      
      if(hotlkey=='Banglore')
      {
        System.debug('Key for the hotel is '+hotlkey +'Value inside is'+ mphotels.get(hotlkey));

      }
  }
 }
else
{
     System.debug('No relevant results found for the search');

}

kfirstApex kobj= new kfirstApex();

Map<Id, Account> mapaccounts=kobj.getListofmpAccounts();

SET<ID> accountIds=mapaccounts.keySet();

for(ID accid: accountIds)
{
    Account ac= mapaccounts.get(accid);
    System.debug('Account Key is ' + accid +' | '+'Account Name is ' + ac.Name);
}
     */

}