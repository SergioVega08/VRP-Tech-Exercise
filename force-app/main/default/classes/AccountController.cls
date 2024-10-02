public with sharing class AccountController {
   
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accs =  [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED];

        return accs;
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsByAccountId(String accountId){
        List<Contact> contacts = [SELECT Id, Name FROM Contact WHERE AccountId = :accountId WITH SECURITY_ENFORCED];
        return contacts;
    }
}