# mailslurp.model.CheckEmailBlacklistResults

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** |  | [optional] 
**requestedIpAddress** | **String** |  | [optional] 
**requestedMxHost** | **String** |  | [optional] 
**status** | **String** |  | 
**listed** | **bool** |  | 
**checkedIpAddresses** | [**List<EmailBlacklistIpResult>**](EmailBlacklistIpResult) |  | [default to const []]
**checkedZoneCount** | **int** |  | 
**totalListings** | **int** |  | 
**warnings** | **List<String>** |  | [default to const []]
**errors** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


