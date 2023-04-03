import { LightningElement,track,wire } from 'lwc';
import getHotelsData from  '@salesforce/apex/KHotelController.getHotelsData';

export default class KwireParent extends LightningElement {

    @track
    hotelsdata;

    @track
    errordata;

    @wire(getHotelsData)
    hotels({error, data})
    {
        if(data)
        {
            console.log(data);
            this.hotelsdata=data;
        }
        else
        {
            console.log(data);
              this.errordata=error;  
        }
    };
}