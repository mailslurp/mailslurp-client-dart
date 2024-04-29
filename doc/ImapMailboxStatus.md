# mailslurp.model.ImapMailboxStatus

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The mailbox name. | 
**readOnly** | **bool** | True if the mailbox is open in read-only mode. | 
**items** | [**Map<String, Object>**](Object) | Results map | [default to const {}]
**flags** | **List<String>** | The mailbox flags. | [default to const []]
**permanentFlags** | **List<String>** | The mailbox permanent flags. | [default to const []]
**unseenSeqNum** | **int** | The sequence number of the first unseen message in the mailbox. | 
**messages** | **int** | The number of messages in this mailbox. | 
**recent** | **int** | The number of messages not seen since the last time the mailbox was opened. | 
**unseen** | **int** | The number of unread messages. | 
**uidNext** | **int** | The next UID. | 
**uidValidity** | **int** | Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. | 
**appendLimit** | **int** | Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


