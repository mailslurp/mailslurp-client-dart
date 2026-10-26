# mailslurp.model.SubscriptionDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**userId** | **String** |  | 
**customerId** | **String** |  | [optional] 
**subscriptionId** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**cost** | **int** |  | [optional] 
**isDecimalLess** | **bool** |  | 
**subscriptionType** | **String** |  | 
**subscriptionSchedule** | **String** |  | 
**monthlyInboxes** | **int** |  | 
**monthlyReceive** | **int** |  | 
**oauthConnections** | **int** |  | 
**storageBytes** | **int** |  | 
**totalInboxes** | **int** |  | 
**phoneNumbers** | **int** |  | 
**phoneProvisionRequestLimit** | **int** |  | 
**monthlySend** | **int** |  | 
**domains** | **int** |  | 
**members** | **int** |  | 
**aliases** | **int** |  | 
**threads** | **int** |  | 
**recipients** | **int** |  | 
**attachments** | **bool** |  | 
**bulk** | **bool** |  | 
**permanentInbox** | **bool** |  | 
**contacts** | **bool** |  | 
**webhooks** | **bool** |  | 
**password** | **bool** |  | 
**inboxRulesets** | **bool** |  | 
**zapier** | **bool** |  | 
**trackingPixels** | **bool** |  | 
**inboxForwarders** | **bool** |  | 
**inboxRepliers** | **bool** |  | 
**attachmentAutomations** | **bool** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 
**monthlyGetMailServerRecords** | **int** |  | 
**monthlyVerifyEmailAddress** | **int** |  | 
**metered** | **bool** |  | 
**maxUniqueRecipients** | **int** |  | 
**externalPlanId** | **String** |  | [optional] 
**externalValidationPlanId** | **String** | Use validation entity | [optional] 
**externalValidationSubscriptionItemId** | **String** | Use validation entity | [optional] 
**sendWithQueue** | **bool** |  | [optional] 
**trialDays** | **int** |  | [optional] 
**cancelAt** | [**DateTime**](DateTime) |  | [optional] 
**trialEnd** | [**DateTime**](DateTime) |  | [optional] 
**trialStart** | [**DateTime**](DateTime) |  | [optional] 
**trialAdjustmentReason** | **String** |  | [optional] 
**trialAdjustedAt** | [**DateTime**](DateTime) |  | [optional] 
**samlSSO** | **bool** |  | [optional] 
**oidcSSO** | **bool** |  | [optional] 
**scimProvisioning** | **bool** |  | [optional] 
**demoDaysRemaining** | **int** |  | [optional] 
**organizations** | **int** |  | [optional] 
**emailFeatureCheck** | **bool** |  | [optional] 
**backup** | **bool** |  | [optional] 
**screenshots** | **bool** |  | [optional] 
**devicePreviews** | **bool** |  | [optional] 
**userPermissions** | **bool** |  | [optional] 
**environments** | **bool** |  | [optional] 
**importExport** | **bool** |  | [optional] 
**auditLogs** | **bool** |  | [optional] 
**deliverabilityTest** | **bool** |  | [optional] 
**emailAudit** | **bool** |  | [optional] 
**inboxWarmUp** | **bool** |  | [optional] 
**warmupPremiumSeedAccess** | **bool** |  | [optional] 
**domainMonitor** | **bool** |  | [optional] 
**campaignProbe** | **bool** |  | [optional] 
**virtualTotpDevices** | **bool** |  | [optional] 
**currentPeriodEnd** | [**DateTime**](DateTime) |  | 
**currentPeriodStart** | [**DateTime**](DateTime) |  | 
**subscriptionStatus** | **String** |  | [optional] 
**subscriptionStatusIsBad** | **bool** |  | 
**dailyReceive** | **int** |  | 
**dailySend** | **int** |  | 
**maxEmailSizeMb** | **int** |  | 
**aiTransformers** | **bool** |  | 
**gmailInboxConnection** | **bool** |  | 
**aiDestinationSheets** | **bool** |  | 
**gmailInboxConnectionLimit** | **int** |  | 
**permitsExternalSend** | **bool** |  | [optional] 
**totalPermanentInboxes** | **int** |  | [optional] 
**monthlyTemporaryInboxes** | **int** |  | [optional] 
**agents** | **int** | Maximum active API or MCP agent connections. Null identifies a legacy unlimited subscription. | [optional] 
**maxInboxPlacementSeedAddressesPerTest** | **int** | Maximum seed inbox addresses assigned to one inbox placement test. | 
**maxAutomatedInboxPlacementSchedules** | **int** | Maximum non-deleted automated inbox placement schedules. Paused schedules count; deleted schedules release capacity. | 
**includedWarmupSenderSeats** | **int** | Warmup sender seats included by the base subscription before paid add-ons. | 
**includedMonthlyWarmupCreditsPerSender** | **int** |  | 
**warmupControlledRecipientCreditWeight** | **int** |  | 
**warmupPremiumRecipientCreditWeight** | **int** |  | 
**loadTest** | **bool** |  | [optional] 
**costMajor** | **num** | Subscription cost in major currency units for analytics and conversion value reporting. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


