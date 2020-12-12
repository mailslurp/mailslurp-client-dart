# mailslurp.model.UploadAttachmentOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base64Contents** | **String** | Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. | [optional] [default to null]
**contentType** | **String** | Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] [default to null]
**filename** | **String** | Optional filename to save upload with. Will be the name that is shown in email clients | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


