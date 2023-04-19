trigger Demo_AccountTrigger on Account (after insert) {
    new Demo_AccountTriggerHandler().run();
}