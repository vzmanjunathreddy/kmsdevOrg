public class KHotelController {

    @AuraEnabled(cacheable=true)
    public static List<KHotel__c> getHotelsData(){

        return [
            SELECT
            Id,Name,State__c,City__c,HotelPicture__c
            FROM KHotel__c
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<KHotel__c> getHotelDetails(Id hotelId){

        return [Select Id,Name,State__c,City__c,HotelPicture__c from KHotel__c Where Id=:hotelId ];
    }

    @AuraEnabled(cacheable=true)
    public static List<KHotel__c> getHotelNames(string  hotelname){

        string searchKey= '%' + hotelname+ '%';
        return [Select Name from KHotel__c Where Name like :searchKey ];
    }

}

