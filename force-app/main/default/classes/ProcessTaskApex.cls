public class ProcessTaskApex {

    @InvocableMethod
    public static void CreateTask()
    {
         Task t = new Task();
         t.Subject='Task Created from Apex';
         t.Description='Welcome to the Task Created Description';
         insert t;
    }
}