# mailslurp.model.DomainDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**dkimTokens** | **List&lt;String&gt;** | Unique token DKIM tokens | [optional] [default to []]
**domain** | **String** | Custom domain name | [optional] [default to null]
**domainNameRecords** | [**List&lt;DomainNameRecord&gt;**](DomainNameRecord.md) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] [default to []]
**id** | **String** |  | [default to null]
**isVerified** | **bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**userId** | **String** |  | [default to null]
**verificationToken** | **String** | Verification tokens | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


