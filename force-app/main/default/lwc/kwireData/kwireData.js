import { LightningElement,wire } from 'lwc';
import  getHotelsData from '@salesforce/apex/KHotelController.getHotelsData';

export default class KwireData extends LightningElement {

 @wire(getHotelsData)
 hotels;

}