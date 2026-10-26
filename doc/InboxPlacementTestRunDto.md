# mailslurp.model.InboxPlacementTestRunDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**remoteTestId** | **String** |  | 
**mode** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**reportStatus** | **String** |  | [optional] 
**requestedSegment** | **String** |  | [optional] 
**seedlistProfile** | **String** |  | [optional] 
**senderDomain** | **String** |  | [optional] 
**fromEmail** | **String** |  | [optional] 
**subjectHint** | **String** |  | [optional] 
**trackingToken** | **String** |  | [optional] 
**seedAddresses** | **List<String>** |  | [default to const []]
**seedAddressFormats** | **Map<String, String>** |  | [default to const {}]
**totalTargets** | **int** |  | 
**matchedTargets** | **int** |  | 
**inboxTargets** | **int** |  | 
**spamTargets** | **int** |  | 
**notReceivedTargets** | **int** |  | 
**startedAt** | [**DateTime**](DateTime) |  | [optional] 
**firstMatchAt** | [**DateTime**](DateTime) |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**expiresAt** | [**DateTime**](DateTime) |  | [optional] 
**lastEventAt** | [**DateTime**](DateTime) |  | [optional] 
**lastSyncedAt** | [**DateTime**](DateTime) |  | [optional] 
**billedAt** | [**DateTime**](DateTime) |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


