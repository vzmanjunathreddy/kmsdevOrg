import { LightningElement,wire } from 'lwc';
import getHotelNames from '@salesforce/apex/KHotelController.getHotelNames';

export default class KwirewithParam extends LightningElement {
  
    searchHotel='';
    @wire(getHotelNames,{hotelname:'$searchHotel'})
    hotels;
 
    handleHotelChange(event)
    {
        window.clearTimeout(this.delayTimeout);

        const hotel=event.detail.value;
        
        this.delayTimeout= setTimeout(() => {
            this.searchHotel= hotel;
            }, 300);


    }
}