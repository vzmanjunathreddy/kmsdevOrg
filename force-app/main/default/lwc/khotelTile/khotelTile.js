import { LightningElement, api } from 'lwc';

export default class KhotelTile extends LightningElement {

    @api
    hotel;

    handleSelect(event)
    {
        const selectEvent= new CustomEvent('hotelselect',
        {
            detail:this.hotel.Id,
            bubbles:true
        });
        this.dispatchEvent(selectEvent);
    }
}