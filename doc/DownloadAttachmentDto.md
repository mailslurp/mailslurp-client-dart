# mailslurp.model.DownloadAttachmentDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base64FileContents** | **String** | Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as `text/html` you can read the contents directly by converting it to string using `utf-8` encoding. | [optional] 
**contentType** | **String** | Content type of attachment. Examples are `image/png`, `application/msword`, `text/csv` etc. | [optional] 
**sizeBytes** | **int** | Size in bytes of attachment content | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


