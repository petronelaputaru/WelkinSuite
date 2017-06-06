@isTest
private class MileageTrackerTestSuite {

	static testMethod void mileageTriggerTest() {

		Mileage__c mileage = new Mileage__c(Name = 'Deletion test');
		insert mileage;

		try {
			delete mileage;
		}
		catch(Exception e) {
			System.debug(e.getMessage());
			System.assertEquals('Unsupported operation', e.getMessage());
		}
		
		sapComDocumentSapRfcFunctions s = new sapComDocumentSapRfcFunctions();
	}
}