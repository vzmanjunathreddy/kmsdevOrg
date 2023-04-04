import { LightningElement,api } from 'lwc';

export default class Klmspublishhotelitem extends LightningElement {

@api
hotel;

    handleSelect(event) {
        event.preventDefault();
            const selectEvent = new CustomEvent('hotelselect', {
            bubbles: true
        });
    this.dispatchEvent(selectEvent);
    }
}