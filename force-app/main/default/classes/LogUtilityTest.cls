@iSTest
public class LogUtilityTest {
    
    @isTest
    private static void testNoExceptionLog(){
        Test.startTest();
        	LogUtility.log('test log class', 'test class', 'testNoExceptionLog', NULL, FALSE, 'test log class');
        Test.stopTest();
    }
    
    @isTest
    private static void testExceptionLog(){
        Test.startTest();
        	LogUtility.log('test log class', 'test class', 'testNoExceptionLog', NULL, TRUE, 'test log class');
        Test.stopTest();
    }
    
    @isTest
    private static void testAsyncLog(){
        Test.startTest();
        	LogUtility.logAsync('test log class', 'test class', 'testNoExceptionLog', NULL, FALSE, 'test log class');
        Test.stopTest();
    }

}