public with sharing class AccountController {
   
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accs =  [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED];

        return accs;
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsByAccountId(String id){
        List<Contact> contacts = [SELECT Id, Name FROM Contact WHERE Id = :id WITH SECURITY_ENFORCED];
        return contacts;
    }
}