public with sharing class KQueueableDemo implements Queueable {


    public void execute(QueueableContext ctx)
    {
        Task tsk= new Task();
        tsk.Subject='Created from Queuable Apex';
        tsk.Description='thank you from Queuable Apex';
        tsk.Priority='Normal';
        tsk.Status='Not Started';
        insert tsk;

        KQueueableDemo queue2= new KQueueableDemo();

        System.enqueueJob(queue2); // Chaining of Queues
    }
}