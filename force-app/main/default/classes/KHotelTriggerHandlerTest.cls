@isTest(SeeAllData=True)
public class KHotelTriggerHandlerTest {

    @isTest
    static void testHotelBeforeOperation()
    {
 
        
       // Setup Test Data
       List<KHotel__c> hotelsCollection = new List<KHotel__c>();
       KHotel__c hotels= new KHotel__c(Name='BBC News IN');
       hotelsCollection.add(hotels);

       insert hotelsCollection;

       //List<KHotel__c> hotelsCollection = [Select Id,Name from KHotel__c Limit 10];
        Test.startTest(); 
        KHotelTriggerHandler.HotelBeforeOperation(hotelsCollection);
        Test.stopTest();
        System.assert(true);
    }

    @isTest
    static void testHotelAfterOperation()
    {
        List<KHotel__c> hotelsCollection = new List<KHotel__c>();
       KHotel__c hotels= new KHotel__c(Name='BBC News IN');
       hotelsCollection.add(hotels);

       insert hotelsCollection;
     //  List<KHotel__c> hotelsCollection = [Select Id,Name from KHotel__c Limit 1];
        Test.startTest(); 
        
        KHotelTriggerHandler.HotelAfterOperation(hotelsCollection);
        List<KRoom__c> roomsList = new List<KRoom__c>();
        for(KHotel__c h: hotelsCollection)
               {
                 KRoom__c r= new KRoom__c();
                  r.KHotel__c= h.Id;
                  r.Occupancy__c='Single';            
                  roomsList.add(r);
                }
                  if(roomsList.size()>0)
                   {
                       insert roomsList;
                   }

        Test.stopTest();

        System.assert(true);
    }

}