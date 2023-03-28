@isTest
private class ProcessTaskApexKTest {

@isTest
  static void testCreateTask()
  {

    Test.startTest();

    ProcessTaskApex.CreateTask();
    Task t = new Task();
    t.Subject='Task Created from Apex';
    t.Description='Welcome to the Task Created Description';
    insert t;
    Test.stopTest();
  }

}