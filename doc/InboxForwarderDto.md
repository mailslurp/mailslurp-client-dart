# mailslurp.model.InboxForwarderDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**inboxId** | **String** |  | 
**name** | **String** | Name of inbox forwarder | [optional] 
**field** | **String** | Which field to match against | 
**match** | **String** | Wild-card type pattern to apply to field | 
**forwardToRecipients** | **List<String>** | Who to send forwarded email to | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


