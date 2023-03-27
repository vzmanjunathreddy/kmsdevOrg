public with sharing class KHotelTriggerHandler {

          public static void HotelBeforeOperation(List<KHotel__c> hotels)
       {
          for(KHotel__c h: hotels)
            {
                List<KHotel__c> hotlesList= [Select Id,Name from KHotel__c Where Name=:h.Name];
                   if(hotlesList.size()>0)
                   {
                       h.addError('Testing again Hotel with Name already Exists Thank you try creating with New Name');
                   }
                   else
                   {
                      h.Name= h.Name + ' Before INDIA';
                   }                         
               }
       }
       
       public static void HotelAfterOperation(List<KHotel__c> hotels)
       {
           List<KRoom__c> roomsList = new List<KRoom__c>();
           for(KHotel__c h: hotels)
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
        }
       

       
       
   }