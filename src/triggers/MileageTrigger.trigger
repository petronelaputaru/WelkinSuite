trigger MileageTrigger on Mileage__c (before delete) {
    Trigger.new[0].addError('Unsupported operation!');
}