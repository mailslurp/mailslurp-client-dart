# mailslurp.model.CreatePublicSpamTestOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromEmail** | **String** | Optional sender email address. If provided, MailSlurp will also derive senderDomain for compatibility with inbox placement service versions that still expect it. | [optional] 
**senderDomain** | **String** | Optional sender domain. If omitted and fromEmail is provided, MailSlurp derives it automatically. | [optional] 
**requestedSegment** | **String** | Requested seed cohort for the placement test. | 
**addressFormat** | **String** | Address export format for the returned seed addresses. | 
**captchaToken** | **String** | Optional captcha token when captcha protection is enabled. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


