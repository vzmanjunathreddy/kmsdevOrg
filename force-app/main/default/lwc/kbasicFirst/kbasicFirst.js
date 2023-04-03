import { LightningElement } from 'lwc';

export default class KbasicFirst extends LightningElement {

        welcomemessage='Welcome to LWC Development';
        firstName='Virat';
        lastName='kholi';

        firstNumber=10;
        secondNumber=20;
        dynamic='Hello how are U';

        get userName()
        {
            return this.firstName + ','  + this.lastName;
        }

        get sumofNumbers()
        {
            return this.firstNumber  + this.secondNumber;
        }
     
        handleDynamicChange(event)
        {
            this.dynamic=event.detail.value;
            console.log(event.detail.value);
        }

}