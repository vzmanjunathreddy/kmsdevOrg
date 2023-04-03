public with sharing class KReciepe implements KReciepeInterface{

    public void getReciepeDetails()
    {
     System.debug('Welcome to Reciepe preparation ...');
    }
    
    public List<string> GetRecipeMenuItems()
    {
        List<string> menuItems=null;

        try 
        {
            menuItems= new List<string>();
            menuItems.add('Turn on the stove');
            menuItems.add('step 2');
            menuItems.add('steps 3');
            menuItems.add('Step 4');
            menuItems.add('thank you we are done');

        } 
        catch (Exception ex) {
            System.debug('error Occured during the execution');
        }
        return menuItems;
    }
}