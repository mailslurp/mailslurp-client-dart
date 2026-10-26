# mailslurp.model.InboxRetentionPolicyDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | [optional] 
**scope** | **String** |  | 
**inboxId** | **String** |  | [optional] 
**domainId** | **String** |  | [optional] 
**retentionDays** | **int** |  | 
**enabled** | **bool** |  | 
**excludedInboxIds** | **List<String>** |  | [default to const []]
**excludedDomainIds** | **List<String>** |  | [default to const []]
**excludedInboxEmailAddressPatterns** | **List<String>** |  | [default to const []]
**excludedDomainNamePatterns** | **List<String>** |  | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


