# mailslurp.model.DevicePreviewEmailSubmissionDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**ingestDomainId** | **String** |  | [optional] 
**profileId** | **String** |  | [optional] 
**runId** | **String** |  | [optional] 
**recipientEmailAddress** | **String** |  | 
**recipientLocalPart** | **String** |  | 
**matchedProfile** | **bool** |  | 
**status** | **String** |  | 
**sourceExternalId** | **String** |  | [optional] 
**sourceFrom** | **String** |  | [optional] 
**sourceTo** | **List<String>** |  | [optional] [default to const []]
**sourceSubject** | **String** |  | [optional] 
**sourceMessageId** | **String** |  | [optional] 
**sourceSizeBytes** | **int** |  | [optional] 
**failureStage** | **String** |  | [optional] 
**failureCode** | **String** |  | [optional] 
**latestError** | **String** |  | [optional] 
**receivedAt** | [**DateTime**](DateTime) |  | 
**processingStartedAt** | [**DateTime**](DateTime) |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


