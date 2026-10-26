# mailslurp.model.EmailAuditAnalysisResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contentReview** | [**List<EmailAuditCheck>**](EmailAuditCheck) | Versioned static accessibility, unresolved template, and compliance review checks. Null on historical audits that did not run these checks. | [optional] [default to const []]
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
**spamVerdict** | **String** | Spam verdict supplied by the source mail receiver | [optional] 
**virusVerdict** | **String** | Virus verdict supplied by the source mail receiver | [optional] 
**spfVerdict** | **String** | SPF verdict supplied by the source mail receiver | [optional] 
**dkimVerdict** | **String** | DKIM verdict supplied by the source mail receiver | [optional] 
**dmarcVerdict** | **String** | DMARC verdict supplied by the source mail receiver | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


