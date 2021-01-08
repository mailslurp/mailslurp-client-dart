# mailslurp.api.InboxControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](InboxControllerApi.md#createInbox) | **POST** /inboxes | Create an Inbox (email address)
[**createInboxWithOptions**](InboxControllerApi.md#createInboxWithOptions) | **POST** /inboxes/withOptions | Create an inbox with additional options
[**deleteAllInboxes**](InboxControllerApi.md#deleteAllInboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](InboxControllerApi.md#deleteInbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**getAllInboxes**](InboxControllerApi.md#getAllInboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**getEmails**](InboxControllerApi.md#getEmails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**getExpiredInboxRecordById**](InboxControllerApi.md#getExpiredInboxRecordById) | **GET** /inboxes/expired-records/{expiredId} | Get an expired inbox record
[**getExpiredInboxRecordByInboxId**](InboxControllerApi.md#getExpiredInboxRecordByInboxId) | **GET** /inboxes/{inboxId}/expired-record | Get expired inbox record for a previously existing inbox
[**getExpiredInboxRecords**](InboxControllerApi.md#getExpiredInboxRecords) | **GET** /inboxes/expired-records | List records of expired inboxes
[**getInbox**](InboxControllerApi.md#getInbox) | **GET** /inboxes/{inboxId} | Get Inbox
[**getInboxEmailsPaginated**](InboxControllerApi.md#getInboxEmailsPaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxSentEmails**](InboxControllerApi.md#getInboxSentEmails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](InboxControllerApi.md#getInboxTags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](InboxControllerApi.md#getInboxes) | **GET** /inboxes | List Inboxes / Email Addresses
[**sendEmail**](InboxControllerApi.md#sendEmail) | **POST** /inboxes/{inboxId} | Send Email
[**sendEmailAndConfirm**](InboxControllerApi.md#sendEmailAndConfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**setInboxFavourited**](InboxControllerApi.md#setInboxFavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](InboxControllerApi.md#updateInbox) | **PATCH** /inboxes/{inboxId} | Update Inbox


# **createInbox**
> Inbox createInbox(description, emailAddress, expiresAt, favourite, name, tags, useDomainPool)

Create an Inbox (email address)

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var description = description_example; // String | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
var emailAddress = emailAddress_example; // String | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
var expiresAt = 2013-10-20T19:20:30+01:00; // DateTime | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
var favourite = true; // bool | Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
var name = name_example; // String | Optional name of the inbox. Displayed in the dashboard for easier search
var tags = []; // List<String> | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
var useDomainPool = true; // bool | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.

try { 
    var result = api_instance.createInbox(description, emailAddress, expiresAt, favourite, name, tags, useDomainPool);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->createInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] [default to null]
 **emailAddress** | **String**| A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] [default to null]
 **expiresAt** | **DateTime**| Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] [default to null]
 **favourite** | **bool**| Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering | [optional] [default to null]
 **name** | **String**| Optional name of the inbox. Displayed in the dashboard for easier search | [optional] [default to null]
 **tags** | [**List&lt;String&gt;**](String.md)| Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] [default to []]
 **useDomainPool** | **bool**| Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. | [optional] [default to null]

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInboxWithOptions**
> Inbox createInboxWithOptions(createInboxDto)

Create an inbox with additional options

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var createInboxDto = CreateInboxDto(); // CreateInboxDto | createInboxDto

try { 
    var result = api_instance.createInboxWithOptions(createInboxDto);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->createInboxWithOptions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxDto** | [**CreateInboxDto**](CreateInboxDto.md)| createInboxDto | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllInboxes**
> deleteAllInboxes()

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();

try { 
    api_instance.deleteAllInboxes();
} catch (e) {
    print("Exception when calling InboxControllerApi->deleteAllInboxes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInbox**
> deleteInbox(inboxId)

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId

try { 
    api_instance.deleteInbox(inboxId);
} catch (e) {
    print("Exception when calling InboxControllerApi->deleteInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllInboxes**
> PageInboxProjection getAllInboxes(favourite, page, search, size, sort, tag)

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return(, and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var favourite = true; // bool | Optionally filter results for favourites only
var page = 56; // int | Optional page index in inbox list pagination
var search = search_example; // String | Optionally filter by search words partial matching ID, tags, name, and email address
var size = 56; // int | Optional page size in inbox list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
var tag = tag_example; // String | Optionally filter by tags

try { 
    var result = api_instance.getAllInboxes(favourite, page, search, size, sort, tag);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getAllInboxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **favourite** | **bool**| Optionally filter results for favourites only | [optional] [default to false]
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] [default to null]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **tag** | **String**| Optionally filter by tags | [optional] [default to null]

### Return type

[**PageInboxProjection**](PageInboxProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmails**
> List<EmailPreview> getEmails(inboxId, limit, minCount, retryTimeout, since, size, sort)

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of inbox that emails belongs to
var limit = 56; // int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
var minCount = 789; // int | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
var retryTimeout = 789; // int | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
var since = 2013-10-20T19:20:30+01:00; // DateTime | Exclude emails received before this ISO 8601 date time
var size = 56; // int | Alias for limit. Assessed first before assessing any passed limit.
var sort = sort_example; // String | Sort the results by received date and direction ASC or DESC

try { 
    var result = api_instance.getEmails(inboxId, limit, minCount, retryTimeout, since, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getEmails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| Id of inbox that emails belongs to | [default to null]
 **limit** | **int**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] [default to null]
 **minCount** | **int**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] [default to null]
 **retryTimeout** | **int**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] [default to null]
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] [default to null]
 **size** | **int**| Alias for limit. Assessed first before assessing any passed limit. | [optional] [default to null]
 **sort** | **String**| Sort the results by received date and direction ASC or DESC | [optional] [default to null]

### Return type

[**List<EmailPreview>**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExpiredInboxRecordById**
> ExpiredInboxDto getExpiredInboxRecordById(expiredId)

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var expiredId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)

try { 
    var result = api_instance.getExpiredInboxRecordById(expiredId);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getExpiredInboxRecordById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiredId** | [**String**](.md)| ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) | [default to null]

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExpiredInboxRecordByInboxId**
> ExpiredInboxDto getExpiredInboxRecordByInboxId(inboxId)

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox you want to retrieve (not the inbox ID)

try { 
    var result = api_instance.getExpiredInboxRecordByInboxId(inboxId);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getExpiredInboxRecordByInboxId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| ID of inbox you want to retrieve (not the inbox ID) | [default to null]

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExpiredInboxRecords**
> PageExpiredInboxRecordProjection getExpiredInboxRecords(page, size, sort)

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var page = 56; // int | Optional page index in inbox sent email list pagination
var size = 56; // int | Optional page size in inbox sent email list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getExpiredInboxRecords(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getExpiredInboxRecords: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageExpiredInboxRecordProjection**](PageExpiredInboxRecordProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInbox**
> Inbox getInbox(inboxId)

Get Inbox

Returns an inbox's properties, including its email address and ID.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId

try { 
    var result = api_instance.getInbox(inboxId);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxEmailsPaginated**
> PageEmailPreview getInboxEmailsPaginated(inboxId, page, size, sort)

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of inbox that emails belongs to
var page = 56; // int | Optional page index in inbox emails list pagination
var size = 56; // int | Optional page size in inbox emails list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getInboxEmailsPaginated(inboxId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getInboxEmailsPaginated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| Id of inbox that emails belongs to | [default to null]
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageEmailPreview**](PageEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxSentEmails**
> PageSentEmailProjection getInboxSentEmails(inboxId, page, size, sort)

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
var page = 56; // int | Optional page index in inbox sent email list pagination
var size = 56; // int | Optional page size in inbox sent email list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getInboxSentEmails(inboxId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getInboxSentEmails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxTags**
> List<String> getInboxTags()

Get inbox tags

Get all inbox tags

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();

try { 
    var result = api_instance.getInboxTags();
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getInboxTags: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxes**
> List<Inbox> getInboxes(size, sort)

List Inboxes / Email Addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended. You can provide a limit and sort parameter.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var size = 56; // int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getInboxes(size, sort);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->getInboxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**List<Inbox>**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
> sendEmail(inboxId, sendEmailOptions)

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to send the email from
var sendEmailOptions = SendEmailOptions(); // SendEmailOptions | Options for the email

try { 
    api_instance.sendEmail(inboxId, sendEmailOptions);
} catch (e) {
    print("Exception when calling InboxControllerApi->sendEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| ID of the inbox you want to send the email from | [default to null]
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions.md)| Options for the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmailAndConfirm**
> SentEmailDto sendEmailAndConfirm(inboxId, sendEmailOptions)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with link the the sent object created for it.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the inbox you want to send the email from
var sendEmailOptions = SendEmailOptions(); // SendEmailOptions | Options for the email

try { 
    var result = api_instance.sendEmailAndConfirm(inboxId, sendEmailOptions);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->sendEmailAndConfirm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| ID of the inbox you want to send the email from | [default to null]
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions.md)| Options for the email | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setInboxFavourited**
> Inbox setInboxFavourited(inboxId, setInboxFavouritedOptions)

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
var setInboxFavouritedOptions = SetInboxFavouritedOptions(); // SetInboxFavouritedOptions | setInboxFavouritedOptions

try { 
    var result = api_instance.setInboxFavourited(inboxId, setInboxFavouritedOptions);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->setInboxFavourited: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]
 **setInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions.md)| setInboxFavouritedOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInbox**
> Inbox updateInbox(inboxId, updateInboxOptions)

Update Inbox

Update editable fields on an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = InboxControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
var updateInboxOptions = UpdateInboxOptions(); // UpdateInboxOptions | updateInboxOptions

try { 
    var result = api_instance.updateInbox(inboxId, updateInboxOptions);
    print(result);
} catch (e) {
    print("Exception when calling InboxControllerApi->updateInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions.md)| updateInboxOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

