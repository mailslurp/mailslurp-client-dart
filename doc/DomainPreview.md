# mailslurp.model.DomainPreview

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**domain** | **String** |  | 
**catchAllInboxId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**domainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 
**isVerified** | **bool** |  | 
**hasMissingRecords** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


