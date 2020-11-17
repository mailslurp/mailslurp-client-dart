# mailslurp.model.Inbox

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | When was the inbox created | [optional] [default to null]
**description** | **String** | Optional description of an inbox for labelling purposes | [optional] [default to null]
**emailAddress** | **String** | The inbox&#39;s email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints. | [optional] [default to null]
**expiresAt** | **String** | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. | [optional] [default to null]
**favourite** | **bool** | Is the inbox favourited | [optional] [default to null]
**id** | **String** | ID of the inbox | [optional] [default to null]
**name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Tags that inbox has been tagged with | [optional] [default to []]
**userId** | **String** | ID of user that inbox belongs to | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


