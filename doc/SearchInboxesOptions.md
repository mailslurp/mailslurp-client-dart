# mailslurp.model.SearchInboxesOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pageIndex** | **int** | Optional page index in list pagination | [optional] 
**pageSize** | **int** | Optional page size in list pagination | [optional] 
**sortDirection** | **String** | Optional createdAt sort direction ASC or DESC | [optional] 
**favourite** | **bool** | Optionally filter results for favourites only | [optional] 
**search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
**tag** | **String** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
**since** | [**DateTime**](DateTime) | Optional filter by created after given date time | [optional] 
**before** | [**DateTime**](DateTime) | Optional filter by created before given date time | [optional] 
**inboxType** | **String** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**inboxFunction** | **String** | Optional filter by inbox function | [optional] 
**domainId** | **String** | Optional domain ID filter | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


