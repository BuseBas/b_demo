public with sharing class Demo_AccountTriggerHandler extends Demo_TriggerHandler {
    
    public override void afterInsert() {
        Demo_AccountTriggerHelper.createChildAccounts(Trigger.New);
    }
    
}