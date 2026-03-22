# mailslurp.model.EmailAuditComparisonDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseline** | [**EmailAuditDto**](EmailAuditDto) |  | 
**current** | [**EmailAuditDto**](EmailAuditDto) |  | 
**healthScoreDelta** | **int** |  | 
**statusChanged** | **bool** |  | 
**brokenLinkDelta** | **int** |  | 
**brokenImageDelta** | **int** |  | 
**spellingIssueDelta** | **int** |  | 
**htmlErrorDelta** | **int** |  | 
**htmlWarningDelta** | **int** |  | 
**compatibilityWarningDelta** | **int** |  | 
**compatibilityNotSupportedDelta** | **int** |  | 
**reputationFailureDelta** | **int** |  | 
**attachmentMentionIssueDelta** | **int** |  | 
**addedInsights** | **List<String>** |  | [default to const []]
**removedInsights** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


