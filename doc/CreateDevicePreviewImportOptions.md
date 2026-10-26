# mailslurp.model.CreateDevicePreviewImportOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rawEmailBase64** | **String** | Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an `.eml` file. | 
**sourceAlias** | **String** | Optional source label to attach to the preview run. | [optional] 
**externalId** | **String** | Optional external source ID for correlating this import with another system. | [optional] 
**options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


