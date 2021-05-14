# mailslurp.model.DomainDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**dkimTokens** | **List<String>** | Unique token DKIM tokens | [optional] [default to const []]
**domain** | **String** | Custom domain name | [optional] 
**domainNameRecords** | [**List<DomainNameRecord>**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] [default to const []]
**id** | **String** |  | 
**isVerified** | **bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updatedAt** | [**DateTime**](DateTime) |  | 
**userId** | **String** |  | 
**verificationToken** | **String** | Verification tokens | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


