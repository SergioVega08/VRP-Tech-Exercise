import { LightningElement, api,wire } from 'lwc';
import getContactsByAccountId from '@salesforce/apex/AccountController.getContactsByAccountId';

export default class ContactList extends LightningElement {

    @api accountId;
    contacts;
    error;

    @wire(getContactsByAccountId, {accountId: '$accountId'})
        wiredContacts({ error, data }) {
            if (data) {
                this.contacts = data;
            } else if (error) {
                this.error = error;
                this.contacts = undefined;
            }
        }
}