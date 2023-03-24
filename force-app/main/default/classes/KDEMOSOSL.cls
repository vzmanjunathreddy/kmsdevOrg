public with sharing class KDEMOSOSL {
 
public static void GetSOSLSearchResults()
{
    List<List<sObject>> sobjs= [FIND '*MS*' IN ALL FIELDS RETURNING KHotel__c(Name), KReservation__c(Name) LIMIT 3];

    KHotel__c[] hotels=((List<KHotel__c>)sobjs[0]);
   
    KReservation__c[] res=(List<KReservation__c>)sobjs[1];
 
    for(KHotel__c ht: hotels)
    {
        system.debug('Hotel from search result is ' +ht.Name);
    }
 
    for(KReservation__c r: res)
    {
        system.debug('Reservation from search result is ' +r.Name);
    }
}

public static List<List<sObject>> GetSOSLSearchWithQuery(string searchKey)
{

    List<List<sObject>> sobjs ;
   try
   {               
         sobjs = [FIND :searchKey IN ALL FIELDS RETURNING KHotel__c(Name), KReservation__c(Name)];     

        KHotel__c[] hotels=((List<KHotel__c>)sobjs[0]);
   
        KReservation__c[] res=(List<KReservation__c>)sobjs[1];         

        }
    catch(Exception ex)
       {
             System.debug('Exception Occured '+ ex.getMessage());
       }
    return sobjs;
}


/*
KDEMOSOSL devobj= new KDEMOSOSL();

//KDEMOSOSL.GetSOSLSearchResults();


List<List<sObject>> sobjs =  KDEMOSOSL.GetSOSLSearchWithQuery('*MS*');

KHotel__c[] hotels=((List<KHotel__c>)sobjs[0]);
   
KReservation__c[] res=(List<KReservation__c>)sobjs[1];      

    for(KHotel__c ht: hotels)
    {
        system.debug('Hotel from search result is ' +ht.Name);
    }
 
    for(KReservation__c r: res)
    {
        system.debug('Reservation from search result is ' +r.Name);
    }
*/
}