# mailslurp.model.InboxReplierDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**inboxId** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**field** | **String** |  | [optional] 
**match** | **String** |  | [optional] 
**replyTo** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**isHTML** | **bool** |  | 
**templateId** | **String** |  | [optional] 
**templateVariables** | [**Map<String, Object>**](Object) |  | [optional] [default to const {}]
**ignoreReplyTo** | **bool** |  | 
**active** | **bool** | Whether the inbox replier is active | 
**createdAt** | [**DateTime**](DateTime) |  | 
**should** | **String** | Comparison mode for inbox automation matching. | [optional] 
**matchOptions** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**body** | **String** |  | [optional] 
**attachments** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


