public with sharing class KDEMOSOQL {

    public static void CreateReservation()
    {
        KReservation__c res= new KReservation__c ();
        res.Contact__c='0035j00000LsP9DAAV';
        res.KRoom__c='a075j000007wMV5AAM';
        res.Name='Reservaation created form Apex code';
        res.StartDate__c =date.parse('3/1/2023');
        res.EndDate__c =date.parse('3/15/2023');
        
        insert res;
    
    }



}