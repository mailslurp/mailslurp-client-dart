# mailslurp.model.DevicePreviewShareLinkDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**runId** | **String** |  | 
**tokenPrefix** | **String** |  | 
**token** | **String** | Raw share token. Only returned immediately after creation. | [optional] 
**shareUrl** | **String** | Public share URL with social preview metadata. Only returned when the raw token is available. | [optional] 
**label** | **String** |  | [optional] 
**expiresAt** | [**DateTime**](DateTime) |  | [optional] 
**revokedAt** | [**DateTime**](DateTime) |  | [optional] 
**lastAccessedAt** | [**DateTime**](DateTime) |  | [optional] 
**accessCount** | **int** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


