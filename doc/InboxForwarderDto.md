# mailslurp.model.InboxForwarderDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**inboxId** | **String** |  | [optional] 
**name** | **String** | Name of inbox forwarder | [optional] 
**field** | **String** | Which field to match against | [optional] 
**match** | **String** | Pattern to apply to field | [optional] 
**forwardToRecipients** | **List<String>** | Who to send forwarded email to | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**should** | **String** | Comparison mode for inbox automation matching. | [optional] 
**matchOptions** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**attachmentTextExtractionMethod** | **String** | Method for extracting text from attachments. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


