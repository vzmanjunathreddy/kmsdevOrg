import { LightningElement,wire } from 'lwc';
import getHotelsData from '@salesforce/apex/KHotelController.getHotelsData';

import MSMessageChannel from "@salesforce/messageChannel/MSMessageChannel__c"
import { MessageContext,publish } from 'lightning/messageService';


export default class Klmspublisher extends LightningElement {

    
   @wire(MessageContext)
   context

   @wire(getHotelsData)
   hotels;


   handleHotelSelected(event){

    const payload = { hotelId: event.target.hotel.Id };
    console.log('Pay Load recieved is '+ payload);
    
   publish(this.context, MSMessageChannel, payload);
}

}