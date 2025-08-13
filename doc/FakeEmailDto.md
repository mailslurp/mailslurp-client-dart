# mailslurp.model.FakeEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**emailAddress** | **String** |  | 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**attachmentNames** | **List<String>** |  | [default to const []]
**subject** | **String** |  | [optional] 
**preview** | **String** |  | [optional] 
**body** | **String** | use read content endpoints instead | 
**seen** | **bool** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**contentType** | **String** |  | 
**bodyUrl** | **String** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


