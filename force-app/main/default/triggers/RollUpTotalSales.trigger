trigger RollUpTotalSales on Opportunity (after insert, after update, after delete, after undelete) {

    Set<Id> accIds = new Set<Id>();

    if(trigger.isAfter && (trigger.isInsert || trigger.isUndelete)){

        if(!trigger.new.isEmpty()){

            for(Opportunity opp: trigger.new){
                if(opp.AccountId != null){
                    accIds.add(opp.AccountId);
                }
            }
        }
    }

    if(trigger.isAfter && trigger.isUpdate){

        if(!trigger.new.isEmpty()){

            for(Opportunity opp: trigger.new){
                if(opp.AccountId != trigger.oldMap.get(opp.Id).AccountId){
                    if(trigger.oldMap.get(opp.Id).AccountId != null){
                        accIds.add(trigger.oldMap.get(opp.Id).AccountId);
                    }
                    if(opp.AccountId != null){
                        accIds.add(opp.AccountId);
                    }
                }
            }
        }
    }

    if(trigger.isAfter && trigger.isDelete){

        if(!trigger.old.isEmpty()){

            for(Opportunity opp: trigger.old){
                if(opp.AccountId != null){
                    accIds.add(opp.AccountId);
                }
            }
        }
    }

    if(!accIds.isEmpty()){

        List<Account> accListStandard = [SELECT Id, Total_Sales_Standard_Wood__c, Total_Sales_Recycled_Wood__c , (SELECT Id, Amount, Name, Wood__c FROM Opportunities WHERE Wood_c = 'Standard') FROM Account WHERE Id IN: accIds];

        List<Account> accListRecycled = [SELECT Id, Total_Sales_Standard_Wood__c, Total_Sales_Recycled_Wood__c , (SELECT Id, Amount, Name, Wood__c FROM Opportunities WHERE Wood_c = 'Recycled') FROM Account WHERE Id IN: accIds];

        List<Account> accListToUpdate = new List<Account>();

        if(!accListStandard.isEmpty()){

            for(Account acc: accListStandard){

                acc.Total_Sales_Standard_Wood__c = acc.Opportunities.size();
                accListToUpdate.add(acc);

            }
        }

        if(!accListRecycled.isEmpty()){ 

            for(Account acc: accListRecycled){

                acc.Total_Sales_Recycled_Wood__c = acc.Opportunities.size();
                accListToUpdate.add(acc);

            }
        }

        if(!accListToUpdate.isEmpty()){

            update accListToUpdate;
            
        }
                
    }
       
}