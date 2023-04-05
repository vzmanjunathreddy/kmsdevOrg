import { LightningElement, api } from 'lwc';

export default class KhotelTile extends LightningElement {

    @api
    hotel;

    handleSelect(event)
    {
        event.preventDefault();
        const hotelId=this.hotel.Id;
        console.log(this.hotel);
        const selectEvent= new CustomEvent('hotelselect',
        {
            detail:hotelId
           
        });
        this.dispatchEvent(selectEvent);
    }
}