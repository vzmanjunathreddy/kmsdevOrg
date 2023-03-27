trigger KHotelTrigger on KHotel__c (before insert,after insert) {
    
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {           
          KHotelTriggerHandler.HotelBeforeOperation(Trigger.New);                       
        }
        
         if(Trigger.isAfter)
           {
  			KHotelTriggerHandler.HotelAfterOperation(Trigger.New);
           } 
    }
    

}