Solution 
- Using after insert trigger to create child accounts for each account whose ParentId field is null. 

Assumptions
- Since the assignment asked specifically for the trigger, the flow option is ignored even though it could be a solution as better practice.

Legacy Accounts
- Having only a trigger does not provide the solution for the legacy accounts, based on the number of legacy accounts, a one-time script or batch implementation/flow can be considered as a solution.

Reference for Trigger Framework 
https://github.com/kevinohara80/sfdc-trigger-framework