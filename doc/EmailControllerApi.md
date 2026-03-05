# mailslurp.api.EmailControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyImapFlagOperation**](EmailControllerApi#applyimapflagoperation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports '\\Seen' flag.
[**canSend**](EmailControllerApi#cansend) | **POST** /emails/can-send | Check whether an email send would be accepted
[**checkEmailBody**](EmailControllerApi#checkemailbody) | **POST** /emails/{emailId}/check-email-body | Check email body for broken links, images, and spelling issues
[**checkEmailBodyFeatureSupport**](EmailControllerApi#checkemailbodyfeaturesupport) | **POST** /emails/{emailId}/check-email-body-feature-support | Check client support for features used in a stored email body
[**checkEmailClientSupport**](EmailControllerApi#checkemailclientsupport) | **POST** /emails/check-email-client-support | Check email-client support for a provided HTML body
[**deleteAllEmails**](EmailControllerApi#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](EmailControllerApi#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerApi#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](EmailControllerApi#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
[**downloadBody**](EmailControllerApi#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as `plain/text` with content type header.
[**downloadBodyBytes**](EmailControllerApi#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as `octet-stream` with content type header.
[**forwardEmail**](EmailControllerApi#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](EmailControllerApi#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
[**getEmail**](EmailControllerApi#getemail) | **GET** /emails/{emailId} | Get hydrated email (headers and body)
[**getEmailAttachments**](EmailControllerApi#getemailattachments) | **GET** /emails/{emailId}/attachments | List attachment metadata for an email
[**getEmailCodes**](EmailControllerApi#getemailcodes) | **POST** /emails/{emailId}/codes | Extract verification codes from an email
[**getEmailContentMatch**](EmailControllerApi#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Run regex against hydrated email body and return matches
[**getEmailContentPart**](EmailControllerApi#getemailcontentpart) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**getEmailContentPartContent**](EmailControllerApi#getemailcontentpartcontent) | **GET** /emails/{emailId}/contentPart/raw | Get multipart content part as raw response
[**getEmailCount**](EmailControllerApi#getemailcount) | **GET** /emails/emails/count | Get email count
[**getEmailHTML**](EmailControllerApi#getemailhtml) | **GET** /emails/{emailId}/html | Get hydrated email HTML for browser rendering
[**getEmailHTMLJson**](EmailControllerApi#getemailhtmljson) | **GET** /emails/{emailId}/html/json | Get hydrated email HTML wrapped in JSON
[**getEmailHTMLQuery**](EmailControllerApi#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Query hydrated HTML body and return matching text lines
[**getEmailLinks**](EmailControllerApi#getemaillinks) | **GET** /emails/{emailId}/links | Extract links from an email HTML body
[**getEmailPreviewURLs**](EmailControllerApi#getemailpreviewurls) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**getEmailScreenshotAsBase64**](EmailControllerApi#getemailscreenshotasbase64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**getEmailScreenshotAsBinary**](EmailControllerApi#getemailscreenshotasbinary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**getEmailSignature**](EmailControllerApi#getemailsignature) | **GET** /emails/{emailId}/signature | Extract signature from an inbound email
[**getEmailSummary**](EmailControllerApi#getemailsummary) | **GET** /emails/{emailId}/summary | Get email summary (headers/metadata only)
[**getEmailTextLines**](EmailControllerApi#getemailtextlines) | **GET** /emails/{emailId}/textLines | Extract normalized text lines from email body
[**getEmailThread**](EmailControllerApi#getemailthread) | **GET** /emails/threads/{threadId} | Get email thread metadata by thread ID
[**getEmailThreadItems**](EmailControllerApi#getemailthreaditems) | **GET** /emails/threads/{threadId}/items | Get messages in a specific email thread
[**getEmailThreads**](EmailControllerApi#getemailthreads) | **GET** /emails/threads | List email threads in paginated form
[**getEmailsOffsetPaginated**](EmailControllerApi#getemailsoffsetpaginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**getEmailsPaginated**](EmailControllerApi#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getGravatarUrlForEmailAddress**](EmailControllerApi#getgravatarurlforemailaddress) | **GET** /emails/gravatarFor | Get Gravatar URL for an email address
[**getLatestEmail**](EmailControllerApi#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox1**](EmailControllerApi#getlatestemailininbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](EmailControllerApi#getorganizationemailspaginated) | **GET** /emails/organization | List organization-visible emails
[**getRawEmailContents**](EmailControllerApi#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](EmailControllerApi#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](EmailControllerApi#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**markAllAsRead**](EmailControllerApi#markallasread) | **PATCH** /emails/read | Mark all emails as read or unread
[**markAsRead**](EmailControllerApi#markasread) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**replyToEmail**](EmailControllerApi#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**searchEmails**](EmailControllerApi#searchemails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**sendEmailSourceOptional**](EmailControllerApi#sendemailsourceoptional) | **POST** /emails | Send email
[**setEmailFavourited**](EmailControllerApi#setemailfavourited) | **PUT** /emails/{emailId}/favourite | Set email favourited state
[**validateEmail**](EmailControllerApi#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **applyImapFlagOperation**
> EmailPreview applyImapFlagOperation(emailId, imapFlagOperationOptions)

Set IMAP flags associated with a message. Only supports '\\Seen' flag.

Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final imapFlagOperationOptions = ImapFlagOperationOptions(); // ImapFlagOperationOptions | 

try {
    final result = api_instance.applyImapFlagOperation(emailId, imapFlagOperationOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->applyImapFlagOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **imapFlagOperationOptions** | [**ImapFlagOperationOptions**](ImapFlagOperationOptions)|  | 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **canSend**
> CanSendEmailResults canSend(inboxId, sendEmailOptions)

Check whether an email send would be accepted

Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to send the email from
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 

try {
    final result = api_instance.canSend(inboxId, sendEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->canSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**CanSendEmailResults**](CanSendEmailResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBody**
> CheckEmailBodyResults checkEmailBody(emailId)

Check email body for broken links, images, and spelling issues

Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.checkEmailBody(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->checkEmailBody: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 

### Return type

[**CheckEmailBodyResults**](CheckEmailBodyResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBodyFeatureSupport**
> CheckEmailBodyFeatureSupportResults checkEmailBodyFeatureSupport(emailId)

Check client support for features used in a stored email body

Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.checkEmailBodyFeatureSupport(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->checkEmailBodyFeatureSupport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 

### Return type

[**CheckEmailBodyFeatureSupportResults**](CheckEmailBodyFeatureSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailClientSupport**
> CheckEmailClientSupportResults checkEmailClientSupport(checkEmailClientSupportOptions)

Check email-client support for a provided HTML body

Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final checkEmailClientSupportOptions = CheckEmailClientSupportOptions(); // CheckEmailClientSupportOptions | 

try {
    final result = api_instance.checkEmailClientSupport(checkEmailClientSupportOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->checkEmailClientSupport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkEmailClientSupportOptions** | [**CheckEmailClientSupportOptions**](CheckEmailClientSupportOptions)|  | 

### Return type

[**CheckEmailClientSupportResults**](CheckEmailClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllEmails**
> deleteAllEmails()

Delete all emails in all inboxes.

Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();

try {
    api_instance.deleteAllEmails();
} catch (e) {
    print('Exception when calling EmailControllerApi->deleteAllEmails: $e\n');
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

# **deleteEmail**
> deleteEmail(emailId)

Delete an email

Deletes a single email from account scope. Operation is destructive and not reversible.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to delete

try {
    api_instance.deleteEmail(emailId);
} catch (e) {
    print('Exception when calling EmailControllerApi->deleteEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachment**
> String downloadAttachment(emailId, attachmentId, apiKey)

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
final attachmentId = attachmentId_example; // String | ID of attachment
final apiKey = apiKey_example; // String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.

try {
    final result = api_instance.downloadAttachment(emailId, attachmentId, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->downloadAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 
 **attachmentId** | **String**| ID of attachment | 
 **apiKey** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentBase64**
> DownloadAttachmentDto downloadAttachmentBase64(emailId, attachmentId)

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.downloadAttachmentBase64(emailId, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->downloadAttachmentBase64: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 
 **attachmentId** | **String**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBody**
> String downloadBody(emailId)

Get email body as string. Returned as `plain/text` with content type header.

Returns hydrated email body text as a string with content type aligned to the underlying body format.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    final result = api_instance.downloadBody(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->downloadBody: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBodyBytes**
> String downloadBodyBytes(emailId)

Get email body in bytes. Returned as `octet-stream` with content type header.

Streams hydrated email body bytes with content type derived from the message body format.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    final result = api_instance.downloadBodyBytes(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->downloadBodyBytes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **forwardEmail**
> SentEmailDto forwardEmail(emailId, forwardEmailOptions)

Forward email to recipients

Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
final forwardEmailOptions = ForwardEmailOptions(); // ForwardEmailOptions | 

try {
    final result = api_instance.forwardEmail(emailId, forwardEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->forwardEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 
 **forwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
> AttachmentMetaData getAttachmentMetaData(emailId, attachmentId)

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns metadata for a specific attachment ID (name, content type, and size fields).

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
final attachmentId = attachmentId_example; // String | ID of attachment

try {
    final result = api_instance.getAttachmentMetaData(emailId, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getAttachmentMetaData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 
 **attachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
> Email getEmail(emailId)

Get hydrated email (headers and body)

Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmail(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAttachments**
> List<AttachmentMetaData> getEmailAttachments(emailId)

List attachment metadata for an email

Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    final result = api_instance.getEmailAttachments(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailAttachments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

[**List<AttachmentMetaData>**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCodes**
> ExtractCodesResult getEmailCodes(emailId, extractCodesOptions)

Extract verification codes from an email

Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to extract codes from
final extractCodesOptions = ExtractCodesOptions(); // ExtractCodesOptions | 

try {
    final result = api_instance.getEmailCodes(emailId, extractCodesOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to extract codes from | 
 **extractCodesOptions** | [**ExtractCodesOptions**](ExtractCodesOptions)|  | [optional] 

### Return type

[**ExtractCodesResult**](ExtractCodesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentMatch**
> EmailContentMatchResult getEmailContentMatch(emailId, contentMatchOptions)

Run regex against hydrated email body and return matches

Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to match against
final contentMatchOptions = ContentMatchOptions(); // ContentMatchOptions | 

try {
    final result = api_instance.getEmailContentMatch(emailId, contentMatchOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailContentMatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to match against | 
 **contentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions)|  | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPart**
> EmailContentPartResult getEmailContentPart(emailId, contentType, strict, index)

Get email content part by content type

Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to match against
final contentType = contentType_example; // String | Content type
final strict = true; // bool | Strict content type match
final index = 56; // int | Index of content type part if multiple

try {
    final result = api_instance.getEmailContentPart(emailId, contentType, strict, index);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailContentPart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to match against | 
 **contentType** | **String**| Content type | 
 **strict** | **bool**| Strict content type match | [optional] 
 **index** | **int**| Index of content type part if multiple | [optional] 

### Return type

[**EmailContentPartResult**](EmailContentPartResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPartContent**
> String getEmailContentPartContent(emailId, contentType, strict, index)

Get multipart content part as raw response

Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to match against
final contentType = contentType_example; // String | Content type
final strict = true; // bool | Strict content type match
final index = 56; // int | Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message.

try {
    final result = api_instance.getEmailContentPartContent(emailId, contentType, strict, index);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailContentPartContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to match against | 
 **contentType** | **String**| Content type | 
 **strict** | **bool**| Strict content type match | [optional] 
 **index** | **int**| Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCount**
> CountDto getEmailCount(inboxId)

Get email count

Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailCount(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | [optional] 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
> String getEmailHTML(emailId, replaceCidImages)

Get hydrated email HTML for browser rendering

Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final replaceCidImages = true; // bool | 

try {
    final result = api_instance.getEmailHTML(emailId, replaceCidImages);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailHTML: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **replaceCidImages** | **bool**|  | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLJson**
> EmailHtmlDto getEmailHTMLJson(emailId, replaceCidImages)

Get hydrated email HTML wrapped in JSON

Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final replaceCidImages = true; // bool | 

try {
    final result = api_instance.getEmailHTMLJson(emailId, replaceCidImages);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailHTMLJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **replaceCidImages** | **bool**|  | [optional] [default to false]

### Return type

[**EmailHtmlDto**](EmailHtmlDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLQuery**
> EmailTextLinesResult getEmailHTMLQuery(emailId, htmlSelector)

Query hydrated HTML body and return matching text lines

Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to perform HTML query on
final htmlSelector = htmlSelector_example; // String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

try {
    final result = api_instance.getEmailHTMLQuery(emailId, htmlSelector);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailHTMLQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to perform HTML query on | 
 **htmlSelector** | **String**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailLinks**
> EmailLinksResult getEmailLinks(emailId, selector)

Extract links from an email HTML body

Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to fetch text for
final selector = selector_example; // String | Optional HTML query selector for links

try {
    final result = api_instance.getEmailLinks(emailId, selector);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to fetch text for | 
 **selector** | **String**| Optional HTML query selector for links | [optional] 

### Return type

[**EmailLinksResult**](EmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailPreviewURLs**
> EmailPreviewUrls getEmailPreviewURLs(emailId)

Get email URLs for viewing in browser or downloading

Returns precomputed URLs for preview and raw message access for the specified email.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailPreviewURLs(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailPreviewURLs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBase64**
> EmailScreenshotResult getEmailScreenshotAsBase64(emailId, getEmailScreenshotOptions)

Take a screenshot of an email in a browser and return base64 encoded string

Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final getEmailScreenshotOptions = GetEmailScreenshotOptions(); // GetEmailScreenshotOptions | 

try {
    final result = api_instance.getEmailScreenshotAsBase64(emailId, getEmailScreenshotOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailScreenshotAsBase64: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **getEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

[**EmailScreenshotResult**](EmailScreenshotResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBinary**
> getEmailScreenshotAsBinary(emailId, getEmailScreenshotOptions)

Take a screenshot of an email in a browser

Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final getEmailScreenshotOptions = GetEmailScreenshotOptions(); // GetEmailScreenshotOptions | 

try {
    api_instance.getEmailScreenshotAsBinary(emailId, getEmailScreenshotOptions);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailScreenshotAsBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **getEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailSignature**
> EmailSignatureParseResult getEmailSignature(emailId)

Extract signature from an inbound email

Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to extract signature from

try {
    final result = api_instance.getEmailSignature(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailSignature: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to extract signature from | 

### Return type

[**EmailSignatureParseResult**](EmailSignatureParseResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailSummary**
> EmailPreview getEmailSummary(emailId, decode)

Get email summary (headers/metadata only)

Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final decode = true; // bool | Deprecated and ignored. Retained for backwards compatibility.

try {
    final result = api_instance.getEmailSummary(emailId, decode);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **decode** | **bool**| Deprecated and ignored. Retained for backwards compatibility. | [optional] 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailTextLines**
> EmailTextLinesResult getEmailTextLines(emailId, decodeHtmlEntities, lineSeparator)

Extract normalized text lines from email body

Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to fetch text for
final decodeHtmlEntities = true; // bool | Decode HTML entities
final lineSeparator = lineSeparator_example; // String | Line separator character

try {
    final result = api_instance.getEmailTextLines(emailId, decodeHtmlEntities, lineSeparator);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailTextLines: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to fetch text for | 
 **decodeHtmlEntities** | **bool**| Decode HTML entities | [optional] 
 **lineSeparator** | **String**| Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThread**
> EmailThreadDto getEmailThread(threadId)

Get email thread metadata by thread ID

Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final threadId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailThread(threadId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**|  | 

### Return type

[**EmailThreadDto**](EmailThreadDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreadItems**
> EmailThreadItemsDto getEmailThreadItems(threadId, sort)

Get messages in a specific email thread

Returns all messages in a thread ordered by `createdAt` using the requested sort direction.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final threadId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getEmailThreadItems(threadId, sort);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailThreadItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**|  | 
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**EmailThreadItemsDto**](EmailThreadItemsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreads**
> PageEmailThreadProjection getEmailThreads(htmlSelector, page, size, sort, searchFilter, since, before)

List email threads in paginated form

Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final htmlSelector = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility.
final page = 56; // int | Optional page index in email thread pagination
final size = 56; // int | Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter search filter for email threads.
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter email threads created since time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails threads created before given date time

try {
    final result = api_instance.getEmailThreads(htmlSelector, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmlSelector** | **String**| Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility. | [optional] 
 **page** | **int**| Optional page index in email thread pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter search filter for email threads. | [optional] 
 **since** | **DateTime**| Optional filter email threads created since time | [optional] 
 **before** | **DateTime**| Optional filter emails threads created before given date time | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsOffsetPaginated**
> PageEmailProjection getEmailsOffsetPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, favourited, syncConnectors, plusAddressId, include)

Get all emails in all inboxes in paginated form. Email API list all.

Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = []; // List<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
final page = 56; // int | Optional page index in email list pagination
final size = 56; // int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unreadOnly = true; // bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
final searchFilter = searchFilter_example; // String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received before given date time
final favourited = true; // bool | Optional filter emails that are favourited
final syncConnectors = true; // bool | Sync connectors
final plusAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional plus address ID filter
final include = []; // List<String> | Optional list of IDs to include in result

try {
    final result = api_instance.getEmailsOffsetPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, favourited, syncConnectors, plusAddressId, include);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailsOffsetPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**List<String>**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] [default to const []]
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unreadOnly** | **bool**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String**| Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **favourited** | **bool**| Optional filter emails that are favourited | [optional] 
 **syncConnectors** | **bool**| Sync connectors | [optional] 
 **plusAddressId** | **String**| Optional plus address ID filter | [optional] 
 **include** | [**List<String>**](String)| Optional list of IDs to include in result | [optional] [default to const []]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
> PageEmailProjection getEmailsPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, syncConnectors, plusAddressId, favourited)

Get all emails in all inboxes in paginated form. Email API list all.

Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = []; // List<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
final page = 56; // int | Optional page index in email list pagination
final size = 56; // int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unreadOnly = true; // bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
final searchFilter = searchFilter_example; // String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received before given date time
final syncConnectors = true; // bool | Sync connectors
final plusAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional plus address ID filter
final favourited = true; // bool | Optional filter emails that are favourited

try {
    final result = api_instance.getEmailsPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, syncConnectors, plusAddressId, favourited);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getEmailsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**List<String>**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] [default to const []]
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unreadOnly** | **bool**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String**| Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **bool**| Sync connectors | [optional] 
 **plusAddressId** | **String**| Optional plus address ID filter | [optional] 
 **favourited** | **bool**| Optional filter emails that are favourited | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGravatarUrlForEmailAddress**
> GravatarUrl getGravatarUrlForEmailAddress(emailAddress, size)

Get Gravatar URL for an email address

Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailAddress = emailAddress_example; // String | 
final size = size_example; // String | 

try {
    final result = api_instance.getGravatarUrlForEmailAddress(emailAddress, size);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getGravatarUrlForEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**|  | 
 **size** | **String**|  | [optional] 

### Return type

[**GravatarUrl**](GravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmail**
> Email getLatestEmail(inboxIds)

Get latest email in all inboxes. Most recently received.

Returns the most recently received email across all inboxes or an optional subset of inbox IDs.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxIds = []; // List<String> | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes

try {
    final result = api_instance.getLatestEmail(inboxIds);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getLatestEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxIds** | [**List<String>**](String)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes | [optional] [default to const []]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox1**
> Email getLatestEmailInInbox1(inboxId)

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to get the latest email from

try {
    final result = api_instance.getLatestEmailInInbox1(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getLatestEmailInInbox1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of the inbox you want to get the latest email from | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
> PageEmailProjection getOrganizationEmailsPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, syncConnectors, favourited, plusAddressId)

List organization-visible emails

Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = []; // List<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
final page = 56; // int | Optional page index in email list pagination
final size = 56; // int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unreadOnly = true; // bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
final searchFilter = searchFilter_example; // String | Optional search filter search filter for emails.
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter emails received before given date time
final syncConnectors = true; // bool | Sync connectors
final favourited = true; // bool | Search only favorited emails
final plusAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional plus address ID filter

try {
    final result = api_instance.getOrganizationEmailsPaginated(inboxId, page, size, sort, unreadOnly, searchFilter, since, before, syncConnectors, favourited, plusAddressId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getOrganizationEmailsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**List<String>**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] [default to const []]
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unreadOnly** | **bool**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String**| Optional search filter search filter for emails. | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **bool**| Sync connectors | [optional] 
 **favourited** | **bool**| Search only favorited emails | [optional] 
 **plusAddressId** | **String**| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
> getRawEmailContents(emailId)

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    api_instance.getRawEmailContents(emailId);
} catch (e) {
    print('Exception when calling EmailControllerApi->getRawEmailContents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailJson**
> RawEmailJson getRawEmailJson(emailId)

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    final result = api_instance.getRawEmailJson(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getRawEmailJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
> UnreadCount getUnreadEmailCount(inboxId)

Get unread email count

Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID filter for unread count scope

try {
    final result = api_instance.getUnreadEmailCount(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->getUnreadEmailCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Inbox ID filter for unread count scope | [optional] 

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAllAsRead**
> markAllAsRead(read, inboxId)

Mark all emails as read or unread

Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final read = true; // bool | What value to assign to email read property. Default true.
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox ID filter

try {
    api_instance.markAllAsRead(read, inboxId);
} catch (e) {
    print('Exception when calling EmailControllerApi->markAllAsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **read** | **bool**| What value to assign to email read property. Default true. | [optional] [default to true]
 **inboxId** | **String**| Optional inbox ID filter | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAsRead**
> EmailPreview markAsRead(emailId, read)

Mark an email as read or unread

Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final read = true; // bool | What value to assign to email read property. Default true.

try {
    final result = api_instance.markAsRead(emailId, read);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->markAsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **read** | **bool**| What value to assign to email read property. Default true. | [optional] [default to true]

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToEmail**
> SentEmailDto replyToEmail(emailId, replyToEmailOptions)

Reply to an email

Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the email that should be replied to
final replyToEmailOptions = ReplyToEmailOptions(); // ReplyToEmailOptions | 

try {
    final result = api_instance.replyToEmail(emailId, replyToEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->replyToEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of the email that should be replied to | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchEmails**
> PageEmailProjection searchEmails(searchEmailsOptions, syncConnectors, favourited, plusAddressId)

Get all emails by search criteria. Return in paginated form.

Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final searchEmailsOptions = SearchEmailsOptions(); // SearchEmailsOptions | 
final syncConnectors = true; // bool | Sync connectors
final favourited = true; // bool | Search only favourited emails
final plusAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional plus address ID filter

try {
    final result = api_instance.searchEmails(searchEmailsOptions, syncConnectors, favourited, plusAddressId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->searchEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchEmailsOptions** | [**SearchEmailsOptions**](SearchEmailsOptions)|  | 
 **syncConnectors** | **bool**| Sync connectors | [optional] 
 **favourited** | **bool**| Search only favourited emails | [optional] 
 **plusAddressId** | **String**| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSourceOptional**
> sendEmailSourceOptional(sendEmailOptions, inboxId, useDomainPool, virtualSend)

Send email

Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to send the email from
final useDomainPool = true; // bool | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
final virtualSend = true; // bool | Optionally create inbox to send from that is a virtual inbox and won't send to external addresses

try {
    api_instance.sendEmailSourceOptional(sendEmailOptions, inboxId, useDomainPool, virtualSend);
} catch (e) {
    print('Exception when calling EmailControllerApi->sendEmailSourceOptional: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **inboxId** | **String**| ID of the inbox you want to send the email from | [optional] 
 **useDomainPool** | **bool**| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **virtualSend** | **bool**| Optionally create inbox to send from that is a virtual inbox and won't send to external addresses | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setEmailFavourited**
> setEmailFavourited(emailId, favourited)

Set email favourited state

Sets favourite state for an email for dashboard/search workflows.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to set favourite state
final favourited = true; // bool | 

try {
    api_instance.setEmailFavourited(emailId, favourited);
} catch (e) {
    print('Exception when calling EmailControllerApi->setEmailFavourited: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to set favourite state | 
 **favourited** | **bool**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmail**
> ValidationDto validateEmail(emailId)

Validate email HTML contents

Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try {
    final result = api_instance.validateEmail(emailId);
    print(result);
} catch (e) {
    print('Exception when calling EmailControllerApi->validateEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email | 

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

