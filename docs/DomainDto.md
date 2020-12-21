# mailslurp.model.DomainDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**dkimTokens** | **List&lt;String&gt;** | DNS records for DKIM approval | [optional] [default to []]
**domain** | **String** | Custom domain name | [optional] [default to null]
**id** | **String** |  | [default to null]
**isVerified** | **bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**userId** | **String** |  | [default to null]
**verificationToken** | **String** | A TXT record that you must place in the DNS settings of the domain to complete domain verification | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


