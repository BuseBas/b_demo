public with sharing class Demo_AccountTriggerHelper {
    
    public static void createChildAccounts(List<Account> accounts){
        List<Account> childAccounts = new List<Account>();
        
        for(Account account : accounts) {            
            //check if the parentId is null and create child account record
            if(account.ParentId == null){
                Account childAccount = new Account(
                    Name = account.Name + ' Child',
                    ParentId = account.Id
                );
                childAccounts.add(childAccount);   
            }           
        }
        
        if(!childAccounts.isEmpty()){
            insert childAccounts;            
        }
    }
    
}