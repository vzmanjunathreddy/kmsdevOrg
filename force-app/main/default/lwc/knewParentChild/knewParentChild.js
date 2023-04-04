import { LightningElement, api } from 'lwc';

export default class KnewParentChild extends LightningElement {

    @api
    inputfromparent;
    @api
    city;

    username='Manju';

    handleUsernamechange(event)
    {

        this.username=event.detail.value;

        const myuserevent= new CustomEvent('usernamechange',{
            detail: this.username
        });

       this.dispatchEvent(myuserevent);
    

    }


}