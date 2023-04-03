import { LightningElement } from 'lwc';

export default class KbasicsConditionalRendering extends LightningElement {

    hastoDisplay=false;

    handleCheckboxChange(event)
    {
      this.hastoDisplay=event.detail.checked;
        
    }
}