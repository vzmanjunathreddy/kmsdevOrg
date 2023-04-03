import { LightningElement,wire } from 'lwc';
import getHotelsData from  '@salesforce/apex/KHotelController.getHotelDetails';

export default class KwireParent extends LightningElement {

    @wire(getHotelsData)
    hotels;
}