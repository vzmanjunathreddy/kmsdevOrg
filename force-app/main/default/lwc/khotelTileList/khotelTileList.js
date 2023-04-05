import { LightningElement,track,wire,api } from 'lwc';
import getHotelsData from '@salesforce/apex/KHotelController.getHotelsData'

export default class KhotelTileList extends LightningElement {

    @wire(getHotelsData) 
    hotels;
    @track
    selectedHotel='';

    handleHotelselect(event)
    {
        const hotl=this.hotels.data.find(h=>h.Id===event.detail);
        this.selectedHotel=hotl;
    }


}