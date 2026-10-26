# mailslurp.model.AIMessageResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evaluationId** | **String** |  | 
**status** | **String** |  | 
**summary** | **String** |  | 
**model** | [**AIMessageModelDto**](AIMessageModelDto) |  | 
**usage** | [**AIMessageUsage**](AIMessageUsage) |  | 
**elapsedMs** | **int** |  | 
**message** | [**AIMessageReference**](AIMessageReference) |  | [optional] 
**email** | [**Email**](Email) |  | [optional] 
**sms** | [**SmsDto**](SmsDto) |  | [optional] 
**match** | [**AIMessageMatchResult**](AIMessageMatchResult) |  | [optional] 
**assertionStatus** | **String** |  | [optional] 
**assertions** | [**List<AIMessageAssertionResult>**](AIMessageAssertionResult) |  | [default to const []]
**data** | [**Object**]() | Extracted JSON value conforming to the requested schema or extraction preset. Null when extraction is inconclusive or unavailable. | [optional] 
**extractionEvidence** | [**Map<String, List<AIMessageEvidence>>**](List) |  | [default to const {}]
**candidates** | [**List<AIMessageCandidateResult>**](AIMessageCandidateResult) |  | [default to const []]
**extractionReason** | **String** | Explanation when extraction is inconclusive. May contain a model-reported explanation of missing or ambiguous fields, or a server evidence-validation failure. Diagnostic text, not a stable machine-readable status. | [optional] 
**successful** | **bool** | True only when all requested work succeeded. Assert this in tests and use summary as the assertion failure message. | [readonly] 
**failedAssertionIds** | **List<String>** |  | [readonly] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


