import { LightningElement,wire } from 'lwc';
import getHotelsData from '@salesforce/apex/KHotelController.getHotelsData'

export default class KhotelTileList extends LightningElement {

    @wire(getHotelsData) 
    hotels;

    selectedHotel;

    handleHotelselect(event)
    {
        const hotelId=event.detail;
        this.selectedHotel=this.hotels.find(h=>h.Id===hotelId);

    }
}