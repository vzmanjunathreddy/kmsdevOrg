global with sharing class KDemoFuture {

    @future
    public static void processHotelRecords(string name)
    {
        KHotel__c hotel= new KHotel__c();
        hotel.Name=name;
        insert hotel;
    }

    @future(callout=true)
    public static void processNewHotelWithAnimalNames()
    {
        Http http= new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        // If the request is successful, parse the JSON response.

        if (response.getStatusCode() == 200) {
            
            // Deserialize the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            List<Object> animals = (List<Object>) results.get('animals');
          
            //Bulkify it
            List<KHotel__c> hotels= new List<KHotel__c> ();

            for (Object animal: animals) {
                KHotel__c hotel= new KHotel__c();
                hotel.Name=String.valueOf(animal);
                hotels.add(hotel);
            }
            insert hotels;
        }
     
    }


}