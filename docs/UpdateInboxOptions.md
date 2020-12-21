# mailslurp.model.UpdateInboxOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Optional description of an inbox for labelling purposes | [optional] [default to null]
**expiresAt** | [**DateTime**](DateTime.md) | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. | [optional] [default to null]
**favourite** | **bool** | Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access | [optional] [default to null]
**name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


