trigger KRecursiveTrigger on Account (after insert,after update) {

    if(!KRecursiveTirggerHandler.isExecuted)
    {
        if(trigger.isInsert  && trigger.isAfter)
        {
          KRecursiveTirggerHandler.isExecuted=true;
            Account acc= [Select Id , Name from Account Where Name='Manju234567' Limit 1];
            acc.Name='Manju4680';
            update acc;
        }

        if(trigger.isUpdate )
        {
            if(trigger.isAfter)
            {
                KRecursiveTirggerHandler.isExecuted=true;
                Account acc2 = new Account(Name='ktest123');
                insert acc2;
            }
        }
}

}