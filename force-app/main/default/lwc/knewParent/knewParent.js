import { LightningElement,track } from 'lwc';

export default class KnewParent extends LightningElement {

    @track
    weclome='I am from Parent'
    @track
    usernameRecievedfromChild;

    handlechildata(event)
    {      
     this.usernameRecievedfromChild=event.detail;
    }
}