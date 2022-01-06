# mailslurp.model.DomainDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**verificationToken** | **String** | Verification tokens | [optional] 
**dkimTokens** | **List<String>** | Unique token DKIM tokens | [optional] [default to const []]
**domainNameRecords** | [**List<DomainNameRecord>**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] [default to const []]
**catchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime) |  | [optional] 
**domainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


