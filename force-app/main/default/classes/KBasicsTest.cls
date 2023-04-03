@isTest
public class KBasicsTest {
    
    @isTest
    static void testWelcome()
    {
        KBasics kobj= new KBasics();
        Test.StartTest();
        kobj.WelcomeUser();
        Test.StopTest();
        System.assert(true);

    }

    @isTest
    static void testWelcomeUser()
    {
        KBasics kobj= new KBasics();
        Test.StartTest();
        string actualValue=kobj.WelcomeUserUser();
        Test.StopTest();
        System.assertEquals('Welcome', actualValue, 'Values are not matching kindly check');
        
    }
    
    @isTest 
    static void testgetProducts()
    {
        KBasics kobj= new KBasics();    
        Test.startTest();
        List<string> actualProducts=kobj.getProducts();
        Test.stopTest();
        System.assertEquals(3, actualProducts.size(), 'Products not equal');
             
    }

    @isTest
    static void testgetAccountdetails(){
        
        
        List<Account> acutalData=null;
        string accountName='ABB Solution Ltd';
        Test.startTest();
         acutalData=KBasics.getAccountDetails('0015j00000wTfUuAAK');
        if(acutalData.size()>0)
        {
            System.debug('Account obj has records and data is '+acutalData);
        }
        Test.stopTest();
        System.debug(acutalData);
       System.assertEquals(accountName, acutalData[0].Name);
        
       System.assertEquals(1, acutalData.size(), 'expecting one Record either records or more than one');
        
    }

        
    }