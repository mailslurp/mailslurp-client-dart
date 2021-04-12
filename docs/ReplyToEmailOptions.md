# mailslurp.model.ReplyToEmailOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List&lt;String&gt;** | List of uploaded attachments to send with the reply. Optional. | [optional] [default to []]
**body** | **String** | Body of the reply email you want to send | [optional] [default to null]
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] [default to null]
**from** | **String** | The from header that should be used. Optional | [optional] [default to null]
**isHTML** | **bool** | Is the reply HTML | [optional] [default to null]
**replyTo** | **String** | The replyTo header that should be used. Optional | [optional] [default to null]
**sendStrategy** | **String** | When to send the email. Typically immediately | [optional] [default to null]
**template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] [default to null]
**templateVariables** | [**Object**]() | Template variables if using a template | [optional] [default to null]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


