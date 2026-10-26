# mailslurp.api.AgentControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentAcquireConversationClaim**](AgentControllerApi#agentacquireconversationclaim) | **POST** /agent/conversations/{conversationId}/claims | Acquire a renewable conversation claim
[**agentAddConversationNote**](AgentControllerApi#agentaddconversationnote) | **POST** /agent/conversations/{conversationId}/notes | Add an internal conversation note
[**agentAddSmsNote**](AgentControllerApi#agentaddsmsnote) | **POST** /agent/sms-conversations/{conversationId}/notes | Add an internal SMS conversation note
[**agentCheckInboxSendPolicy**](AgentControllerApi#agentcheckinboxsendpolicy) | **POST** /agent/inboxes/{inboxId}/send-policy/check | Check whether sending rules allow recipients
[**agentClaimSmsConversation**](AgentControllerApi#agentclaimsmsconversation) | **POST** /agent/sms-conversations/{conversationId}/claims | Acquire an SMS conversation claim
[**agentCompleteWorkItem**](AgentControllerApi#agentcompleteworkitem) | **POST** /agent/work-items/{conversationId}/complete | Complete a work item with an idempotent reply
[**agentCreateEmailDraft**](AgentControllerApi#agentcreateemaildraft) | **POST** /agent/inboxes/{inboxId}/drafts | Create a scoped email draft for an agent
[**agentCreateInbox**](AgentControllerApi#agentcreateinbox) | **POST** /agent/inboxes | Create an inbox with an account-wide inbox-manager connection
[**agentCreateReplyDraft**](AgentControllerApi#agentcreatereplydraft) | **POST** /agent/emails/{emailId}/reply-draft | Create a correctly threaded reply draft
[**agentCreateTotpDeviceForBase32SecretKey**](AgentControllerApi#agentcreatetotpdeviceforbase32secretkey) | **POST** /agent/totp/devices/base32-secret-key | Create an agent-managed TOTP device from a base32 secret key
[**agentCreateTotpDeviceForCustom**](AgentControllerApi#agentcreatetotpdeviceforcustom) | **POST** /agent/totp/devices/custom | Create an agent-managed TOTP device from custom options
[**agentCreateTotpDeviceForOtpAuthUrl**](AgentControllerApi#agentcreatetotpdeviceforotpauthurl) | **POST** /agent/totp/devices/otp-auth-url | Create an agent-managed TOTP device from an OTP Auth URL
[**agentDeferWorkItem**](AgentControllerApi#agentdeferworkitem) | **POST** /agent/work-items/{conversationId}/defer | Defer a work item to human review
[**agentDeleteEmailDraft**](AgentControllerApi#agentdeleteemaildraft) | **DELETE** /agent/inboxes/{inboxId}/drafts/{draftId} | Delete a scoped email draft for an agent
[**agentDeleteTotpDevice**](AgentControllerApi#agentdeletetotpdevice) | **DELETE** /agent/totp/devices/{id} | Delete an agent-managed TOTP device
[**agentExtractEmailAttachmentText**](AgentControllerApi#agentextractemailattachmenttext) | **POST** /agent/emails/{emailId}/attachments/{attachmentId}/text | Extract text from a scoped email attachment for an agent
[**agentGenerateTotpDeviceCode**](AgentControllerApi#agentgeneratetotpdevicecode) | **GET** /agent/totp/devices/{id}/code | Generate a code for an agent-managed TOTP device
[**agentGetCapabilities**](AgentControllerApi#agentgetcapabilities) | **GET** /agent/capabilities | Discover this agent connection's capabilities
[**agentGetConversationV2**](AgentControllerApi#agentgetconversationv2) | **GET** /agent/conversations/{conversationId} | Get one scoped conversation
[**agentGetEmail**](AgentControllerApi#agentgetemail) | **GET** /agent/emails/{emailId} | Get scoped hydrated email for an agent
[**agentGetEmailDraft**](AgentControllerApi#agentgetemaildraft) | **GET** /agent/inboxes/{inboxId}/drafts/{draftId} | Get a scoped email draft for an agent
[**agentGetEmailSummary**](AgentControllerApi#agentgetemailsummary) | **GET** /agent/emails/{emailId}/summary | Get scoped email summary for an agent
[**agentGetEmailThread**](AgentControllerApi#agentgetemailthread) | **GET** /agent/emails/{emailId}/thread | Get a scoped email thread for an agent
[**agentGetLatestInboxEmail**](AgentControllerApi#agentgetlatestinboxemail) | **GET** /agent/inboxes/{inboxId}/emails/latest | Get latest scoped inbox email for an agent
[**agentGetNextWorkItem**](AgentControllerApi#agentgetnextworkitem) | **POST** /agent/work-items/next | Claim the next conversation work item
[**agentGetPhoneMessageThreadItems**](AgentControllerApi#agentgetphonemessagethreaditems) | **GET** /agent/phone-numbers/{phoneNumberId}/message-threads/{otherPhoneNumber} | List SMS thread messages
[**agentGetPhoneMessageThreads**](AgentControllerApi#agentgetphonemessagethreads) | **GET** /agent/phone-numbers/{phoneNumberId}/message-threads | List SMS threads
[**agentGetPhoneNumber**](AgentControllerApi#agentgetphonenumber) | **GET** /agent/phone-numbers/{phoneNumberId} | Get an assigned phone number
[**agentGetPhoneNumbers**](AgentControllerApi#agentgetphonenumbers) | **GET** /agent/phone-numbers | List assigned phone numbers
[**agentGetReceivedSmsMessage**](AgentControllerApi#agentgetreceivedsmsmessage) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/{smsId} | Get received SMS
[**agentGetReceivedSmsMessages**](AgentControllerApi#agentgetreceivedsmsmessages) | **GET** /agent/phone-numbers/{phoneNumberId}/sms | List received SMS for an assigned phone number
[**agentGetSentSmsMessage**](AgentControllerApi#agentgetsentsmsmessage) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/sent/{sentSmsId} | Get sent SMS
[**agentGetSentSmsMessages**](AgentControllerApi#agentgetsentsmsmessages) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/sent | List sent SMS for an assigned phone number
[**agentGetSmsConversation**](AgentControllerApi#agentgetsmsconversation) | **GET** /agent/sms-conversations/{conversationId} | Get one SMS conversation
[**agentGetTotpDevice**](AgentControllerApi#agentgettotpdevice) | **GET** /agent/totp/devices/{id} | Get an agent-accessible TOTP device
[**agentGetTotpDeviceBy**](AgentControllerApi#agentgettotpdeviceby) | **GET** /agent/totp/devices/by | Find an agent-accessible TOTP device by name, issuer, or username
[**agentGetTotpDevices**](AgentControllerApi#agentgettotpdevices) | **GET** /agent/totp/devices | List agent-accessible TOTP devices
[**agentListAccessibleInboxes**](AgentControllerApi#agentlistaccessibleinboxes) | **GET** /agent/inboxes | List inboxes accessible to an agent
[**agentListAutomationEvents**](AgentControllerApi#agentlistautomationevents) | **GET** /agent/events | Read durable scoped automation events
[**agentListConversationsV2**](AgentControllerApi#agentlistconversationsv2) | **GET** /agent/conversations | List active conversations with an opaque keyset cursor
[**agentListEmailAttachments**](AgentControllerApi#agentlistemailattachments) | **GET** /agent/emails/{emailId}/attachments | List attachments on a scoped email for an agent
[**agentListEmailDrafts**](AgentControllerApi#agentlistemaildrafts) | **GET** /agent/inboxes/{inboxId}/drafts | List scoped email drafts for an agent
[**agentListInboxEmails**](AgentControllerApi#agentlistinboxemails) | **GET** /agent/inboxes/{inboxId}/emails | List scoped inbox emails for an agent
[**agentListInboxThreads**](AgentControllerApi#agentlistinboxthreads) | **GET** /agent/inboxes/{inboxId}/threads | List scoped inbox threads for an agent
[**agentListSmsConversations**](AgentControllerApi#agentlistsmsconversations) | **GET** /agent/sms-conversations | List active SMS conversations
[**agentPrepareWorkItemReply**](AgentControllerApi#agentprepareworkitemreply) | **POST** /agent/work-items/{conversationId}/prepare-reply | Prepare a guarded reply draft
[**agentReleaseConversationClaim**](AgentControllerApi#agentreleaseconversationclaim) | **DELETE** /agent/conversations/{conversationId}/claims/{claimId} | Release a conversation claim
[**agentReleaseSmsClaim**](AgentControllerApi#agentreleasesmsclaim) | **DELETE** /agent/sms-conversations/{conversationId}/claims/{claimId} | Release an SMS conversation claim
[**agentRenewConversationClaim**](AgentControllerApi#agentrenewconversationclaim) | **PUT** /agent/conversations/{conversationId}/claims/{claimId} | Renew a conversation claim
[**agentRenewSmsClaim**](AgentControllerApi#agentrenewsmsclaim) | **PUT** /agent/sms-conversations/{conversationId}/claims/{claimId} | Renew an SMS conversation claim
[**agentReplyToEmail**](AgentControllerApi#agentreplytoemail) | **POST** /agent/emails/{emailId}/reply | Reply to a scoped email as an agent
[**agentReplyToSms**](AgentControllerApi#agentreplytosms) | **POST** /agent/phone-numbers/{phoneNumberId}/sms/{smsId}/reply | Reply to received SMS
[**agentReportWorkerHeartbeat**](AgentControllerApi#agentreportworkerheartbeat) | **POST** /agent/runtime/heartbeat | Report a worker heartbeat
[**agentRequestConversationHandoff**](AgentControllerApi#agentrequestconversationhandoff) | **POST** /agent/conversations/{conversationId}/handoffs | Request human review for a conversation
[**agentRequestSmsHandoff**](AgentControllerApi#agentrequestsmshandoff) | **POST** /agent/sms-conversations/{conversationId}/handoffs | Request human review for an SMS conversation
[**agentSearchInboxEmails**](AgentControllerApi#agentsearchinboxemails) | **POST** /agent/inboxes/{inboxId}/emails/search | Search scoped inbox emails for an agent
[**agentSendEmailDraft**](AgentControllerApi#agentsendemaildraft) | **POST** /agent/inboxes/{inboxId}/drafts/{draftId}/send | Send a scoped email draft for an agent
[**agentSendSms**](AgentControllerApi#agentsendsms) | **POST** /agent/phone-numbers/{phoneNumberId}/sms | Send SMS from an assigned phone number
[**agentUpdateEmailDraft**](AgentControllerApi#agentupdateemaildraft) | **PATCH** /agent/inboxes/{inboxId}/drafts/{draftId} | Update a scoped email draft for an agent
[**agentUpdateInbox**](AgentControllerApi#agentupdateinbox) | **PATCH** /agent/inboxes/{inboxId} | Update an inbox visible to an inbox-manager connection
[**agentUpdateTotpDevice**](AgentControllerApi#agentupdatetotpdevice) | **PUT** /agent/totp/devices/{id} | Update an agent-managed TOTP device


# **agentAcquireConversationClaim**
> AgentConversationClaimDto agentAcquireConversationClaim(conversationId, acquireAgentConversationClaimOptions)

Acquire a renewable conversation claim

Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acquireAgentConversationClaimOptions = AcquireAgentConversationClaimOptions(); // AcquireAgentConversationClaimOptions | 

try {
    final result = api_instance.agentAcquireConversationClaim(conversationId, acquireAgentConversationClaimOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentAcquireConversationClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **acquireAgentConversationClaimOptions** | [**AcquireAgentConversationClaimOptions**](AcquireAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentAddConversationNote**
> AgentConversationNoteDto agentAddConversationNote(conversationId, createAgentConversationNoteOptions)

Add an internal conversation note

Adds agent/operator collaboration context without sending any email to the customer.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createAgentConversationNoteOptions = CreateAgentConversationNoteOptions(); // CreateAgentConversationNoteOptions | 

try {
    final result = api_instance.agentAddConversationNote(conversationId, createAgentConversationNoteOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentAddConversationNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **createAgentConversationNoteOptions** | [**CreateAgentConversationNoteOptions**](CreateAgentConversationNoteOptions)|  | 

### Return type

[**AgentConversationNoteDto**](AgentConversationNoteDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentAddSmsNote**
> AgentConversationNoteDto agentAddSmsNote(conversationId, createAgentSmsConversationNoteOptions)

Add an internal SMS conversation note

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createAgentSmsConversationNoteOptions = CreateAgentSmsConversationNoteOptions(); // CreateAgentSmsConversationNoteOptions | 

try {
    final result = api_instance.agentAddSmsNote(conversationId, createAgentSmsConversationNoteOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentAddSmsNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **createAgentSmsConversationNoteOptions** | [**CreateAgentSmsConversationNoteOptions**](CreateAgentSmsConversationNoteOptions)|  | 

### Return type

[**AgentConversationNoteDto**](AgentConversationNoteDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCheckInboxSendPolicy**
> AgentInboxSendPolicyDto agentCheckInboxSendPolicy(inboxId, agentInboxSendPolicyCheckOptions)

Check whether sending rules allow recipients

Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final agentInboxSendPolicyCheckOptions = AgentInboxSendPolicyCheckOptions(); // AgentInboxSendPolicyCheckOptions | 

try {
    final result = api_instance.agentCheckInboxSendPolicy(inboxId, agentInboxSendPolicyCheckOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCheckInboxSendPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **agentInboxSendPolicyCheckOptions** | [**AgentInboxSendPolicyCheckOptions**](AgentInboxSendPolicyCheckOptions)|  | 

### Return type

[**AgentInboxSendPolicyDto**](AgentInboxSendPolicyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentClaimSmsConversation**
> AgentConversationClaimDto agentClaimSmsConversation(conversationId, acquireAgentConversationClaimOptions)

Acquire an SMS conversation claim

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acquireAgentConversationClaimOptions = AcquireAgentConversationClaimOptions(); // AcquireAgentConversationClaimOptions | 

try {
    final result = api_instance.agentClaimSmsConversation(conversationId, acquireAgentConversationClaimOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentClaimSmsConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **acquireAgentConversationClaimOptions** | [**AcquireAgentConversationClaimOptions**](AcquireAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCompleteWorkItem**
> AgentCompletedWorkItemDto agentCompleteWorkItem(conversationId, completeAgentWorkItemOptions)

Complete a work item with an idempotent reply

Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final completeAgentWorkItemOptions = CompleteAgentWorkItemOptions(); // CompleteAgentWorkItemOptions | 

try {
    final result = api_instance.agentCompleteWorkItem(conversationId, completeAgentWorkItemOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCompleteWorkItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **completeAgentWorkItemOptions** | [**CompleteAgentWorkItemOptions**](CompleteAgentWorkItemOptions)|  | 

### Return type

[**AgentCompletedWorkItemDto**](AgentCompletedWorkItemDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateEmailDraft**
> EmailDraftDto agentCreateEmailDraft(inboxId, sendEmailOptions, sourceEmailId)

Create a scoped email draft for an agent

Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox to save the draft against
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 
final sourceEmailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation.

try {
    final result = api_instance.agentCreateEmailDraft(inboxId, sendEmailOptions, sourceEmailId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateEmailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox to save the draft against | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **sourceEmailId** | **String**| Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation. | [optional] 

### Return type

[**EmailDraftDto**](EmailDraftDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateInbox**
> InboxDto agentCreateInbox(createInboxDto)

Create an inbox with an account-wide inbox-manager connection

Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final createInboxDto = CreateInboxDto(); // CreateInboxDto | 

try {
    final result = api_instance.agentCreateInbox(createInboxDto);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxDto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateReplyDraft**
> EmailDraftDto agentCreateReplyDraft(emailId, replyToEmailOptions)

Create a correctly threaded reply draft

Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final replyToEmailOptions = ReplyToEmailOptions(); // ReplyToEmailOptions | 

try {
    final result = api_instance.agentCreateReplyDraft(emailId, replyToEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateReplyDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 

### Return type

[**EmailDraftDto**](EmailDraftDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateTotpDeviceForBase32SecretKey**
> TotpDeviceDto agentCreateTotpDeviceForBase32SecretKey(createTotpDeviceBase32SecretKeyOptions)

Create an agent-managed TOTP device from a base32 secret key

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final createTotpDeviceBase32SecretKeyOptions = CreateTotpDeviceBase32SecretKeyOptions(); // CreateTotpDeviceBase32SecretKeyOptions | 

try {
    final result = api_instance.agentCreateTotpDeviceForBase32SecretKey(createTotpDeviceBase32SecretKeyOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateTotpDeviceForBase32SecretKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceBase32SecretKeyOptions** | [**CreateTotpDeviceBase32SecretKeyOptions**](CreateTotpDeviceBase32SecretKeyOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateTotpDeviceForCustom**
> TotpDeviceDto agentCreateTotpDeviceForCustom(createTotpDeviceCustomOptions)

Create an agent-managed TOTP device from custom options

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final createTotpDeviceCustomOptions = CreateTotpDeviceCustomOptions(); // CreateTotpDeviceCustomOptions | 

try {
    final result = api_instance.agentCreateTotpDeviceForCustom(createTotpDeviceCustomOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateTotpDeviceForCustom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceCustomOptions** | [**CreateTotpDeviceCustomOptions**](CreateTotpDeviceCustomOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentCreateTotpDeviceForOtpAuthUrl**
> TotpDeviceDto agentCreateTotpDeviceForOtpAuthUrl(createTotpDeviceOtpAuthUrlOptions)

Create an agent-managed TOTP device from an OTP Auth URL

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final createTotpDeviceOtpAuthUrlOptions = CreateTotpDeviceOtpAuthUrlOptions(); // CreateTotpDeviceOtpAuthUrlOptions | 

try {
    final result = api_instance.agentCreateTotpDeviceForOtpAuthUrl(createTotpDeviceOtpAuthUrlOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentCreateTotpDeviceForOtpAuthUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentDeferWorkItem**
> AgentDeferredWorkItemDto agentDeferWorkItem(conversationId, deferAgentWorkItemOptions)

Defer a work item to human review

Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final deferAgentWorkItemOptions = DeferAgentWorkItemOptions(); // DeferAgentWorkItemOptions | 

try {
    final result = api_instance.agentDeferWorkItem(conversationId, deferAgentWorkItemOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentDeferWorkItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **deferAgentWorkItemOptions** | [**DeferAgentWorkItemOptions**](DeferAgentWorkItemOptions)|  | 

### Return type

[**AgentDeferredWorkItemDto**](AgentDeferredWorkItemDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentDeleteEmailDraft**
> agentDeleteEmailDraft(inboxId, draftId)

Delete a scoped email draft for an agent

Deletes a saved draft without sending it.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the draft belongs to
final draftId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of draft

try {
    api_instance.agentDeleteEmailDraft(inboxId, draftId);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentDeleteEmailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the draft belongs to | 
 **draftId** | **String**| ID of draft | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentDeleteTotpDevice**
> agentDeleteTotpDevice(id)

Delete an agent-managed TOTP device

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.agentDeleteTotpDevice(id);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentDeleteTotpDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentExtractEmailAttachmentText**
> ExtractAttachmentTextResult agentExtractEmailAttachmentText(emailId, attachmentId, extractAttachmentTextOptions)

Extract text from a scoped email attachment for an agent

Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final attachmentId = attachmentId_example; // String | 
final extractAttachmentTextOptions = ExtractAttachmentTextOptions(); // ExtractAttachmentTextOptions | 

try {
    final result = api_instance.agentExtractEmailAttachmentText(emailId, attachmentId, extractAttachmentTextOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentExtractEmailAttachmentText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **attachmentId** | **String**|  | 
 **extractAttachmentTextOptions** | [**ExtractAttachmentTextOptions**](ExtractAttachmentTextOptions)|  | [optional] 

### Return type

[**ExtractAttachmentTextResult**](ExtractAttachmentTextResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGenerateTotpDeviceCode**
> TotpDeviceCodeDto agentGenerateTotpDeviceCode(id, at, minSecondsUntilExpire)

Generate a code for an agent-managed TOTP device

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final at = 2013-10-20T19:20:30+01:00; // DateTime | 
final minSecondsUntilExpire = 56; // int | Minimum remaining code lifetime. The request may wait for the next period when needed.

try {
    final result = api_instance.agentGenerateTotpDeviceCode(id, at, minSecondsUntilExpire);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGenerateTotpDeviceCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **at** | **DateTime**|  | [optional] 
 **minSecondsUntilExpire** | **int**| Minimum remaining code lifetime. The request may wait for the next period when needed. | [optional] [default to 5]

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetCapabilities**
> AgentCapabilitiesDto agentGetCapabilities()

Discover this agent connection's capabilities

Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();

try {
    final result = api_instance.agentGetCapabilities();
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetCapabilities: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentCapabilitiesDto**](AgentCapabilitiesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetConversationV2**
> AgentConversationDetailV2Dto agentGetConversationV2(conversationId)

Get one scoped conversation

Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetConversationV2(conversationId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetConversationV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 

### Return type

[**AgentConversationDetailV2Dto**](AgentConversationDetailV2Dto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetEmail**
> Email agentGetEmail(emailId)

Get scoped hydrated email for an agent

Returns parsed email content after resolving the message inbox and checking agent scope.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to inspect

try {
    final result = api_instance.agentGetEmail(emailId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to inspect | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetEmailDraft**
> EmailDraftDto agentGetEmailDraft(inboxId, draftId)

Get a scoped email draft for an agent

Returns a saved draft including the full SendEmailOptions payload.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the draft belongs to
final draftId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of draft

try {
    final result = api_instance.agentGetEmailDraft(inboxId, draftId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetEmailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the draft belongs to | 
 **draftId** | **String**| ID of draft | 

### Return type

[**EmailDraftDto**](EmailDraftDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetEmailSummary**
> EmailPreview agentGetEmailSummary(emailId)

Get scoped email summary for an agent

Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to inspect

try {
    final result = api_instance.agentGetEmailSummary(emailId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetEmailSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to inspect | 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetEmailThread**
> ScopedEmailThread agentGetEmailThread(emailId, sort)

Get a scoped email thread for an agent

Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sort = sort_example; // String | 

try {
    final result = api_instance.agentGetEmailThread(emailId, sort);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetEmailThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **sort** | **String**|  | [optional] [default to 'ASC']

### Return type

[**ScopedEmailThread**](ScopedEmailThread)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetLatestInboxEmail**
> Email agentGetLatestInboxEmail(inboxId, timeoutMillis, unreadOnly, since, before)

Get latest scoped inbox email for an agent

Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the agent may read
final timeoutMillis = 789; // int | Timeout milliseconds to wait for latest email
final unreadOnly = true; // bool | Only return unread emails
final since = 2013-10-20T19:20:30+01:00; // DateTime | Only return email received at or after this time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Only return email received before this time

try {
    final result = api_instance.agentGetLatestInboxEmail(inboxId, timeoutMillis, unreadOnly, since, before);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetLatestInboxEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the agent may read | 
 **timeoutMillis** | **int**| Timeout milliseconds to wait for latest email | [optional] [default to 30000]
 **unreadOnly** | **bool**| Only return unread emails | [optional] [default to false]
 **since** | **DateTime**| Only return email received at or after this time | [optional] 
 **before** | **DateTime**| Only return email received before this time | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetNextWorkItem**
> AgentWorkItemDto agentGetNextWorkItem(getNextAgentWorkItemOptions)

Claim the next conversation work item

Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final getNextAgentWorkItemOptions = GetNextAgentWorkItemOptions(); // GetNextAgentWorkItemOptions | 

try {
    final result = api_instance.agentGetNextWorkItem(getNextAgentWorkItemOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetNextWorkItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getNextAgentWorkItemOptions** | [**GetNextAgentWorkItemOptions**](GetNextAgentWorkItemOptions)|  | 

### Return type

[**AgentWorkItemDto**](AgentWorkItemDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetPhoneMessageThreadItems**
> PagePhoneMessageThreadItemProjection agentGetPhoneMessageThreadItems(phoneNumberId, otherPhoneNumber, page, size)

List SMS thread messages

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final otherPhoneNumber = otherPhoneNumber_example; // String | Other participant phone number in E.164 format
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.agentGetPhoneMessageThreadItems(phoneNumberId, otherPhoneNumber, page, size);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetPhoneMessageThreadItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **otherPhoneNumber** | **String**| Other participant phone number in E.164 format | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetPhoneMessageThreads**
> PagePhoneMessageThreadProjection agentGetPhoneMessageThreads(phoneNumberId, page, size)

List SMS threads

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.agentGetPhoneMessageThreads(phoneNumberId, page, size);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetPhoneMessageThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetPhoneNumber**
> PhoneNumberDto agentGetPhoneNumber(phoneNumberId)

Get an assigned phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetPhoneNumber(phoneNumberId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetPhoneNumbers**
> PageAgentPhoneNumber agentGetPhoneNumbers(page, size, sort, search)

List assigned phone numbers

Returns only active phone numbers explicitly assigned to this agent connection.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 
final search = search_example; // String | 

try {
    final result = api_instance.agentGetPhoneNumbers(page, size, sort, search);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetPhoneNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **search** | **String**|  | [optional] 

### Return type

[**PageAgentPhoneNumber**](PageAgentPhoneNumber)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetReceivedSmsMessage**
> SmsDto agentGetReceivedSmsMessage(phoneNumberId, smsId)

Get received SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetReceivedSmsMessage(phoneNumberId, smsId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetReceivedSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **smsId** | **String**|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetReceivedSmsMessages**
> PageSmsProjection agentGetReceivedSmsMessages(phoneNumberId, page, size, sort, since, before, search, favourite)

List received SMS for an assigned phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final search = search_example; // String | 
final favourite = true; // bool | 

try {
    final result = api_instance.agentGetReceivedSmsMessages(phoneNumberId, page, size, sort, since, before, search, favourite);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetReceivedSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search** | **String**|  | [optional] 
 **favourite** | **bool**|  | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetSentSmsMessage**
> SentSmsDto agentGetSentSmsMessage(phoneNumberId, sentSmsId)

Get sent SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sentSmsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetSentSmsMessage(phoneNumberId, sentSmsId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetSentSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **sentSmsId** | **String**|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetSentSmsMessages**
> PageSentSmsProjection agentGetSentSmsMessages(phoneNumberId, page, size, sort, since, before, search)

List sent SMS for an assigned phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final search = search_example; // String | 

try {
    final result = api_instance.agentGetSentSmsMessages(phoneNumberId, page, size, sort, since, before, search);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetSentSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search** | **String**|  | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetSmsConversation**
> AgentSmsConversationDetailDto agentGetSmsConversation(conversationId)

Get one SMS conversation

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetSmsConversation(conversationId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetSmsConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 

### Return type

[**AgentSmsConversationDetailDto**](AgentSmsConversationDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetTotpDevice**
> TotpDeviceDto agentGetTotpDevice(id)

Get an agent-accessible TOTP device

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentGetTotpDevice(id);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetTotpDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetTotpDeviceBy**
> TotpDeviceOptionalDto agentGetTotpDeviceBy(name, issuer, username)

Find an agent-accessible TOTP device by name, issuer, or username

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final name = name_example; // String | 
final issuer = issuer_example; // String | 
final username = username_example; // String | 

try {
    final result = api_instance.agentGetTotpDeviceBy(name, issuer, username);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetTotpDeviceBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **issuer** | **String**|  | [optional] 
 **username** | **String**|  | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentGetTotpDevices**
> PageTotpDeviceProjection agentGetTotpDevices(page, size, sort, issuer, username)

List agent-accessible TOTP devices

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 
final issuer = issuer_example; // String | 
final username = username_example; // String | 

try {
    final result = api_instance.agentGetTotpDevices(page, size, sort, issuer, username);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentGetTotpDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **issuer** | **String**|  | [optional] 
 **username** | **String**|  | [optional] 

### Return type

[**PageTotpDeviceProjection**](PageTotpDeviceProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListAccessibleInboxes**
> AccessibleInboxList agentListAccessibleInboxes(size, sort)

List inboxes accessible to an agent

Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final size = 56; // int | 
final sort = sort_example; // String | 

try {
    final result = api_instance.agentListAccessibleInboxes(size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListAccessibleInboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'ASC']

### Return type

[**AccessibleInboxList**](AccessibleInboxList)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListAutomationEvents**
> AgentAutomationEventPageDto agentListAutomationEvents(cursor, eventType, size, waitSeconds)

Read durable scoped automation events

Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final cursor = cursor_example; // String | 
final eventType = []; // Set<String> | 
final size = 56; // int | 
final waitSeconds = 56; // int | 

try {
    final result = api_instance.agentListAutomationEvents(cursor, eventType, size, waitSeconds);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListAutomationEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**|  | [optional] 
 **eventType** | [**Set<String>**](String)|  | [optional] [default to const {}]
 **size** | **int**|  | [optional] [default to 20]
 **waitSeconds** | **int**|  | [optional] [default to 0]

### Return type

[**AgentAutomationEventPageDto**](AgentAutomationEventPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListConversationsV2**
> AgentConversationCursorPageDto agentListConversationsV2(workflowState, outcome, reviewStatus, inboxId, unread, hasAttachments, since, before, search, sort, cursor, size)

List active conversations with an opaque keyset cursor

Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final workflowState = workflowState_example; // String | 
final outcome = outcome_example; // String | 
final reviewStatus = reviewStatus_example; // String | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final unread = true; // bool | 
final hasAttachments = true; // bool | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final search = search_example; // String | 
final sort = sort_example; // String | 
final cursor = cursor_example; // String | 
final size = 56; // int | 

try {
    final result = api_instance.agentListConversationsV2(workflowState, outcome, reviewStatus, inboxId, unread, hasAttachments, since, before, search, sort, cursor, size);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListConversationsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowState** | **String**|  | [optional] 
 **outcome** | **String**|  | [optional] 
 **reviewStatus** | **String**|  | [optional] 
 **inboxId** | **String**|  | [optional] 
 **unread** | **bool**|  | [optional] 
 **hasAttachments** | **bool**|  | [optional] 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] [default to 'LAST_MESSAGE_DESC']
 **cursor** | **String**|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**AgentConversationCursorPageDto**](AgentConversationCursorPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListEmailAttachments**
> List<AttachmentMetaData> agentListEmailAttachments(emailId)

List attachments on a scoped email for an agent

Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentListEmailAttachments(emailId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListEmailAttachments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 

### Return type

[**List<AttachmentMetaData>**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListEmailDrafts**
> PageEmailDraftProjection agentListEmailDrafts(inboxId, page, size, sort)

List scoped email drafts for an agent

Lists draft previews for one scoped inbox.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox to list drafts for
final page = 56; // int | Optional page index in draft pagination
final size = 56; // int | Optional page size in draft pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.agentListEmailDrafts(inboxId, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListEmailDrafts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox to list drafts for | 
 **page** | **int**| Optional page index in draft pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in draft pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageEmailDraftProjection**](PageEmailDraftProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListInboxEmails**
> PageEmailPreview agentListInboxEmails(inboxId, page, size, sort, since, before, syncConnectors)

List scoped inbox emails for an agent

Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the agent may read
final page = 56; // int | Optional page index in inbox emails list pagination
final size = 56; // int | Optional page size in inbox emails list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by received before given date time
final syncConnectors = true; // bool | Sync connectors before fetching emails

try {
    final result = api_instance.agentListInboxEmails(inboxId, page, size, sort, since, before, syncConnectors);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListInboxEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the agent may read | 
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 
 **syncConnectors** | **bool**| Sync connectors before fetching emails | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListInboxThreads**
> PageEmailThreadProjection agentListInboxThreads(inboxId, page, size, sort, search, since, before)

List scoped inbox threads for an agent

Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 
final search = search_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.agentListInboxThreads(inboxId, page, size, sort, search, since, before);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListInboxThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **search** | **String**|  | [optional] 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentListSmsConversations**
> AgentSmsConversationCursorPageDto agentListSmsConversations(workflowState, outcome, reviewStatus, phoneNumberId, unread, hasMedia, since, before, search, sort, cursor, size)

List active SMS conversations

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final workflowState = workflowState_example; // String | 
final outcome = outcome_example; // String | 
final reviewStatus = reviewStatus_example; // String | 
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final unread = true; // bool | 
final hasMedia = true; // bool | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final search = search_example; // String | 
final sort = sort_example; // String | 
final cursor = cursor_example; // String | 
final size = 56; // int | 

try {
    final result = api_instance.agentListSmsConversations(workflowState, outcome, reviewStatus, phoneNumberId, unread, hasMedia, since, before, search, sort, cursor, size);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentListSmsConversations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowState** | **String**|  | [optional] 
 **outcome** | **String**|  | [optional] 
 **reviewStatus** | **String**|  | [optional] 
 **phoneNumberId** | **String**|  | [optional] 
 **unread** | **bool**|  | [optional] 
 **hasMedia** | **bool**|  | [optional] 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] [default to 'LAST_MESSAGE_DESC']
 **cursor** | **String**|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**AgentSmsConversationCursorPageDto**](AgentSmsConversationCursorPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentPrepareWorkItemReply**
> AgentPreparedReplyDto agentPrepareWorkItemReply(conversationId, prepareAgentReplyOptions)

Prepare a guarded reply draft

Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final prepareAgentReplyOptions = PrepareAgentReplyOptions(); // PrepareAgentReplyOptions | 

try {
    final result = api_instance.agentPrepareWorkItemReply(conversationId, prepareAgentReplyOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentPrepareWorkItemReply: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **prepareAgentReplyOptions** | [**PrepareAgentReplyOptions**](PrepareAgentReplyOptions)|  | 

### Return type

[**AgentPreparedReplyDto**](AgentPreparedReplyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentReleaseConversationClaim**
> agentReleaseConversationClaim(conversationId, claimId)

Release a conversation claim

Release is idempotent; repeating it does not fail.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final claimId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.agentReleaseConversationClaim(conversationId, claimId);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentReleaseConversationClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **claimId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentReleaseSmsClaim**
> agentReleaseSmsClaim(conversationId, claimId)

Release an SMS conversation claim

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final claimId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.agentReleaseSmsClaim(conversationId, claimId);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentReleaseSmsClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **claimId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentRenewConversationClaim**
> AgentConversationClaimDto agentRenewConversationClaim(conversationId, claimId, renewAgentConversationClaimOptions)

Renew a conversation claim

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final claimId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final renewAgentConversationClaimOptions = RenewAgentConversationClaimOptions(); // RenewAgentConversationClaimOptions | 

try {
    final result = api_instance.agentRenewConversationClaim(conversationId, claimId, renewAgentConversationClaimOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentRenewConversationClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **claimId** | **String**|  | 
 **renewAgentConversationClaimOptions** | [**RenewAgentConversationClaimOptions**](RenewAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentRenewSmsClaim**
> AgentConversationClaimDto agentRenewSmsClaim(conversationId, claimId, renewAgentConversationClaimOptions)

Renew an SMS conversation claim

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final claimId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final renewAgentConversationClaimOptions = RenewAgentConversationClaimOptions(); // RenewAgentConversationClaimOptions | 

try {
    final result = api_instance.agentRenewSmsClaim(conversationId, claimId, renewAgentConversationClaimOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentRenewSmsClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **claimId** | **String**|  | 
 **renewAgentConversationClaimOptions** | [**RenewAgentConversationClaimOptions**](RenewAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentReplyToEmail**
> SentEmailDto agentReplyToEmail(emailId, replyToEmailOptions, idempotencyKey, expectedConversationVersion, expectedLatestEmailId)

Reply to a scoped email as an agent

Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email to reply to
final replyToEmailOptions = ReplyToEmailOptions(); // ReplyToEmailOptions | 
final idempotencyKey = idempotencyKey_example; // String | 
final expectedConversationVersion = 789; // int | 
final expectedLatestEmailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentReplyToEmail(emailId, replyToEmailOptions, idempotencyKey, expectedConversationVersion, expectedLatestEmailId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentReplyToEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| ID of email to reply to | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 
 **idempotencyKey** | **String**|  | [optional] 
 **expectedConversationVersion** | **int**|  | [optional] 
 **expectedLatestEmailId** | **String**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentReplyToSms**
> SentSmsDto agentReplyToSms(phoneNumberId, smsId, smsReplyOptions, idempotencyKey, expectedConversationVersion, expectedLatestMessageId)

Reply to received SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsReplyOptions = SmsReplyOptions(); // SmsReplyOptions | 
final idempotencyKey = idempotencyKey_example; // String | 
final expectedConversationVersion = 789; // int | 
final expectedLatestMessageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentReplyToSms(phoneNumberId, smsId, smsReplyOptions, idempotencyKey, expectedConversationVersion, expectedLatestMessageId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentReplyToSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **smsId** | **String**|  | 
 **smsReplyOptions** | [**SmsReplyOptions**](SmsReplyOptions)|  | 
 **idempotencyKey** | **String**|  | [optional] 
 **expectedConversationVersion** | **int**|  | [optional] 
 **expectedLatestMessageId** | **String**|  | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentReportWorkerHeartbeat**
> AgentWorkerHeartbeatDto agentReportWorkerHeartbeat(agentWorkerHeartbeatOptions)

Report a worker heartbeat

Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final agentWorkerHeartbeatOptions = AgentWorkerHeartbeatOptions(); // AgentWorkerHeartbeatOptions | 

try {
    final result = api_instance.agentReportWorkerHeartbeat(agentWorkerHeartbeatOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentReportWorkerHeartbeat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentWorkerHeartbeatOptions** | [**AgentWorkerHeartbeatOptions**](AgentWorkerHeartbeatOptions)|  | 

### Return type

[**AgentWorkerHeartbeatDto**](AgentWorkerHeartbeatDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentRequestConversationHandoff**
> AgentConversationHandoffDto agentRequestConversationHandoff(conversationId, createAgentConversationHandoffOptions)

Request human review for a conversation

Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createAgentConversationHandoffOptions = CreateAgentConversationHandoffOptions(); // CreateAgentConversationHandoffOptions | 

try {
    final result = api_instance.agentRequestConversationHandoff(conversationId, createAgentConversationHandoffOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentRequestConversationHandoff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **createAgentConversationHandoffOptions** | [**CreateAgentConversationHandoffOptions**](CreateAgentConversationHandoffOptions)|  | 

### Return type

[**AgentConversationHandoffDto**](AgentConversationHandoffDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentRequestSmsHandoff**
> AgentConversationHandoffDto agentRequestSmsHandoff(conversationId, createAgentSmsConversationHandoffOptions)

Request human review for an SMS conversation

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final conversationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createAgentSmsConversationHandoffOptions = CreateAgentSmsConversationHandoffOptions(); // CreateAgentSmsConversationHandoffOptions | 

try {
    final result = api_instance.agentRequestSmsHandoff(conversationId, createAgentSmsConversationHandoffOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentRequestSmsHandoff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **String**|  | 
 **createAgentSmsConversationHandoffOptions** | [**CreateAgentSmsConversationHandoffOptions**](CreateAgentSmsConversationHandoffOptions)|  | 

### Return type

[**AgentConversationHandoffDto**](AgentConversationHandoffDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentSearchInboxEmails**
> List<EmailPreview> agentSearchInboxEmails(inboxId, matchOptions, size, sort, since, before, unreadOnly)

Search scoped inbox emails for an agent

Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final matchOptions = MatchOptions(); // MatchOptions | 
final size = 56; // int | 
final sort = sort_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final unreadOnly = true; // bool | 

try {
    final result = api_instance.agentSearchInboxEmails(inboxId, matchOptions, size, sort, since, before, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentSearchInboxEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **matchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **unreadOnly** | **bool**|  | [optional] 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentSendEmailDraft**
> SentEmailDto agentSendEmailDraft(inboxId, draftId, idempotencyKey)

Send a scoped email draft for an agent

Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the draft belongs to
final draftId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of draft
final idempotencyKey = idempotencyKey_example; // String | 

try {
    final result = api_instance.agentSendEmailDraft(inboxId, draftId, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentSendEmailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the draft belongs to | 
 **draftId** | **String**| ID of draft | 
 **idempotencyKey** | **String**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentSendSms**
> SentSmsDto agentSendSms(phoneNumberId, smsSendOptions, idempotencyKey, expectedConversationVersion, expectedLatestMessageId)

Send SMS from an assigned phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsSendOptions = SmsSendOptions(); // SmsSendOptions | 
final idempotencyKey = idempotencyKey_example; // String | 
final expectedConversationVersion = 789; // int | 
final expectedLatestMessageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.agentSendSms(phoneNumberId, smsSendOptions, idempotencyKey, expectedConversationVersion, expectedLatestMessageId);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentSendSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **smsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 
 **idempotencyKey** | **String**|  | [optional] 
 **expectedConversationVersion** | **int**|  | [optional] 
 **expectedLatestMessageId** | **String**|  | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentUpdateEmailDraft**
> EmailDraftDto agentUpdateEmailDraft(inboxId, draftId, sendEmailOptions)

Update a scoped email draft for an agent

Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox the draft belongs to
final draftId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of draft
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 

try {
    final result = api_instance.agentUpdateEmailDraft(inboxId, draftId, sendEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentUpdateEmailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox the draft belongs to | 
 **draftId** | **String**| ID of draft | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**EmailDraftDto**](EmailDraftDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentUpdateInbox**
> InboxDto agentUpdateInbox(inboxId, updateInboxOptions)

Update an inbox visible to an inbox-manager connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateInboxOptions = UpdateInboxOptions(); // UpdateInboxOptions | 

try {
    final result = api_instance.agentUpdateInbox(inboxId, updateInboxOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentUpdateInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **agentUpdateTotpDevice**
> TotpDeviceDto agentUpdateTotpDevice(id, updateTotpDeviceOptions)

Update an agent-managed TOTP device

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AgentControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateTotpDeviceOptions = UpdateTotpDeviceOptions(); // UpdateTotpDeviceOptions | 

try {
    final result = api_instance.agentUpdateTotpDevice(id, updateTotpDeviceOptions);
    print(result);
} catch (e) {
    print('Exception when calling AgentControllerApi->agentUpdateTotpDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateTotpDeviceOptions** | [**UpdateTotpDeviceOptions**](UpdateTotpDeviceOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

