# mailslurp.model.ExtractAttachmentTextResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**present** | **bool** | True if extracted text is present | 
**text** | **String** | Extracted text when present | [optional] 
**methodUsed** | **String** | Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction. | [optional] 
**contentType** | **String** | Detected attachment content type | [optional] 
**warnings** | **List<String>** | Warnings or fallback notes | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


