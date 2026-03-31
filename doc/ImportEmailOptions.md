# mailslurp.model.ImportEmailOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rawEmailBase64** | **String** | Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an `.eml` file. | 
**externalId** | **String** | Optional external identifier for the imported email source. Useful for correlating imports back to another system. | [optional] 
**runPipeline** | **bool** | When true the normal inbound receive pipeline runs after persistence, including automations, webhooks, transformers, forwarders, repliers, and related fanout. When false the email is stored only. | [optional] [default to false]
**overrideMessageId** | **bool** | When true MailSlurp rewrites the MIME `Message-ID` header before storing and parsing the email so imported messages do not collide with existing message identities. | [optional] [default to true]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


