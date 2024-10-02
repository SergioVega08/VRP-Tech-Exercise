import { LightningElement, wire, api} from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class AccountList extends LightningElement {

    accounts;  
    accountId;
    
    @wire (getAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
            console.log('Accounts'+ this.data);
        } else if (error) {
            this.error = error;
            this.accounts = undefined;
        }
    }

    onclickhandler(event){
        this.template.querySelector('c-contact-list').accountId = event.target.name;
        //console.log('Account Id:' + event.target.name);
    }
}