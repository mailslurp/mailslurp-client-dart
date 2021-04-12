# mailslurp.api.EmailControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllEmails**](EmailControllerApi#deleteAllEmails) | **DELETE** /emails | Delete all emails
[**deleteEmail**](EmailControllerApi#deleteEmail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerApi#downloadAttachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**downloadAttachmentBase64**](EmailControllerApi#downloadAttachmentBase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses)
[**forwardEmail**](EmailControllerApi#forwardEmail) | **POST** /emails/{emailId}/forward | Forward email
[**getAttachmentMetaData**](EmailControllerApi#getAttachmentMetaData) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
[**getAttachments**](EmailControllerApi#getAttachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
[**getEmail**](EmailControllerApi#getEmail) | **GET** /emails/{emailId} | Get email content
[**getEmailContentMatch**](EmailControllerApi#getEmailContentMatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailHTML**](EmailControllerApi#getEmailHTML) | **GET** /emails/{emailId}/html | Get email content as HTML
[**getEmailHTMLQuery**](EmailControllerApi#getEmailHTMLQuery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailTextLines**](EmailControllerApi#getEmailTextLines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsPaginated**](EmailControllerApi#getEmailsPaginated) | **GET** /emails | Get all emails
[**getLatestEmail**](EmailControllerApi#getLatestEmail) | **GET** /emails/latest | Get latest email
[**getLatestEmailInInbox**](EmailControllerApi#getLatestEmailInInbox) | **GET** /emails/latestIn | Get latest email
[**getOrganizationEmailsPaginated**](EmailControllerApi#getOrganizationEmailsPaginated) | **GET** /emails/organization | Get all organization emails
[**getRawEmailContents**](EmailControllerApi#getRawEmailContents) | **GET** /emails/{emailId}/raw | Get raw email string
[**getRawEmailJson**](EmailControllerApi#getRawEmailJson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
[**getUnreadEmailCount**](EmailControllerApi#getUnreadEmailCount) | **GET** /emails/unreadCount | Get unread email count
[**replyToEmail**](EmailControllerApi#replyToEmail) | **PUT** /emails/{emailId} | Reply to an email
[**validateEmail**](EmailControllerApi#validateEmail) | **POST** /emails/{emailId}/validate | Validate email


# **deleteAllEmails**
> deleteAllEmails()

Delete all emails

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();

try { 
    api_instance.deleteAllEmails();
} catch (e) {
    print("Exception when calling EmailControllerApi->deleteAllEmails: $e\n");
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

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to delete

try { 
    api_instance.deleteEmail(emailId);
} catch (e) {
    print("Exception when calling EmailControllerApi->deleteEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachment**
> String downloadAttachment(attachmentId, emailId, apiKey)

Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var attachmentId = attachmentId_example; // String | ID of attachment
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
var apiKey = apiKey_example; // String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.

try { 
    var result = api_instance.downloadAttachment(attachmentId, emailId, apiKey);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->downloadAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | [default to null]
 **emailId** | [**String**]()| ID of email | [default to null]
 **apiKey** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] [default to null]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentBase64**
> DownloadAttachmentDto downloadAttachmentBase64(attachmentId, emailId)

Get email attachment as base64 encoded string (alternative to binary responses)

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var attachmentId = attachmentId_example; // String | ID of attachment
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.downloadAttachmentBase64(attachmentId, emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->downloadAttachmentBase64: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | [default to null]
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **forwardEmail**
> forwardEmail(emailId, forwardEmailOptions)

Forward email

Forward an existing email to new recipients.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email
var forwardEmailOptions = ForwardEmailOptions(); // ForwardEmailOptions | forwardEmailOptions

try { 
    api_instance.forwardEmail(emailId, forwardEmailOptions);
} catch (e) {
    print("Exception when calling EmailControllerApi->forwardEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | [default to null]
 **forwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions)| forwardEmailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
> AttachmentMetaData getAttachmentMetaData(attachmentId, emailId)

Get email attachment metadata

Returns the metadata such as name and content-type for a given attachment and email.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var attachmentId = attachmentId_example; // String | ID of attachment
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.getAttachmentMetaData(attachmentId, emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getAttachmentMetaData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of attachment | [default to null]
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments**
> List<AttachmentMetaData> getAttachments(emailId)

Get all email attachment metadata

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.getAttachments(emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getAttachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

[**List<AttachmentMetaData>**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
> Email getEmail(emailId, decode)

Get email content

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | emailId
var decode = true; // bool | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing

try { 
    var result = api_instance.getEmail(emailId, decode);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| emailId | [default to null]
 **decode** | **bool**| Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentMatch**
> EmailContentMatchResult getEmailContentMatch(emailId, contentMatchOptions)

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to match against
var contentMatchOptions = ContentMatchOptions(); // ContentMatchOptions | contentMatchOptions

try { 
    var result = api_instance.getEmailContentMatch(emailId, contentMatchOptions);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmailContentMatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email to match against | [default to null]
 **contentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions)| contentMatchOptions | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
> String getEmailHTML(emailId, decode)

Get email content as HTML

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | emailId
var decode = true; // bool | decode

try { 
    var result = api_instance.getEmailHTML(emailId, decode);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmailHTML: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| emailId | [default to null]
 **decode** | **bool**| decode | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLQuery**
> EmailTextLinesResult getEmailHTMLQuery(emailId, htmlSelector)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to perform HTML query on
var htmlSelector = htmlSelector_example; // String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

try { 
    var result = api_instance.getEmailHTMLQuery(emailId, htmlSelector);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmailHTMLQuery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email to perform HTML query on | [default to null]
 **htmlSelector** | **String**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] [default to null]

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailTextLines**
> EmailTextLinesResult getEmailTextLines(emailId, decodeHtmlEntities, lineSeparator)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to fetch text for
var decodeHtmlEntities = true; // bool | Decode HTML entities
var lineSeparator = lineSeparator_example; // String | Line separator character

try { 
    var result = api_instance.getEmailTextLines(emailId, decodeHtmlEntities, lineSeparator);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmailTextLines: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email to fetch text for | [default to null]
 **decodeHtmlEntities** | **bool**| Decode HTML entities | [optional] [default to null]
 **lineSeparator** | **String**| Line separator character | [optional] [default to null]

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
> PageEmailProjection getEmailsPaginated(inboxId, page, size, sort, unreadOnly)

Get all emails

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var inboxId = []; // List<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
var page = 56; // int | Optional page index in email list pagination
var size = 56; // int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
var unreadOnly = true; // bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly

try { 
    var result = api_instance.getEmailsPaginated(inboxId, page, size, sort, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getEmailsPaginated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**List&lt;String&gt;**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] [default to []]
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **unreadOnly** | **bool**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmail**
> Email getLatestEmail(inboxIds)

Get latest email

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var inboxIds = []; // List<String> | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs

try { 
    var result = api_instance.getLatestEmail(inboxIds);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getLatestEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxIds** | [**List&lt;String&gt;**](String)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs | [optional] [default to []]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox**
> Email getLatestEmailInInbox(inboxId)

Get latest email

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to get the latest email from

try { 
    var result = api_instance.getLatestEmailInInbox(inboxId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getLatestEmailInInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| ID of the inbox you want to get the latest email from | [optional] [default to null]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
> PageEmailProjection getOrganizationEmailsPaginated(inboxId, page, size, sort, unreadOnly)

Get all organization emails

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var inboxId = []; // List<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
var page = 56; // int | Optional page index in email list pagination
var size = 56; // int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
var unreadOnly = true; // bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly

try { 
    var result = api_instance.getOrganizationEmailsPaginated(inboxId, page, size, sort, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getOrganizationEmailsPaginated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**List&lt;String&gt;**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] [default to []]
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **unreadOnly** | **bool**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
> String getRawEmailContents(emailId)

Get raw email string

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.getRawEmailContents(emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getRawEmailContents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailJson**
> RawEmailJson getRawEmailJson(emailId)

Get raw email in JSON

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.getRawEmailJson(emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getRawEmailJson: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
> UnreadCount getUnreadEmailCount()

Get unread email count

Get number of emails unread

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();

try { 
    var result = api_instance.getUnreadEmailCount();
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->getUnreadEmailCount: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToEmail**
> SentEmailDto replyToEmail(emailId, replyToEmailOptions)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the email that should be replied to
var replyToEmailOptions = ReplyToEmailOptions(); // ReplyToEmailOptions | replyToEmailOptions

try { 
    var result = api_instance.replyToEmail(emailId, replyToEmailOptions);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->replyToEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of the email that should be replied to | [default to null]
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)| replyToEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmail**
> ValidationDto validateEmail(emailId)

Validate email

Validate the HTML content of email if HTML is found. Considered valid if no HTML.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = EmailControllerApi();
var emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    var result = api_instance.validateEmail(emailId);
    print(result);
} catch (e) {
    print("Exception when calling EmailControllerApi->validateEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | [default to null]

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

