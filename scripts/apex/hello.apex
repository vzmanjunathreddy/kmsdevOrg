// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

kfirstApex kobj= new kfirstApex();

  Map<String,String> mphotels=  kobj.getListofHotelsintheCity();

  Set<String> hotelKeys= mphotels.keySet();


  if(mphotels.containsKey('Banglore'))
  {
  for(string hotlkey:hotelKeys)
  {

    System.debug(mphotels.get(hotlkey));
  }
  }


  //get to get key value
  // put is a method to insert the value
  // keySet()--> which will return list of all the keys

