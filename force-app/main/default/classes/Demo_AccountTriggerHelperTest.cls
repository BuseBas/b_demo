@isTest
private class Demo_AccountTriggerHelperTest {
    
    static testMethod void createChildAccountsTest() {
        // Create an account
        Account acc = new Account(
            Name = 'Test Account'
        );
        insert acc;
        
        //Check if the child account created
        Assert.isTrue([SELECT Id FROM Account WHERE ParentId = :acc.Id].size() == 1);      
        
        // Create another account with parentId
        Account acc2 = new Account(
            Name = 'Test Account2',
            ParentId = acc.Id
        );
        insert acc2;
        
        //Check if the child account not created
        Assert.isTrue([SELECT Id FROM Account WHERE ParentId = :acc2.Id].size() == 0); 
    }
    
}