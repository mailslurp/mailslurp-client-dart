# mailslurp.model.EmailAuditAnalysisResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Health status for a one-shot email audit | 
**healthScore** | **int** |  | 
**totalChecks** | **int** |  | 
**passingChecks** | **int** |  | 
**failingChecks** | **int** |  | 
**detectedLinks** | **int** |  | 
**checkedLinks** | **int** |  | 
**detectedImages** | **int** |  | 
**checkedImages** | **int** |  | 
**linkIssueCount** | **int** |  | 
**imageIssueCount** | **int** |  | 
**spellingIssueCount** | **int** |  | 
**brokenLinks** | [**List<EmailAuditUrlIssue>**](EmailAuditUrlIssue) |  | [default to const []]
**brokenImages** | [**List<EmailAuditUrlIssue>**](EmailAuditUrlIssue) |  | [default to const []]
**spellingIssues** | [**List<EmailAuditSpellingIssue>**](EmailAuditSpellingIssue) |  | [default to const []]
**compatibilityWarningCount** | **int** |  | 
**compatibilityNotSupportedCount** | **int** |  | 
**compatibilityUnknownCount** | **int** |  | 
**featureSupport** | [**EmailFeatureSupportResult**](EmailFeatureSupportResult) |  | [optional] 
**htmlErrorCount** | **int** |  | 
**htmlWarningCount** | **int** |  | 
**htmlInfoCount** | **int** |  | 
**htmlValidation** | [**HTMLValidationResult**](HTMLValidationResult) |  | [optional] 
**reputationFailureCount** | **int** |  | 
**attachmentMentionIssueCount** | **int** |  | 
**externalCheckSkippedCount** | **int** |  | 
**insights** | **List<String>** |  | [default to const []]
**errorMessage** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


