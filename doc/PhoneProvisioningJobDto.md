# mailslurp.model.PhoneProvisioningJobDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**phoneCountry** | **String** |  | 
**phoneVariant** | **String** |  | [optional] 
**status** | **String** |  | 
**requestedCount** | **int** |  | 
**attemptedCount** | **int** |  | 
**succeededCount** | **int** |  | 
**failedCount** | **int** |  | 
**unavailableCount** | **int** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 
**items** | [**List<PhoneProvisioningJobItemDto>**](PhoneProvisioningJobItemDto) |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


