# mailslurp.model.DeliveryStatusDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**sentId** | **String** |  | [optional] 
**remoteMtaIp** | **String** |  | [optional] 
**inboxId** | **String** |  | [optional] 
**reportingMta** | **String** |  | [optional] 
**recipients** | **List<String>** |  | [optional] [default to const []]
**smtpResponse** | **String** |  | [optional] 
**smtpStatusCode** | **int** |  | [optional] 
**processingTimeMillis** | **int** |  | [optional] 
**received** | [**DateTime**](DateTime) |  | [optional] 
**subject** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


