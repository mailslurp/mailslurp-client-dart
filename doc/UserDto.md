# mailslurp.model.UserDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**apiKey** | **String** | Deprecate api key use entity instead | 
**emailAddress** | **String** |  | 
**emailAddressMd5** | **String** |  | 
**created** | [**DateTime**](DateTime) |  | [optional] 
**userType** | **String** |  | [optional] 
**organization** | **String** | Does user belong to an organization | [optional] 
**verified** | **String** | Has user accepted an organization invite | [optional] 
**hasPassword** | **bool** |  | 
**isFrozen** | **bool** |  | 
**frozenMessage** | **String** |  | [optional] 
**addNewContacts** | **bool** |  | [optional] 
**ssoProvider** | **String** |  | [optional] 
**customerId** | **String** |  | [optional] 
**hasOnboarded** | **bool** |  | [optional] 
**imapUsername** | **String** |  | [optional] 
**imapPassword** | **String** |  | [optional] 
**smtpUsername** | **String** |  | [optional] 
**smtpPassword** | **String** |  | [optional] 
**chargePending** | **bool** |  | [optional] 
**enableSms** | **bool** |  | [optional] 
**vendorEmailAddress** | **String** |  | [optional] 
**unsubscribed** | **bool** |  | [optional] 
**apiAccessToken** | [**TemporaryAccessKeyDto**](TemporaryAccessKeyDto) |  | [optional] 
**phoneNumber** | **String** |  | [optional] 
**verifiedPhone** | **String** | Has user accepted an organization invite | [optional] 
**accountRegion** | **String** | Default account region | [optional] 
**name** | **String** | User display name | [optional] 
**accessLinkSendResult** | [**AccessLinkSendResultDto**](AccessLinkSendResultDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


