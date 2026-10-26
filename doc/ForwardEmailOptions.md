# mailslurp.model.ForwardEmailOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **List<String>** | To recipients for forwarded email | [default to const []]
**subject** | **String** | Subject for forwarded email | [optional] 
**cc** | **List<String>** | Optional cc recipients | [optional] [default to const []]
**bcc** | **List<String>** | Optional bcc recipients | [optional] [default to const []]
**from** | **String** | Optional from override | [optional] 
**useInboxName** | **bool** | Optionally use inbox name as display name for sender email address | [optional] 
**filterBouncedRecipients** | **bool** | Filter recipients to remove any bounced recipients from to, bcc, and cc before sending | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


