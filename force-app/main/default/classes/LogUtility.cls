public class LogUtility {
    
    public static void log(String title, String origin, String method, String recordId, Boolean isException, String longDescription){
        if(System.isFuture()){
            logAsync(title,origin,method,recordId,isException,longDescription);
        } else {
            logSync(title,origin,method,recordId,isException,longDescription);
        }
    }
    
    private static void logSync(String title, String origin, String method, String recordId, Boolean isException, String longDescription) {
        insert new Log__c(isException__c = isException, Long_Description__c = longDescription, Method__c = method, Origin__c = origin, Record_ID__c = recordId, Title__c = title);
    }
    
    @future
    public static void logAsync(String title, String origin, String method, String recordId, Boolean isException, String longDescription) {
        insert new Log__c(isException__c = isException, Long_Description__c = longDescription, Method__c = method, Origin__c = origin, Record_ID__c = recordId, Title__c = title);
    }
    
}