import { LightningElement,api,track ,wire} from 'lwc';

import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import MSMessageChannel from "@salesforce/messageChannel/MSMessageChannel__c"
import { MessageContext,subscribe,APPLICATION_SCOPE } from 'lightning/messageService';

import NAME_FIELD from '@salesforce/schema/KHotel__c.Name';
import State_FIELD from '@salesforce/schema/KHotel__c.State__c';
import City_FIELD from '@salesforce/schema/KHotel__c.City__c';
import Picture_FIELD from '@salesforce/schema/KHotel__c.HotelPicture__c'

const fields = [
    NAME_FIELD,
    State_FIELD,
    City_FIELD,
    Picture_FIELD
];

export default class Klmspublishsubscribe extends LightningElement {


 @api
  hotel;
 
 @track
    dispalydata=true;
    subscription = null;
    recordId;
 
    Name;
    State__c;
    City__c;
    HotelPicture__c;
 
    @wire(MessageContext)
    context;
    
    @wire(getRecord, { recordId: '$recordId', fields })
        wiredRecord({ error, data }) {
            if (error) {
                this.dispatchToast(error);
            } else if (data) {
                fields.forEach(
                    (item) => (this[item.fieldApiName] = getFieldValue(data, item))
                );
            }
        }
 // Load of the component
   connectedCallback() {
      this.subscribeMessage();
  }

   subscribeMessage()
   {

      this.subscription= subscribe(this.context,
                                   MSMessageChannel,
                                    (message)=>{
                                        this.handleMessage(message)
                                       },
                                  {scope:APPLICATION_SCOPE})

   }

   handleMessage(message)
   {
      console.log('Message Recieved in channel is ... '+ message.hotelId);
      this.recordId=message.hotelId;

   }

   dispatchToast(error) {
      this.dispatchEvent(
          new ShowToastEvent({
              title: 'Error loading Hotel',
              message: 'Something went Wrong Please check again',
              variant: 'error'
          })
      );

   }


}