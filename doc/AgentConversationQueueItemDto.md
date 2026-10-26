# mailslurp.model.AgentConversationQueueItemDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversationId** | **String** |  | 
**threadId** | **String** |  | 
**inboxId** | **String** |  | 
**subject** | **String** |  | [optional] 
**customer** | **String** |  | [optional] 
**lastSender** | **String** |  | [optional] 
**lastExcerpt** | **String** |  | [optional] 
**latestMessageDirection** | **String** |  | 
**latestEmailId** | **String** |  | [optional] 
**latestReceivedEmailId** | **String** |  | [optional] 
**latestSentEmailId** | **String** |  | [optional] 
**messageCount** | **int** |  | 
**unreadCount** | **int** |  | 
**hasAttachments** | **bool** |  | 
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


