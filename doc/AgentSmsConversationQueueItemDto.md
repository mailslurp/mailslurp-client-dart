# mailslurp.model.AgentSmsConversationQueueItemDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversationId** | **String** |  | 
**phoneNumberId** | **String** |  | 
**phoneNumber** | **String** |  | [optional] 
**otherPhoneNumber** | **String** |  | 
**lastBody** | **String** |  | [optional] 
**latestMessageDirection** | **String** |  | 
**latestMessageId** | **String** |  | [optional] 
**latestReceivedSmsId** | **String** |  | [optional] 
**latestSentSmsId** | **String** |  | [optional] 
**messageCount** | **int** |  | 
**unreadCount** | **int** |  | 
**hasMedia** | **bool** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**lastMessageAt** | [**DateTime**](DateTime) |  | 
**projectedAt** | [**DateTime**](DateTime) |  | 
**version** | **int** |  | 
**workflowState** | **String** |  | 
**outcome** | **String** |  | [optional] 
**reviewStatus** | **String** |  | 
**requiresHumanReview** | **bool** |  | 
**needsOperationalAttention** | **bool** |  | 
**claim** | [**AgentConversationClaimDto**](AgentConversationClaimDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


