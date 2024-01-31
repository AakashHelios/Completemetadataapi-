@isTest
private class MetadataDeploymentTest {

    @isTest
    static void testDeployMetadataItems_SuccessfulDeployment() {
        // Mock data setup
        String sourceOrg = 'a005i00000Lmd21AAB';
        String targetOrg = 'a005i00000Lmct1AAB';
        List<String> metadataItemNames = new List<String>{'metadataItem'};
        String metadataType = 'ApexClass';
        String TypeofValidation = 'NoTestRun'; // Change as needed

        // Call the method under test
        Test.startTest();
        String result = MetadataDeployment.deployMetadataItems(sourceOrg, targetOrg, metadataItemNames, metadataType, TypeofValidation);
        Test.stopTest();

       
    }

    @isTest
    static void testDeployMetadataItems_ErrorDuringDeployment() {
        // Mock data setup
        String sourceOrg = 'a005i00000Lmd21AAB';
        String targetOrg = 'a005i00000Lmct1AAB';
        List<String> metadataItemNames = new List<String>{'metadataItem'};
        String metadataType = 'ApexClass';
        String TypeofValidation = 'NoTestRun'; // Change as needed

        // Set up a scenario where an error occurs during deployment
        Test.startTest();
        // Mock the scenario where an exception occurs during deployment
        Test.stopTest();

        // Call the method under test
        Test.startTest();
        String result = MetadataDeployment.deployMetadataItems(sourceOrg, targetOrg, metadataItemNames, metadataType, TypeofValidation);
        Test.stopTest();

        // Add assertions
        System.assertEquals('Error retrieving metadata items', result, 'Should return error message');
        // Add more assertions based on the expected behavior
    }

    // Add similar tests for other methods like getmetadatazips, combineZips, retrieveMetadataItem, deployZip, and checkDeploymentStatus
}