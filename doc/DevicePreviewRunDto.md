# mailslurp.model.DevicePreviewRunDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **String** |  | 
**emailId** | **String** |  | [optional] 
**sourceType** | **String** |  | 
**sourceInboxId** | **String** |  | [optional] 
**sourceAlias** | **String** |  | [optional] 
**sourceExternalId** | **String** |  | [optional] 
**sourceFrom** | **String** |  | [optional] 
**sourceTo** | **List<String>** |  | [optional] [default to const []]
**sourceSubject** | **String** |  | [optional] 
**sourceMessageId** | **String** |  | [optional] 
**sourceSizeBytes** | **int** |  | [optional] 
**sourceStorageProvider** | **String** |  | [optional] 
**sourceStorageBucket** | **String** |  | [optional] 
**sourceStorageObjectKey** | **String** |  | [optional] 
**sourceStorageRegion** | **String** |  | [optional] 
**sourceStorageEndpoint** | **String** |  | [optional] 
**sourceStoragePublicBaseUrl** | **String** |  | [optional] 
**sourceRecipientEmailAddress** | **String** |  | [optional] 
**sourceRecipientLocalPart** | **String** |  | [optional] 
**sourceIngestDomainId** | **String** |  | [optional] 
**sourceProfileId** | **String** |  | [optional] 
**sourceProfileLocalPart** | **String** |  | [optional] 
**sourceProfileDisplayName** | **String** |  | [optional] 
**status** | **String** |  | 
**primaryScreenshotId** | **String** |  | [optional] 
**requestedProviders** | **List<String>** |  | [optional] [default to const []]
**importedProviders** | **List<String>** |  | [optional] [default to const []]
**warnings** | **List<String>** |  | [optional] [default to const []]
**providerMessageIds** | **Map<String, String>** |  | [optional] [default to const {}]
**latestError** | **String** | Latest run-level error, if the preview run was blocked or failed after creation. | [optional] 
**targetCount** | **int** |  | 
**screenshotCount** | **int** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 
**thumbnail** | [**DevicePreviewRunThumbnailDto**](DevicePreviewRunThumbnailDto) |  | [optional] 
**qaBundle** | [**DevicePreviewQaBundleDto**](DevicePreviewQaBundleDto) |  | [optional] 
**folderId** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


