# mailslurp.api.AttachmentControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllAttachments**](AttachmentControllerApi#deleteallattachments) | **DELETE** /attachments | Delete all attachments
[**deleteAttachment**](AttachmentControllerApi#deleteattachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**downloadAttachmentAsBase64Encoded**](AttachmentControllerApi#downloadattachmentasbase64encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**downloadAttachmentAsBytes**](AttachmentControllerApi#downloadattachmentasbytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
[**getAttachment**](AttachmentControllerApi#getattachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**getAttachmentInfo**](AttachmentControllerApi#getattachmentinfo) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**getAttachments**](AttachmentControllerApi#getattachments) | **GET** /attachments | Get email attachments
[**uploadAttachment**](AttachmentControllerApi#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadAttachmentBytes**](AttachmentControllerApi#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadMultipartForm**](AttachmentControllerApi#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **deleteAllAttachments**
> deleteAllAttachments()

Delete all attachments

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();

try {
    api_instance.deleteAllAttachments();
} catch (e) {
    print('Exception when calling AttachmentControllerApi->deleteAllAttachments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAttachment**
> deleteAttachment(attachmentId)

Delete an attachment

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    api_instance.deleteAttachment(attachmentId);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->deleteAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBase64Encoded**
> DownloadAttachmentDto downloadAttachmentAsBase64Encoded(attachmentId)

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.downloadAttachmentAsBase64Encoded(attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->downloadAttachmentAsBase64Encoded: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBytes**
> String downloadAttachmentAsBytes(attachmentId)

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.downloadAttachmentAsBytes(attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->downloadAttachmentAsBytes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachment**
> AttachmentEntity getAttachment(attachmentId)

Get an attachment entity

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.getAttachment(attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->getAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentEntity**](AttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentInfo**
> AttachmentMetaData getAttachmentInfo(attachmentId)

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.getAttachmentInfo(attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->getAttachmentInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments**
> PageAttachmentEntity getAttachments(page, size, sort, fileNameFilter, since, before, inboxId)

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final page = 56; // int | Optional page index for list pagination
final size = 56; // int | Optional page size for list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final fileNameFilter = fileNameFilter_example; // String | Optional file name and content type search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inboxId to filter attachments by

try {
    final result = api_instance.getAttachments(page, size, sort, fileNameFilter, since, before, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->getAttachments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **fileNameFilter** | **String**| Optional file name and content type search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inboxId** | **String**| Optional inboxId to filter attachments by | [optional] 

### Return type

[**PageAttachmentEntity**](PageAttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachment**
> List<String> uploadAttachment(uploadAttachmentOptions)

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final uploadAttachmentOptions = UploadAttachmentOptions(); // UploadAttachmentOptions | 

try {
    final result = api_instance.uploadAttachment(uploadAttachmentOptions);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->uploadAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadAttachmentOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions)|  | 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachmentBytes**
> List<String> uploadAttachmentBytes(contentType, contentType2, contentId, filename, filename2)

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final contentType = contentType_example; // String | 
final contentType2 = contentType_example; // String | Optional contentType for file. For instance `application/pdf`
final contentId = contentId_example; // String | Optional content ID (CID) to save upload with
final filename = filename_example; // String | Optional filename to save upload with
final filename2 = filename_example; // String | 

try {
    final result = api_instance.uploadAttachmentBytes(contentType, contentType2, contentId, filename, filename2);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->uploadAttachmentBytes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**|  | [optional] 
 **contentType2** | **String**| Optional contentType for file. For instance `application/pdf` | [optional] 
 **contentId** | **String**| Optional content ID (CID) to save upload with | [optional] 
 **filename** | **String**| Optional filename to save upload with | [optional] 
 **filename2** | **String**|  | [optional] 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadMultipartForm**
> List<String> uploadMultipartForm(contentId, contentType, filename, xFilename, uploadMultipartFormRequest)

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AttachmentControllerApi();
final contentId = contentId_example; // String | Optional content ID of attachment
final contentType = contentType_example; // String | Optional content type of attachment
final filename = filename_example; // String | Optional name of file
final xFilename = xFilename_example; // String | Optional content type header of attachment
final uploadMultipartFormRequest = UploadMultipartFormRequest(); // UploadMultipartFormRequest | 

try {
    final result = api_instance.uploadMultipartForm(contentId, contentType, filename, xFilename, uploadMultipartFormRequest);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentControllerApi->uploadMultipartForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentId** | **String**| Optional content ID of attachment | [optional] 
 **contentType** | **String**| Optional content type of attachment | [optional] 
 **filename** | **String**| Optional name of file | [optional] 
 **xFilename** | **String**| Optional content type header of attachment | [optional] 
 **uploadMultipartFormRequest** | [**UploadMultipartFormRequest**](UploadMultipartFormRequest)|  | [optional] 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

