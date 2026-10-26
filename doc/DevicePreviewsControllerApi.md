# mailslurp.api.DevicePreviewsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDevicePreviewRun**](DevicePreviewsControllerApi#canceldevicepreviewrun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**createDevicePreviewFeedback**](DevicePreviewsControllerApi#createdevicepreviewfeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**createDevicePreviewFolder**](DevicePreviewsControllerApi#createdevicepreviewfolder) | **POST** /emails/device-previews/folders | Create a device preview folder
[**createDevicePreviewImportAddress**](DevicePreviewsControllerApi#createdevicepreviewimportaddress) | **POST** /emails/device-previews/import-addresses | Create a temporary email address for device preview import
[**createDevicePreviewProfile**](DevicePreviewsControllerApi#createdevicepreviewprofile) | **POST** /emails/device-previews/profiles | Create a device preview profile
[**createDevicePreviewRun**](DevicePreviewsControllerApi#createdevicepreviewrun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**createDevicePreviewRunFromFile**](DevicePreviewsControllerApi#createdevicepreviewrunfromfile) | **POST** /emails/device-previews/import/file | Create a device preview run from an HTML, EML, or ZIP file
[**createDevicePreviewRunFromHtmlImport**](DevicePreviewsControllerApi#createdevicepreviewrunfromhtmlimport) | **POST** /emails/device-previews/import/html | Create a device preview run from HTML
[**createDevicePreviewRunFromImport**](DevicePreviewsControllerApi#createdevicepreviewrunfromimport) | **POST** /emails/device-previews/import | Create a device preview run from imported raw MIME
[**createDevicePreviewRunFromMultipartImport**](DevicePreviewsControllerApi#createdevicepreviewrunfrommultipartimport) | **POST** /emails/device-previews/import/multipart | Create a device preview run from multipart EML upload
[**createDevicePreviewRunFromRawImport**](DevicePreviewsControllerApi#createdevicepreviewrunfromrawimport) | **POST** /emails/device-previews/import/raw | Create a device preview run from raw MIME bytes
[**createDevicePreviewShareLink**](DevicePreviewsControllerApi#createdevicepreviewsharelink) | **POST** /emails/device-previews/{runId}/share-links | Create a share link for a device preview run
[**deleteDevicePreviewFolder**](DevicePreviewsControllerApi#deletedevicepreviewfolder) | **DELETE** /emails/device-previews/folders/{folderId} | Delete a folder, preserving renders and child folders
[**deleteDevicePreviewProfile**](DevicePreviewsControllerApi#deletedevicepreviewprofile) | **DELETE** /emails/device-previews/profiles/{profileId} | Delete a device preview profile
[**deleteDevicePreviewRun**](DevicePreviewsControllerApi#deletedevicepreviewrun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**deleteDevicePreviewShareLink**](DevicePreviewsControllerApi#deletedevicepreviewsharelink) | **DELETE** /emails/device-previews/share-links/{shareLinkId} | Revoke a device preview share link
[**downloadDevicePreviewEmailSubmissionSourceEmail**](DevicePreviewsControllerApi#downloaddevicepreviewemailsubmissionsourceemail) | **GET** /emails/device-previews/email-submissions/{submissionId}/source-email/raw | Download the original RFC822 email for a device preview submission
[**downloadDevicePreviewRunSourceEmail**](DevicePreviewsControllerApi#downloaddevicepreviewrunsourceemail) | **GET** /emails/device-previews/{runId}/source-email/raw | Download the original RFC822 email for a device preview run
[**ensureDevicePreviewRun**](DevicePreviewsControllerApi#ensuredevicepreviewrun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**getDevicePreviewEmailDomainOrCreate**](DevicePreviewsControllerApi#getdevicepreviewemaildomainorcreate) | **PUT** /emails/device-previews/email-domain | Return account device preview email domain setup or create one
[**getDevicePreviewEmailRuns**](DevicePreviewsControllerApi#getdevicepreviewemailruns) | **GET** /emails/device-previews/email-runs | List device preview runs created from account email domains
[**getDevicePreviewEmailSubmissionSourceEmail**](DevicePreviewsControllerApi#getdevicepreviewemailsubmissionsourceemail) | **GET** /emails/device-previews/email-submissions/{submissionId}/source-email | Get the original email content for a device preview submission
[**getDevicePreviewEmailSubmissions**](DevicePreviewsControllerApi#getdevicepreviewemailsubmissions) | **GET** /emails/device-previews/email-submissions | List received device preview email submissions
[**getDevicePreviewFeedback**](DevicePreviewsControllerApi#getdevicepreviewfeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**getDevicePreviewFeedbackItems**](DevicePreviewsControllerApi#getdevicepreviewfeedbackitems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**getDevicePreviewFolder**](DevicePreviewsControllerApi#getdevicepreviewfolder) | **GET** /emails/device-previews/folders/{folderId} | Get a device preview folder
[**getDevicePreviewFolders**](DevicePreviewsControllerApi#getdevicepreviewfolders) | **GET** /emails/device-previews/folders | List device preview folders
[**getDevicePreviewImportAddress**](DevicePreviewsControllerApi#getdevicepreviewimportaddress) | **GET** /emails/device-previews/import-addresses/{sessionId} | Get temporary device preview import address status
[**getDevicePreviewNativeTargetAvailability**](DevicePreviewsControllerApi#getdevicepreviewnativetargetavailability) | **GET** /emails/device-previews/native-targets/availability | Get native device preview target availability
[**getDevicePreviewProfile**](DevicePreviewsControllerApi#getdevicepreviewprofile) | **GET** /emails/device-previews/profiles/{profileId} | Get a device preview profile
[**getDevicePreviewProfiles**](DevicePreviewsControllerApi#getdevicepreviewprofiles) | **GET** /emails/device-previews/profiles | List device preview profiles
[**getDevicePreviewRun**](DevicePreviewsControllerApi#getdevicepreviewrun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**getDevicePreviewRunProviderProgress**](DevicePreviewsControllerApi#getdevicepreviewrunproviderprogress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**getDevicePreviewRunResults**](DevicePreviewsControllerApi#getdevicepreviewrunresults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**getDevicePreviewRunScreenshot**](DevicePreviewsControllerApi#getdevicepreviewrunscreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a device preview screenshot image
[**getDevicePreviewRunSourceEmail**](DevicePreviewsControllerApi#getdevicepreviewrunsourceemail) | **GET** /emails/device-previews/{runId}/source-email | Get the original email content for a device preview run
[**getDevicePreviewRuns**](DevicePreviewsControllerApi#getdevicepreviewruns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**getDevicePreviewRunsForAccount**](DevicePreviewsControllerApi#getdevicepreviewrunsforaccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**getDevicePreviewRunsForAccountOffsetPaginated**](DevicePreviewsControllerApi#getdevicepreviewrunsforaccountoffsetpaginated) | **GET** /emails/device-previews/offset-paginated | List previous device preview runs for account in paginated form
[**getDevicePreviewRunsOffsetPaginated**](DevicePreviewsControllerApi#getdevicepreviewrunsoffsetpaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**getDevicePreviewShareLinks**](DevicePreviewsControllerApi#getdevicepreviewsharelinks) | **GET** /emails/device-previews/{runId}/share-links | List share links for a device preview run
[**getDevicePreviewSharedResult**](DevicePreviewsControllerApi#getdevicepreviewsharedresult) | **GET** /emails/device-previews/share/{shareToken} | Get a public shared device preview result
[**getDevicePreviewSharedResultScreenshot**](DevicePreviewsControllerApi#getdevicepreviewsharedresultscreenshot) | **GET** /emails/device-previews/share/{shareToken}/screenshots/{screenshotId}/image | Get a public shared device preview screenshot image
[**getDevicePreviewTargets**](DevicePreviewsControllerApi#getdevicepreviewtargets) | **GET** /device-preview-targets | List device preview targets
[**moveDevicePreviewRuns**](DevicePreviewsControllerApi#movedevicepreviewruns) | **PUT** /emails/device-previews/folders/runs | Move device preview runs to a folder or Unfiled
[**rerunDevicePreviewTargets**](DevicePreviewsControllerApi#rerundevicepreviewtargets) | **POST** /emails/device-previews/{runId}/targets/rerun | Rerun selected device preview targets in the same run
[**updateDevicePreviewEmailDomainSubdomain**](DevicePreviewsControllerApi#updatedevicepreviewemaildomainsubdomain) | **PUT** /emails/device-previews/email-domain/subdomain | Update account device preview email subdomain
[**updateDevicePreviewFeedback**](DevicePreviewsControllerApi#updatedevicepreviewfeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback
[**updateDevicePreviewFolder**](DevicePreviewsControllerApi#updatedevicepreviewfolder) | **PUT** /emails/device-previews/folders/{folderId} | Rename or move a device preview folder
[**updateDevicePreviewProfile**](DevicePreviewsControllerApi#updatedevicepreviewprofile) | **PUT** /emails/device-previews/profiles/{profileId} | Update a device preview profile
[**waitForDevicePreviewEmailRuns**](DevicePreviewsControllerApi#waitfordevicepreviewemailruns) | **GET** /emails/device-previews/email-runs/wait | Wait for device preview runs created from account email domains
[**waitForDevicePreviewEmailSubmissions**](DevicePreviewsControllerApi#waitfordevicepreviewemailsubmissions) | **GET** /emails/device-previews/email-submissions/wait | Wait for received device preview email submissions
[**waitForDevicePreviewRun**](DevicePreviewsControllerApi#waitfordevicepreviewrun) | **GET** /emails/device-previews/{runId}/wait | Wait for device preview run to complete


# **cancelDevicePreviewRun**
> CancelDevicePreviewRunResult cancelDevicePreviewRun(runId, cancelDevicePreviewRunOptions)

Cancel a running device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final cancelDevicePreviewRunOptions = CancelDevicePreviewRunOptions(); // CancelDevicePreviewRunOptions | 

try {
    final result = api_instance.cancelDevicePreviewRun(runId, cancelDevicePreviewRunOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->cancelDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **cancelDevicePreviewRunOptions** | [**CancelDevicePreviewRunOptions**](CancelDevicePreviewRunOptions)|  | [optional] 

### Return type

[**CancelDevicePreviewRunResult**](CancelDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewFeedback**
> DevicePreviewFeedbackDto createDevicePreviewFeedback(createDevicePreviewFeedbackOptions)

Create device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewFeedbackOptions = CreateDevicePreviewFeedbackOptions(); // CreateDevicePreviewFeedbackOptions | 

try {
    final result = api_instance.createDevicePreviewFeedback(createDevicePreviewFeedbackOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewFeedbackOptions** | [**CreateDevicePreviewFeedbackOptions**](CreateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewFolder**
> DevicePreviewFolderDto createDevicePreviewFolder(createDevicePreviewFolderOptions)

Create a device preview folder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewFolderOptions = CreateDevicePreviewFolderOptions(); // CreateDevicePreviewFolderOptions | 

try {
    final result = api_instance.createDevicePreviewFolder(createDevicePreviewFolderOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewFolderOptions** | [**CreateDevicePreviewFolderOptions**](CreateDevicePreviewFolderOptions)|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewImportAddress**
> DevicePreviewIngestAddressDto createDevicePreviewImportAddress(createDevicePreviewIngestAddressOptions)

Create a temporary email address for device preview import

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewIngestAddressOptions = CreateDevicePreviewIngestAddressOptions(); // CreateDevicePreviewIngestAddressOptions | 

try {
    final result = api_instance.createDevicePreviewImportAddress(createDevicePreviewIngestAddressOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewImportAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewIngestAddressOptions** | [**CreateDevicePreviewIngestAddressOptions**](CreateDevicePreviewIngestAddressOptions)|  | [optional] 

### Return type

[**DevicePreviewIngestAddressDto**](DevicePreviewIngestAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewProfile**
> DevicePreviewProfileDto createDevicePreviewProfile(createDevicePreviewProfileOptions)

Create a device preview profile

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewProfileOptions = CreateDevicePreviewProfileOptions(); // CreateDevicePreviewProfileOptions | 

try {
    final result = api_instance.createDevicePreviewProfile(createDevicePreviewProfileOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewProfileOptions** | [**CreateDevicePreviewProfileOptions**](CreateDevicePreviewProfileOptions)|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRun**
> CreateDevicePreviewRunResult createDevicePreviewRun(emailId, createDevicePreviewOptions)

Create a new device preview run for an email

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDevicePreviewOptions = CreateDevicePreviewOptions(); // CreateDevicePreviewOptions | 

try {
    final result = api_instance.createDevicePreviewRun(emailId, createDevicePreviewOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRunFromFile**
> CreateDevicePreviewRunResult createDevicePreviewRunFromFile(file, subject, from, to, sourceAlias, externalId, providers, allTargets, targets, emailAudit, domainMonitor, senderDomain, folderId)

Create a device preview run from an HTML, EML, or ZIP file

Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final file = BINARY_DATA_HERE; // MultipartFile | An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file.
final subject = subject_example; // String | 
final from = from_example; // String | 
final to = to_example; // String | 
final sourceAlias = sourceAlias_example; // String | 
final externalId = externalId_example; // String | 
final providers = []; // List<String> | Legacy web-provider keys to render.
final allTargets = true; // bool | Render every currently configured target.
final targets = []; // List<String> | Device preview target keys to render.
final emailAudit = true; // bool | 
final domainMonitor = true; // bool | 
final senderDomain = senderDomain_example; // String | 
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.createDevicePreviewRunFromFile(file, subject, from, to, sourceAlias, externalId, providers, allTargets, targets, emailAudit, domainMonitor, senderDomain, folderId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRunFromFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file. | 
 **subject** | **String**|  | [optional] 
 **from** | **String**|  | [optional] 
 **to** | **String**|  | [optional] 
 **sourceAlias** | **String**|  | [optional] 
 **externalId** | **String**|  | [optional] 
 **providers** | [**List<String>**](String)| Legacy web-provider keys to render. | [optional] [default to const []]
 **allTargets** | **bool**| Render every currently configured target. | [optional] 
 **targets** | [**List<String>**](String)| Device preview target keys to render. | [optional] [default to const []]
 **emailAudit** | **bool**|  | [optional] 
 **domainMonitor** | **bool**|  | [optional] 
 **senderDomain** | **String**|  | [optional] 
 **folderId** | **String**|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRunFromHtmlImport**
> CreateDevicePreviewRunResult createDevicePreviewRunFromHtmlImport(createDevicePreviewHtmlImportOptions)

Create a device preview run from HTML

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewHtmlImportOptions = CreateDevicePreviewHtmlImportOptions(); // CreateDevicePreviewHtmlImportOptions | 

try {
    final result = api_instance.createDevicePreviewRunFromHtmlImport(createDevicePreviewHtmlImportOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRunFromHtmlImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewHtmlImportOptions** | [**CreateDevicePreviewHtmlImportOptions**](CreateDevicePreviewHtmlImportOptions)|  | 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRunFromImport**
> CreateDevicePreviewRunResult createDevicePreviewRunFromImport(createDevicePreviewImportOptions)

Create a device preview run from imported raw MIME

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewImportOptions = CreateDevicePreviewImportOptions(); // CreateDevicePreviewImportOptions | 

try {
    final result = api_instance.createDevicePreviewRunFromImport(createDevicePreviewImportOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRunFromImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewImportOptions** | [**CreateDevicePreviewImportOptions**](CreateDevicePreviewImportOptions)|  | 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRunFromMultipartImport**
> CreateDevicePreviewRunResult createDevicePreviewRunFromMultipartImport(file, sourceAlias, externalId, allTargets, targets, folderId)

Create a device preview run from multipart EML upload

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final file = BINARY_DATA_HERE; // MultipartFile | 
final sourceAlias = sourceAlias_example; // String | 
final externalId = externalId_example; // String | 
final allTargets = true; // bool | Render every currently configured target.
final targets = []; // List<String> | Device preview target keys to render.
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.createDevicePreviewRunFromMultipartImport(file, sourceAlias, externalId, allTargets, targets, folderId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRunFromMultipartImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 
 **sourceAlias** | **String**|  | [optional] 
 **externalId** | **String**|  | [optional] 
 **allTargets** | **bool**| Render every currently configured target. | [optional] 
 **targets** | [**List<String>**](String)| Device preview target keys to render. | [optional] [default to const []]
 **folderId** | **String**|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRunFromRawImport**
> CreateDevicePreviewRunResult createDevicePreviewRunFromRawImport(sourceAlias, externalId, allTargets, targets, folderId)

Create a device preview run from raw MIME bytes

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final sourceAlias = sourceAlias_example; // String | 
final externalId = externalId_example; // String | 
final allTargets = true; // bool | Render every currently configured target.
final targets = []; // List<String> | Device preview target keys to render.
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.createDevicePreviewRunFromRawImport(sourceAlias, externalId, allTargets, targets, folderId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRunFromRawImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAlias** | **String**|  | [optional] 
 **externalId** | **String**|  | [optional] 
 **allTargets** | **bool**| Render every currently configured target. | [optional] 
 **targets** | [**List<String>**](String)| Device preview target keys to render. | [optional] [default to const []]
 **folderId** | **String**|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewShareLink**
> DevicePreviewShareLinkDto createDevicePreviewShareLink(runId, createDevicePreviewShareLinkOptions)

Create a share link for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDevicePreviewShareLinkOptions = CreateDevicePreviewShareLinkOptions(); // CreateDevicePreviewShareLinkOptions | 

try {
    final result = api_instance.createDevicePreviewShareLink(runId, createDevicePreviewShareLinkOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewShareLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **createDevicePreviewShareLinkOptions** | [**CreateDevicePreviewShareLinkOptions**](CreateDevicePreviewShareLinkOptions)|  | [optional] 

### Return type

[**DevicePreviewShareLinkDto**](DevicePreviewShareLinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewFolder**
> DeleteDevicePreviewFolderResult deleteDevicePreviewFolder(folderId)

Delete a folder, preserving renders and child folders

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDevicePreviewFolder(folderId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->deleteDevicePreviewFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**|  | 

### Return type

[**DeleteDevicePreviewFolderResult**](DeleteDevicePreviewFolderResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewProfile**
> DeleteDevicePreviewProfileResult deleteDevicePreviewProfile(profileId)

Delete a device preview profile

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDevicePreviewProfile(profileId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->deleteDevicePreviewProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**|  | 

### Return type

[**DeleteDevicePreviewProfileResult**](DeleteDevicePreviewProfileResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewRun**
> DeleteDevicePreviewRunResult deleteDevicePreviewRun(runId)

Delete local device preview run data

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDevicePreviewRun(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->deleteDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DeleteDevicePreviewRunResult**](DeleteDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewShareLink**
> DeleteDevicePreviewShareLinkResult deleteDevicePreviewShareLink(shareLinkId)

Revoke a device preview share link

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final shareLinkId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDevicePreviewShareLink(shareLinkId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->deleteDevicePreviewShareLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareLinkId** | **String**|  | 

### Return type

[**DeleteDevicePreviewShareLinkResult**](DeleteDevicePreviewShareLinkResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadDevicePreviewEmailSubmissionSourceEmail**
> MultipartFile downloadDevicePreviewEmailSubmissionSourceEmail(submissionId)

Download the original RFC822 email for a device preview submission

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final submissionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.downloadDevicePreviewEmailSubmissionSourceEmail(submissionId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->downloadDevicePreviewEmailSubmissionSourceEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: message/rfc822

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadDevicePreviewRunSourceEmail**
> MultipartFile downloadDevicePreviewRunSourceEmail(runId)

Download the original RFC822 email for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.downloadDevicePreviewRunSourceEmail(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->downloadDevicePreviewRunSourceEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: message/rfc822

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **ensureDevicePreviewRun**
> CreateDevicePreviewRunResult ensureDevicePreviewRun(emailId, createDevicePreviewOptions)

Return active run for email or create one when none exists

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDevicePreviewOptions = CreateDevicePreviewOptions(); // CreateDevicePreviewOptions | 

try {
    final result = api_instance.ensureDevicePreviewRun(emailId, createDevicePreviewOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->ensureDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewEmailDomainOrCreate**
> DevicePreviewAccountSettingsDto getDevicePreviewEmailDomainOrCreate()

Return account device preview email domain setup or create one

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();

try {
    final result = api_instance.getDevicePreviewEmailDomainOrCreate();
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewEmailDomainOrCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewAccountSettingsDto**](DevicePreviewAccountSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewEmailRuns**
> List<DevicePreviewRunDto> getDevicePreviewEmailRuns(since, emailDomainId, profileId, localPart, limit, hydrateThumbnail)

List device preview runs created from account email domains

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final emailDomainId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final localPart = localPart_example; // String | 
final limit = 56; // int | 
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.

try {
    final result = api_instance.getDevicePreviewEmailRuns(since, emailDomainId, profileId, localPart, limit, hydrateThumbnail);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewEmailRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | 
 **emailDomainId** | **String**|  | [optional] 
 **profileId** | **String**|  | [optional] 
 **localPart** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 20]
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]

### Return type

[**List<DevicePreviewRunDto>**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewEmailSubmissionSourceEmail**
> DevicePreviewSourceEmailDto getDevicePreviewEmailSubmissionSourceEmail(submissionId)

Get the original email content for a device preview submission

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final submissionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewEmailSubmissionSourceEmail(submissionId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewEmailSubmissionSourceEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  | 

### Return type

[**DevicePreviewSourceEmailDto**](DevicePreviewSourceEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewEmailSubmissions**
> List<DevicePreviewEmailSubmissionDto> getDevicePreviewEmailSubmissions(since, emailDomainId, profileId, localPart, limit, recipientEmailAddress)

List received device preview email submissions

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final emailDomainId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final localPart = localPart_example; // String | 
final limit = 56; // int | 
final recipientEmailAddress = recipientEmailAddress_example; // String | 

try {
    final result = api_instance.getDevicePreviewEmailSubmissions(since, emailDomainId, profileId, localPart, limit, recipientEmailAddress);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewEmailSubmissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | 
 **emailDomainId** | **String**|  | [optional] 
 **profileId** | **String**|  | [optional] 
 **localPart** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 20]
 **recipientEmailAddress** | **String**|  | [optional] 

### Return type

[**List<DevicePreviewEmailSubmissionDto>**](DevicePreviewEmailSubmissionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedback**
> DevicePreviewFeedbackDto getDevicePreviewFeedback(feedbackId)

Get a single device preview feedback item

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final feedbackId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewFeedback(feedbackId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | **String**|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedbackItems**
> DevicePreviewFeedbackListDto getDevicePreviewFeedbackItems(page, size, source_, runId, status, provider, category, search)

List device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final page = 56; // int | 
final size = 56; // int | 
final source_ = source__example; // String | 
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final status = status_example; // String | 
final provider = provider_example; // String | 
final category = category_example; // String | 
final search = search_example; // String | 

try {
    final result = api_instance.getDevicePreviewFeedbackItems(page, size, source_, runId, status, provider, category, search);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFeedbackItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] 
 **size** | **int**|  | [optional] 
 **source_** | **String**|  | [optional] 
 **runId** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **provider** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 

### Return type

[**DevicePreviewFeedbackListDto**](DevicePreviewFeedbackListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFolder**
> DevicePreviewFolderDto getDevicePreviewFolder(folderId)

Get a device preview folder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewFolder(folderId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFolders**
> List<DevicePreviewFolderDto> getDevicePreviewFolders()

List device preview folders

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();

try {
    final result = api_instance.getDevicePreviewFolders();
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFolders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DevicePreviewFolderDto>**](DevicePreviewFolderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewImportAddress**
> DevicePreviewIngestAddressDto getDevicePreviewImportAddress(sessionId)

Get temporary device preview import address status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final sessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewImportAddress(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewImportAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 

### Return type

[**DevicePreviewIngestAddressDto**](DevicePreviewIngestAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewNativeTargetAvailability**
> DevicePreviewNativeTargetAvailabilityListDto getDevicePreviewNativeTargetAvailability()

Get native device preview target availability

Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();

try {
    final result = api_instance.getDevicePreviewNativeTargetAvailability();
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewNativeTargetAvailability: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewNativeTargetAvailabilityListDto**](DevicePreviewNativeTargetAvailabilityListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewProfile**
> DevicePreviewProfileDto getDevicePreviewProfile(profileId)

Get a device preview profile

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewProfile(profileId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewProfiles**
> List<DevicePreviewProfileDto> getDevicePreviewProfiles()

List device preview profiles

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();

try {
    final result = api_instance.getDevicePreviewProfiles();
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewProfiles: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DevicePreviewProfileDto>**](DevicePreviewProfileDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRun**
> DevicePreviewRunDto getDevicePreviewRun(runId)

Get device preview run status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRun(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DevicePreviewRunDto**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunProviderProgress**
> DevicePreviewProviderProgressDto getDevicePreviewRunProviderProgress(runId, provider)

Get provider-level progress for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final provider = provider_example; // String | 

try {
    final result = api_instance.getDevicePreviewRunProviderProgress(runId, provider);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunProviderProgress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **provider** | **String**|  | 

### Return type

[**DevicePreviewProviderProgressDto**](DevicePreviewProviderProgressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunResults**
> DevicePreviewRunResultsDto getDevicePreviewRunResults(runId)

Get device preview run results

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunResults(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunScreenshot**
> String getDevicePreviewRunScreenshot(runId, screenshotId)

Get a device preview screenshot image

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final screenshotId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunScreenshot(runId, screenshotId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunScreenshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **screenshotId** | **String**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunSourceEmail**
> DevicePreviewSourceEmailDto getDevicePreviewRunSourceEmail(runId)

Get the original email content for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunSourceEmail(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunSourceEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DevicePreviewSourceEmailDto**](DevicePreviewSourceEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRuns**
> List<DevicePreviewRunDto> getDevicePreviewRuns(emailId, limit, hydrateThumbnail)

List previous device preview runs for an email

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final limit = 56; // int | 
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.

try {
    final result = api_instance.getDevicePreviewRuns(emailId, limit, hydrateThumbnail);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 50]
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]

### Return type

[**List<DevicePreviewRunDto>**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsForAccount**
> List<DevicePreviewRunDto> getDevicePreviewRunsForAccount(limit, hydrateThumbnail)

List previous device preview runs for account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final limit = 56; // int | 
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.

try {
    final result = api_instance.getDevicePreviewRunsForAccount(limit, hydrateThumbnail);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunsForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]

### Return type

[**List<DevicePreviewRunDto>**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsForAccountOffsetPaginated**
> PageDevicePreviewRunProjection getDevicePreviewRunsForAccountOffsetPaginated(page, size, sort, hydrateThumbnail, folderId, unfiledOnly, emailId)

List previous device preview runs for account in paginated form

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final unfiledOnly = true; // bool | 
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunsForAccountOffsetPaginated(page, size, sort, hydrateThumbnail, folderId, unfiledOnly, emailId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunsForAccountOffsetPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]
 **folderId** | **String**|  | [optional] 
 **unfiledOnly** | **bool**|  | [optional] [default to false]
 **emailId** | **String**|  | [optional] 

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsOffsetPaginated**
> PageDevicePreviewRunProjection getDevicePreviewRunsOffsetPaginated(emailId, page, size, sort, hydrateThumbnail)

List previous device preview runs for an email in paginated form

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.

try {
    final result = api_instance.getDevicePreviewRunsOffsetPaginated(emailId, page, size, sort, hydrateThumbnail);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunsOffsetPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewShareLinks**
> List<DevicePreviewShareLinkDto> getDevicePreviewShareLinks(runId)

List share links for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewShareLinks(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewShareLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**List<DevicePreviewShareLinkDto>**](DevicePreviewShareLinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewSharedResult**
> DevicePreviewSharedResultDto getDevicePreviewSharedResult(shareToken)

Get a public shared device preview result

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final shareToken = shareToken_example; // String | 

try {
    final result = api_instance.getDevicePreviewSharedResult(shareToken);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewSharedResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareToken** | **String**|  | 

### Return type

[**DevicePreviewSharedResultDto**](DevicePreviewSharedResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewSharedResultScreenshot**
> String getDevicePreviewSharedResultScreenshot(shareToken, screenshotId)

Get a public shared device preview screenshot image

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final shareToken = shareToken_example; // String | 
final screenshotId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewSharedResultScreenshot(shareToken, screenshotId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewSharedResultScreenshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareToken** | **String**|  | 
 **screenshotId** | **String**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewTargets**
> DevicePreviewNativeTargetListDto getDevicePreviewTargets()

List device preview targets

Returns visible native device preview target metadata without worker availability, queue, or health fields.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();

try {
    final result = api_instance.getDevicePreviewTargets();
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewTargets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewNativeTargetListDto**](DevicePreviewNativeTargetListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **moveDevicePreviewRuns**
> MoveDevicePreviewRunsResult moveDevicePreviewRuns(moveDevicePreviewRunsOptions)

Move device preview runs to a folder or Unfiled

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final moveDevicePreviewRunsOptions = MoveDevicePreviewRunsOptions(); // MoveDevicePreviewRunsOptions | 

try {
    final result = api_instance.moveDevicePreviewRuns(moveDevicePreviewRunsOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->moveDevicePreviewRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moveDevicePreviewRunsOptions** | [**MoveDevicePreviewRunsOptions**](MoveDevicePreviewRunsOptions)|  | 

### Return type

[**MoveDevicePreviewRunsResult**](MoveDevicePreviewRunsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **rerunDevicePreviewTargets**
> RerunDevicePreviewTargetsResult rerunDevicePreviewTargets(runId, rerunDevicePreviewTargetsOptions)

Rerun selected device preview targets in the same run

Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final rerunDevicePreviewTargetsOptions = RerunDevicePreviewTargetsOptions(); // RerunDevicePreviewTargetsOptions | 

try {
    final result = api_instance.rerunDevicePreviewTargets(runId, rerunDevicePreviewTargetsOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->rerunDevicePreviewTargets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **rerunDevicePreviewTargetsOptions** | [**RerunDevicePreviewTargetsOptions**](RerunDevicePreviewTargetsOptions)|  | 

### Return type

[**RerunDevicePreviewTargetsResult**](RerunDevicePreviewTargetsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewEmailDomainSubdomain**
> DevicePreviewAccountSettingsDto updateDevicePreviewEmailDomainSubdomain(updateDevicePreviewIngestDomainOptions)

Update account device preview email subdomain

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final updateDevicePreviewIngestDomainOptions = UpdateDevicePreviewIngestDomainOptions(); // UpdateDevicePreviewIngestDomainOptions | 

try {
    final result = api_instance.updateDevicePreviewEmailDomainSubdomain(updateDevicePreviewIngestDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->updateDevicePreviewEmailDomainSubdomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateDevicePreviewIngestDomainOptions** | [**UpdateDevicePreviewIngestDomainOptions**](UpdateDevicePreviewIngestDomainOptions)|  | 

### Return type

[**DevicePreviewAccountSettingsDto**](DevicePreviewAccountSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewFeedback**
> DevicePreviewFeedbackDto updateDevicePreviewFeedback(feedbackId, updateDevicePreviewFeedbackOptions)

Update device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final feedbackId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDevicePreviewFeedbackOptions = UpdateDevicePreviewFeedbackOptions(); // UpdateDevicePreviewFeedbackOptions | 

try {
    final result = api_instance.updateDevicePreviewFeedback(feedbackId, updateDevicePreviewFeedbackOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->updateDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | **String**|  | 
 **updateDevicePreviewFeedbackOptions** | [**UpdateDevicePreviewFeedbackOptions**](UpdateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewFolder**
> DevicePreviewFolderDto updateDevicePreviewFolder(folderId, updateDevicePreviewFolderOptions)

Rename or move a device preview folder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDevicePreviewFolderOptions = UpdateDevicePreviewFolderOptions(); // UpdateDevicePreviewFolderOptions | 

try {
    final result = api_instance.updateDevicePreviewFolder(folderId, updateDevicePreviewFolderOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->updateDevicePreviewFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**|  | 
 **updateDevicePreviewFolderOptions** | [**UpdateDevicePreviewFolderOptions**](UpdateDevicePreviewFolderOptions)|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewProfile**
> DevicePreviewProfileDto updateDevicePreviewProfile(profileId, updateDevicePreviewProfileOptions)

Update a device preview profile

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDevicePreviewProfileOptions = UpdateDevicePreviewProfileOptions(); // UpdateDevicePreviewProfileOptions | 

try {
    final result = api_instance.updateDevicePreviewProfile(profileId, updateDevicePreviewProfileOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->updateDevicePreviewProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**|  | 
 **updateDevicePreviewProfileOptions** | [**UpdateDevicePreviewProfileOptions**](UpdateDevicePreviewProfileOptions)|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForDevicePreviewEmailRuns**
> DevicePreviewIngestRunWaitResult waitForDevicePreviewEmailRuns(since, emailDomainId, profileId, localPart, limit, timeoutMillis, pollIntervalMillis, hydrateThumbnail)

Wait for device preview runs created from account email domains

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final emailDomainId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final localPart = localPart_example; // String | 
final limit = 56; // int | 
final timeoutMillis = 789; // int | 
final pollIntervalMillis = 789; // int | 
final hydrateThumbnail = true; // bool | Hydrate each returned run with a nullable primary screenshot thumbnail URL.

try {
    final result = api_instance.waitForDevicePreviewEmailRuns(since, emailDomainId, profileId, localPart, limit, timeoutMillis, pollIntervalMillis, hydrateThumbnail);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->waitForDevicePreviewEmailRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | 
 **emailDomainId** | **String**|  | [optional] 
 **profileId** | **String**|  | [optional] 
 **localPart** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 20]
 **timeoutMillis** | **int**|  | [optional] [default to 25000]
 **pollIntervalMillis** | **int**|  | [optional] [default to 1000]
 **hydrateThumbnail** | **bool**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to false]

### Return type

[**DevicePreviewIngestRunWaitResult**](DevicePreviewIngestRunWaitResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForDevicePreviewEmailSubmissions**
> DevicePreviewEmailSubmissionWaitResult waitForDevicePreviewEmailSubmissions(since, emailDomainId, profileId, localPart, limit, timeoutMillis, pollIntervalMillis, recipientEmailAddress)

Wait for received device preview email submissions

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final emailDomainId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final profileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final localPart = localPart_example; // String | 
final limit = 56; // int | 
final timeoutMillis = 789; // int | 
final pollIntervalMillis = 789; // int | 
final recipientEmailAddress = recipientEmailAddress_example; // String | 

try {
    final result = api_instance.waitForDevicePreviewEmailSubmissions(since, emailDomainId, profileId, localPart, limit, timeoutMillis, pollIntervalMillis, recipientEmailAddress);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->waitForDevicePreviewEmailSubmissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | 
 **emailDomainId** | **String**|  | [optional] 
 **profileId** | **String**|  | [optional] 
 **localPart** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 20]
 **timeoutMillis** | **int**|  | [optional] [default to 25000]
 **pollIntervalMillis** | **int**|  | [optional] [default to 1000]
 **recipientEmailAddress** | **String**|  | [optional] 

### Return type

[**DevicePreviewEmailSubmissionWaitResult**](DevicePreviewEmailSubmissionWaitResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForDevicePreviewRun**
> DevicePreviewRunWaitResult waitForDevicePreviewRun(runId, timeoutMillis, pollIntervalMillis)

Wait for device preview run to complete

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final timeoutMillis = 789; // int | 
final pollIntervalMillis = 789; // int | 

try {
    final result = api_instance.waitForDevicePreviewRun(runId, timeoutMillis, pollIntervalMillis);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->waitForDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **timeoutMillis** | **int**|  | [optional] [default to 25000]
 **pollIntervalMillis** | **int**|  | [optional] [default to 1000]

### Return type

[**DevicePreviewRunWaitResult**](DevicePreviewRunWaitResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

