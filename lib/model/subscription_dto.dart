//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriptionDto {
  /// Returns a new [SubscriptionDto] instance.
  SubscriptionDto({
    this.id,
    required this.userId,
    this.customerId,
    this.subscriptionId,
    this.currency,
    this.cost,
    required this.isDecimalLess,
    required this.subscriptionType,
    required this.subscriptionSchedule,
    required this.monthlyInboxes,
    required this.monthlyReceive,
    required this.oauthConnections,
    required this.storageBytes,
    required this.totalInboxes,
    required this.phoneNumbers,
    required this.phoneProvisionRequestLimit,
    required this.monthlySend,
    required this.domains,
    required this.members,
    required this.aliases,
    required this.threads,
    required this.recipients,
    required this.attachments,
    required this.bulk,
    required this.permanentInbox,
    required this.contacts,
    required this.webhooks,
    required this.password,
    required this.inboxRulesets,
    required this.zapier,
    required this.trackingPixels,
    required this.inboxForwarders,
    required this.inboxRepliers,
    required this.attachmentAutomations,
    required this.createdAt,
    required this.updatedAt,
    required this.monthlyGetMailServerRecords,
    required this.monthlyVerifyEmailAddress,
    required this.metered,
    required this.maxUniqueRecipients,
    this.externalPlanId,
    this.externalValidationPlanId,
    this.externalValidationSubscriptionItemId,
    this.sendWithQueue,
    this.trialDays,
    this.cancelAt,
    this.trialEnd,
    this.trialStart,
    this.trialAdjustmentReason,
    this.trialAdjustedAt,
    this.samlSSO,
    this.oidcSSO,
    this.scimProvisioning,
    this.demoDaysRemaining,
    this.organizations,
    this.emailFeatureCheck,
    this.backup,
    this.screenshots,
    this.devicePreviews,
    this.userPermissions,
    this.environments,
    this.importExport,
    this.auditLogs,
    this.deliverabilityTest,
    this.emailAudit,
    this.inboxWarmUp,
    this.warmupPremiumSeedAccess,
    this.domainMonitor,
    this.campaignProbe,
    this.virtualTotpDevices,
    required this.currentPeriodEnd,
    required this.currentPeriodStart,
    this.subscriptionStatus,
    required this.subscriptionStatusIsBad,
    required this.dailyReceive,
    required this.dailySend,
    required this.maxEmailSizeMb,
    required this.aiTransformers,
    required this.gmailInboxConnection,
    required this.aiDestinationSheets,
    required this.gmailInboxConnectionLimit,
    this.permitsExternalSend,
    this.totalPermanentInboxes,
    this.monthlyTemporaryInboxes,
    this.agents,
    required this.maxInboxPlacementSeedAddressesPerTest,
    required this.maxAutomatedInboxPlacementSchedules,
    required this.includedWarmupSenderSeats,
    required this.includedMonthlyWarmupCreditsPerSender,
    required this.warmupControlledRecipientCreditWeight,
    required this.warmupPremiumRecipientCreditWeight,
    this.loadTest,
    this.costMajor,
  });

  String? id;

  String userId;

  String? customerId;

  String? subscriptionId;

  SubscriptionDtoCurrencyEnum? currency;

  int? cost;

  bool isDecimalLess;

  SubscriptionDtoSubscriptionTypeEnum subscriptionType;

  SubscriptionDtoSubscriptionScheduleEnum subscriptionSchedule;

  int monthlyInboxes;

  int monthlyReceive;

  int oauthConnections;

  int storageBytes;

  int totalInboxes;

  int phoneNumbers;

  int phoneProvisionRequestLimit;

  int monthlySend;

  int domains;

  int members;

  int aliases;

  int threads;

  int recipients;

  bool attachments;

  bool bulk;

  bool permanentInbox;

  bool contacts;

  bool webhooks;

  bool password;

  bool inboxRulesets;

  bool zapier;

  bool trackingPixels;

  bool inboxForwarders;

  bool inboxRepliers;

  bool attachmentAutomations;

  DateTime createdAt;

  DateTime updatedAt;

  int monthlyGetMailServerRecords;

  int monthlyVerifyEmailAddress;

  bool metered;

  int maxUniqueRecipients;

  String? externalPlanId;

  /// Use validation entity
  String? externalValidationPlanId;

  /// Use validation entity
  String? externalValidationSubscriptionItemId;

  bool? sendWithQueue;

  int? trialDays;

  DateTime? cancelAt;

  DateTime? trialEnd;

  DateTime? trialStart;

  String? trialAdjustmentReason;

  DateTime? trialAdjustedAt;

  bool? samlSSO;

  bool? oidcSSO;

  bool? scimProvisioning;

  int? demoDaysRemaining;

  int? organizations;

  bool? emailFeatureCheck;

  bool? backup;

  bool? screenshots;

  bool? devicePreviews;

  bool? userPermissions;

  bool? environments;

  bool? importExport;

  bool? auditLogs;

  bool? deliverabilityTest;

  bool? emailAudit;

  bool? inboxWarmUp;

  bool? warmupPremiumSeedAccess;

  bool? domainMonitor;

  bool? campaignProbe;

  bool? virtualTotpDevices;

  DateTime currentPeriodEnd;

  DateTime currentPeriodStart;

  SubscriptionDtoSubscriptionStatusEnum? subscriptionStatus;

  bool subscriptionStatusIsBad;

  int dailyReceive;

  int dailySend;

  int maxEmailSizeMb;

  bool aiTransformers;

  bool gmailInboxConnection;

  bool aiDestinationSheets;

  int gmailInboxConnectionLimit;

  bool? permitsExternalSend;

  int? totalPermanentInboxes;

  int? monthlyTemporaryInboxes;

  /// Maximum active API or MCP agent connections. Null identifies a legacy unlimited subscription.
  int? agents;

  /// Maximum seed inbox addresses assigned to one inbox placement test.
  int maxInboxPlacementSeedAddressesPerTest;

  /// Maximum non-deleted automated inbox placement schedules. Paused schedules count; deleted schedules release capacity.
  int maxAutomatedInboxPlacementSchedules;

  /// Warmup sender seats included by the base subscription before paid add-ons.
  int includedWarmupSenderSeats;

  int includedMonthlyWarmupCreditsPerSender;

  int warmupControlledRecipientCreditWeight;

  int warmupPremiumRecipientCreditWeight;

  bool? loadTest;

  /// Subscription cost in major currency units for analytics and conversion value reporting.
  num? costMajor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionDto &&
     other.id == id &&
     other.userId == userId &&
     other.customerId == customerId &&
     other.subscriptionId == subscriptionId &&
     other.currency == currency &&
     other.cost == cost &&
     other.isDecimalLess == isDecimalLess &&
     other.subscriptionType == subscriptionType &&
     other.subscriptionSchedule == subscriptionSchedule &&
     other.monthlyInboxes == monthlyInboxes &&
     other.monthlyReceive == monthlyReceive &&
     other.oauthConnections == oauthConnections &&
     other.storageBytes == storageBytes &&
     other.totalInboxes == totalInboxes &&
     other.phoneNumbers == phoneNumbers &&
     other.phoneProvisionRequestLimit == phoneProvisionRequestLimit &&
     other.monthlySend == monthlySend &&
     other.domains == domains &&
     other.members == members &&
     other.aliases == aliases &&
     other.threads == threads &&
     other.recipients == recipients &&
     other.attachments == attachments &&
     other.bulk == bulk &&
     other.permanentInbox == permanentInbox &&
     other.contacts == contacts &&
     other.webhooks == webhooks &&
     other.password == password &&
     other.inboxRulesets == inboxRulesets &&
     other.zapier == zapier &&
     other.trackingPixels == trackingPixels &&
     other.inboxForwarders == inboxForwarders &&
     other.inboxRepliers == inboxRepliers &&
     other.attachmentAutomations == attachmentAutomations &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.monthlyGetMailServerRecords == monthlyGetMailServerRecords &&
     other.monthlyVerifyEmailAddress == monthlyVerifyEmailAddress &&
     other.metered == metered &&
     other.maxUniqueRecipients == maxUniqueRecipients &&
     other.externalPlanId == externalPlanId &&
     other.externalValidationPlanId == externalValidationPlanId &&
     other.externalValidationSubscriptionItemId == externalValidationSubscriptionItemId &&
     other.sendWithQueue == sendWithQueue &&
     other.trialDays == trialDays &&
     other.cancelAt == cancelAt &&
     other.trialEnd == trialEnd &&
     other.trialStart == trialStart &&
     other.trialAdjustmentReason == trialAdjustmentReason &&
     other.trialAdjustedAt == trialAdjustedAt &&
     other.samlSSO == samlSSO &&
     other.oidcSSO == oidcSSO &&
     other.scimProvisioning == scimProvisioning &&
     other.demoDaysRemaining == demoDaysRemaining &&
     other.organizations == organizations &&
     other.emailFeatureCheck == emailFeatureCheck &&
     other.backup == backup &&
     other.screenshots == screenshots &&
     other.devicePreviews == devicePreviews &&
     other.userPermissions == userPermissions &&
     other.environments == environments &&
     other.importExport == importExport &&
     other.auditLogs == auditLogs &&
     other.deliverabilityTest == deliverabilityTest &&
     other.emailAudit == emailAudit &&
     other.inboxWarmUp == inboxWarmUp &&
     other.warmupPremiumSeedAccess == warmupPremiumSeedAccess &&
     other.domainMonitor == domainMonitor &&
     other.campaignProbe == campaignProbe &&
     other.virtualTotpDevices == virtualTotpDevices &&
     other.currentPeriodEnd == currentPeriodEnd &&
     other.currentPeriodStart == currentPeriodStart &&
     other.subscriptionStatus == subscriptionStatus &&
     other.subscriptionStatusIsBad == subscriptionStatusIsBad &&
     other.dailyReceive == dailyReceive &&
     other.dailySend == dailySend &&
     other.maxEmailSizeMb == maxEmailSizeMb &&
     other.aiTransformers == aiTransformers &&
     other.gmailInboxConnection == gmailInboxConnection &&
     other.aiDestinationSheets == aiDestinationSheets &&
     other.gmailInboxConnectionLimit == gmailInboxConnectionLimit &&
     other.permitsExternalSend == permitsExternalSend &&
     other.totalPermanentInboxes == totalPermanentInboxes &&
     other.monthlyTemporaryInboxes == monthlyTemporaryInboxes &&
     other.agents == agents &&
     other.maxInboxPlacementSeedAddressesPerTest == maxInboxPlacementSeedAddressesPerTest &&
     other.maxAutomatedInboxPlacementSchedules == maxAutomatedInboxPlacementSchedules &&
     other.includedWarmupSenderSeats == includedWarmupSenderSeats &&
     other.includedMonthlyWarmupCreditsPerSender == includedMonthlyWarmupCreditsPerSender &&
     other.warmupControlledRecipientCreditWeight == warmupControlledRecipientCreditWeight &&
     other.warmupPremiumRecipientCreditWeight == warmupPremiumRecipientCreditWeight &&
     other.loadTest == loadTest &&
     other.costMajor == costMajor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId.hashCode) +
    (customerId == null ? 0 : customerId!.hashCode) +
    (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (isDecimalLess.hashCode) +
    (subscriptionType.hashCode) +
    (subscriptionSchedule.hashCode) +
    (monthlyInboxes.hashCode) +
    (monthlyReceive.hashCode) +
    (oauthConnections.hashCode) +
    (storageBytes.hashCode) +
    (totalInboxes.hashCode) +
    (phoneNumbers.hashCode) +
    (phoneProvisionRequestLimit.hashCode) +
    (monthlySend.hashCode) +
    (domains.hashCode) +
    (members.hashCode) +
    (aliases.hashCode) +
    (threads.hashCode) +
    (recipients.hashCode) +
    (attachments.hashCode) +
    (bulk.hashCode) +
    (permanentInbox.hashCode) +
    (contacts.hashCode) +
    (webhooks.hashCode) +
    (password.hashCode) +
    (inboxRulesets.hashCode) +
    (zapier.hashCode) +
    (trackingPixels.hashCode) +
    (inboxForwarders.hashCode) +
    (inboxRepliers.hashCode) +
    (attachmentAutomations.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (monthlyGetMailServerRecords.hashCode) +
    (monthlyVerifyEmailAddress.hashCode) +
    (metered.hashCode) +
    (maxUniqueRecipients.hashCode) +
    (externalPlanId == null ? 0 : externalPlanId!.hashCode) +
    (externalValidationPlanId == null ? 0 : externalValidationPlanId!.hashCode) +
    (externalValidationSubscriptionItemId == null ? 0 : externalValidationSubscriptionItemId!.hashCode) +
    (sendWithQueue == null ? 0 : sendWithQueue!.hashCode) +
    (trialDays == null ? 0 : trialDays!.hashCode) +
    (cancelAt == null ? 0 : cancelAt!.hashCode) +
    (trialEnd == null ? 0 : trialEnd!.hashCode) +
    (trialStart == null ? 0 : trialStart!.hashCode) +
    (trialAdjustmentReason == null ? 0 : trialAdjustmentReason!.hashCode) +
    (trialAdjustedAt == null ? 0 : trialAdjustedAt!.hashCode) +
    (samlSSO == null ? 0 : samlSSO!.hashCode) +
    (oidcSSO == null ? 0 : oidcSSO!.hashCode) +
    (scimProvisioning == null ? 0 : scimProvisioning!.hashCode) +
    (demoDaysRemaining == null ? 0 : demoDaysRemaining!.hashCode) +
    (organizations == null ? 0 : organizations!.hashCode) +
    (emailFeatureCheck == null ? 0 : emailFeatureCheck!.hashCode) +
    (backup == null ? 0 : backup!.hashCode) +
    (screenshots == null ? 0 : screenshots!.hashCode) +
    (devicePreviews == null ? 0 : devicePreviews!.hashCode) +
    (userPermissions == null ? 0 : userPermissions!.hashCode) +
    (environments == null ? 0 : environments!.hashCode) +
    (importExport == null ? 0 : importExport!.hashCode) +
    (auditLogs == null ? 0 : auditLogs!.hashCode) +
    (deliverabilityTest == null ? 0 : deliverabilityTest!.hashCode) +
    (emailAudit == null ? 0 : emailAudit!.hashCode) +
    (inboxWarmUp == null ? 0 : inboxWarmUp!.hashCode) +
    (warmupPremiumSeedAccess == null ? 0 : warmupPremiumSeedAccess!.hashCode) +
    (domainMonitor == null ? 0 : domainMonitor!.hashCode) +
    (campaignProbe == null ? 0 : campaignProbe!.hashCode) +
    (virtualTotpDevices == null ? 0 : virtualTotpDevices!.hashCode) +
    (currentPeriodEnd.hashCode) +
    (currentPeriodStart.hashCode) +
    (subscriptionStatus == null ? 0 : subscriptionStatus!.hashCode) +
    (subscriptionStatusIsBad.hashCode) +
    (dailyReceive.hashCode) +
    (dailySend.hashCode) +
    (maxEmailSizeMb.hashCode) +
    (aiTransformers.hashCode) +
    (gmailInboxConnection.hashCode) +
    (aiDestinationSheets.hashCode) +
    (gmailInboxConnectionLimit.hashCode) +
    (permitsExternalSend == null ? 0 : permitsExternalSend!.hashCode) +
    (totalPermanentInboxes == null ? 0 : totalPermanentInboxes!.hashCode) +
    (monthlyTemporaryInboxes == null ? 0 : monthlyTemporaryInboxes!.hashCode) +
    (agents == null ? 0 : agents!.hashCode) +
    (maxInboxPlacementSeedAddressesPerTest.hashCode) +
    (maxAutomatedInboxPlacementSchedules.hashCode) +
    (includedWarmupSenderSeats.hashCode) +
    (includedMonthlyWarmupCreditsPerSender.hashCode) +
    (warmupControlledRecipientCreditWeight.hashCode) +
    (warmupPremiumRecipientCreditWeight.hashCode) +
    (loadTest == null ? 0 : loadTest!.hashCode) +
    (costMajor == null ? 0 : costMajor!.hashCode);

  @override
  String toString() => 'SubscriptionDto[id=$id, userId=$userId, customerId=$customerId, subscriptionId=$subscriptionId, currency=$currency, cost=$cost, isDecimalLess=$isDecimalLess, subscriptionType=$subscriptionType, subscriptionSchedule=$subscriptionSchedule, monthlyInboxes=$monthlyInboxes, monthlyReceive=$monthlyReceive, oauthConnections=$oauthConnections, storageBytes=$storageBytes, totalInboxes=$totalInboxes, phoneNumbers=$phoneNumbers, phoneProvisionRequestLimit=$phoneProvisionRequestLimit, monthlySend=$monthlySend, domains=$domains, members=$members, aliases=$aliases, threads=$threads, recipients=$recipients, attachments=$attachments, bulk=$bulk, permanentInbox=$permanentInbox, contacts=$contacts, webhooks=$webhooks, password=$password, inboxRulesets=$inboxRulesets, zapier=$zapier, trackingPixels=$trackingPixels, inboxForwarders=$inboxForwarders, inboxRepliers=$inboxRepliers, attachmentAutomations=$attachmentAutomations, createdAt=$createdAt, updatedAt=$updatedAt, monthlyGetMailServerRecords=$monthlyGetMailServerRecords, monthlyVerifyEmailAddress=$monthlyVerifyEmailAddress, metered=$metered, maxUniqueRecipients=$maxUniqueRecipients, externalPlanId=$externalPlanId, externalValidationPlanId=$externalValidationPlanId, externalValidationSubscriptionItemId=$externalValidationSubscriptionItemId, sendWithQueue=$sendWithQueue, trialDays=$trialDays, cancelAt=$cancelAt, trialEnd=$trialEnd, trialStart=$trialStart, trialAdjustmentReason=$trialAdjustmentReason, trialAdjustedAt=$trialAdjustedAt, samlSSO=$samlSSO, oidcSSO=$oidcSSO, scimProvisioning=$scimProvisioning, demoDaysRemaining=$demoDaysRemaining, organizations=$organizations, emailFeatureCheck=$emailFeatureCheck, backup=$backup, screenshots=$screenshots, devicePreviews=$devicePreviews, userPermissions=$userPermissions, environments=$environments, importExport=$importExport, auditLogs=$auditLogs, deliverabilityTest=$deliverabilityTest, emailAudit=$emailAudit, inboxWarmUp=$inboxWarmUp, warmupPremiumSeedAccess=$warmupPremiumSeedAccess, domainMonitor=$domainMonitor, campaignProbe=$campaignProbe, virtualTotpDevices=$virtualTotpDevices, currentPeriodEnd=$currentPeriodEnd, currentPeriodStart=$currentPeriodStart, subscriptionStatus=$subscriptionStatus, subscriptionStatusIsBad=$subscriptionStatusIsBad, dailyReceive=$dailyReceive, dailySend=$dailySend, maxEmailSizeMb=$maxEmailSizeMb, aiTransformers=$aiTransformers, gmailInboxConnection=$gmailInboxConnection, aiDestinationSheets=$aiDestinationSheets, gmailInboxConnectionLimit=$gmailInboxConnectionLimit, permitsExternalSend=$permitsExternalSend, totalPermanentInboxes=$totalPermanentInboxes, monthlyTemporaryInboxes=$monthlyTemporaryInboxes, agents=$agents, maxInboxPlacementSeedAddressesPerTest=$maxInboxPlacementSeedAddressesPerTest, maxAutomatedInboxPlacementSchedules=$maxAutomatedInboxPlacementSchedules, includedWarmupSenderSeats=$includedWarmupSenderSeats, includedMonthlyWarmupCreditsPerSender=$includedMonthlyWarmupCreditsPerSender, warmupControlledRecipientCreditWeight=$warmupControlledRecipientCreditWeight, warmupPremiumRecipientCreditWeight=$warmupPremiumRecipientCreditWeight, loadTest=$loadTest, costMajor=$costMajor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'userId'] = this.userId;
    if (this.customerId != null) {
      json[r'customerId'] = this.customerId;
    } else {
      json[r'customerId'] = null;
    }
    if (this.subscriptionId != null) {
      json[r'subscriptionId'] = this.subscriptionId;
    } else {
      json[r'subscriptionId'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
      json[r'isDecimalLess'] = this.isDecimalLess;
      json[r'subscriptionType'] = this.subscriptionType;
      json[r'subscriptionSchedule'] = this.subscriptionSchedule;
      json[r'monthlyInboxes'] = this.monthlyInboxes;
      json[r'monthlyReceive'] = this.monthlyReceive;
      json[r'oauthConnections'] = this.oauthConnections;
      json[r'storageBytes'] = this.storageBytes;
      json[r'totalInboxes'] = this.totalInboxes;
      json[r'phoneNumbers'] = this.phoneNumbers;
      json[r'phoneProvisionRequestLimit'] = this.phoneProvisionRequestLimit;
      json[r'monthlySend'] = this.monthlySend;
      json[r'domains'] = this.domains;
      json[r'members'] = this.members;
      json[r'aliases'] = this.aliases;
      json[r'threads'] = this.threads;
      json[r'recipients'] = this.recipients;
      json[r'attachments'] = this.attachments;
      json[r'bulk'] = this.bulk;
      json[r'permanentInbox'] = this.permanentInbox;
      json[r'contacts'] = this.contacts;
      json[r'webhooks'] = this.webhooks;
      json[r'password'] = this.password;
      json[r'inboxRulesets'] = this.inboxRulesets;
      json[r'zapier'] = this.zapier;
      json[r'trackingPixels'] = this.trackingPixels;
      json[r'inboxForwarders'] = this.inboxForwarders;
      json[r'inboxRepliers'] = this.inboxRepliers;
      json[r'attachmentAutomations'] = this.attachmentAutomations;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'monthlyGetMailServerRecords'] = this.monthlyGetMailServerRecords;
      json[r'monthlyVerifyEmailAddress'] = this.monthlyVerifyEmailAddress;
      json[r'metered'] = this.metered;
      json[r'maxUniqueRecipients'] = this.maxUniqueRecipients;
    if (this.externalPlanId != null) {
      json[r'externalPlanId'] = this.externalPlanId;
    } else {
      json[r'externalPlanId'] = null;
    }
    if (this.externalValidationPlanId != null) {
      json[r'externalValidationPlanId'] = this.externalValidationPlanId;
    } else {
      json[r'externalValidationPlanId'] = null;
    }
    if (this.externalValidationSubscriptionItemId != null) {
      json[r'externalValidationSubscriptionItemId'] = this.externalValidationSubscriptionItemId;
    } else {
      json[r'externalValidationSubscriptionItemId'] = null;
    }
    if (this.sendWithQueue != null) {
      json[r'sendWithQueue'] = this.sendWithQueue;
    } else {
      json[r'sendWithQueue'] = null;
    }
    if (this.trialDays != null) {
      json[r'trialDays'] = this.trialDays;
    } else {
      json[r'trialDays'] = null;
    }
    if (this.cancelAt != null) {
      json[r'cancelAt'] = this.cancelAt!.toUtc().toIso8601String();
    } else {
      json[r'cancelAt'] = null;
    }
    if (this.trialEnd != null) {
      json[r'trialEnd'] = this.trialEnd!.toUtc().toIso8601String();
    } else {
      json[r'trialEnd'] = null;
    }
    if (this.trialStart != null) {
      json[r'trialStart'] = this.trialStart!.toUtc().toIso8601String();
    } else {
      json[r'trialStart'] = null;
    }
    if (this.trialAdjustmentReason != null) {
      json[r'trialAdjustmentReason'] = this.trialAdjustmentReason;
    } else {
      json[r'trialAdjustmentReason'] = null;
    }
    if (this.trialAdjustedAt != null) {
      json[r'trialAdjustedAt'] = this.trialAdjustedAt!.toUtc().toIso8601String();
    } else {
      json[r'trialAdjustedAt'] = null;
    }
    if (this.samlSSO != null) {
      json[r'samlSSO'] = this.samlSSO;
    } else {
      json[r'samlSSO'] = null;
    }
    if (this.oidcSSO != null) {
      json[r'oidcSSO'] = this.oidcSSO;
    } else {
      json[r'oidcSSO'] = null;
    }
    if (this.scimProvisioning != null) {
      json[r'scimProvisioning'] = this.scimProvisioning;
    } else {
      json[r'scimProvisioning'] = null;
    }
    if (this.demoDaysRemaining != null) {
      json[r'demoDaysRemaining'] = this.demoDaysRemaining;
    } else {
      json[r'demoDaysRemaining'] = null;
    }
    if (this.organizations != null) {
      json[r'organizations'] = this.organizations;
    } else {
      json[r'organizations'] = null;
    }
    if (this.emailFeatureCheck != null) {
      json[r'emailFeatureCheck'] = this.emailFeatureCheck;
    } else {
      json[r'emailFeatureCheck'] = null;
    }
    if (this.backup != null) {
      json[r'backup'] = this.backup;
    } else {
      json[r'backup'] = null;
    }
    if (this.screenshots != null) {
      json[r'screenshots'] = this.screenshots;
    } else {
      json[r'screenshots'] = null;
    }
    if (this.devicePreviews != null) {
      json[r'devicePreviews'] = this.devicePreviews;
    } else {
      json[r'devicePreviews'] = null;
    }
    if (this.userPermissions != null) {
      json[r'userPermissions'] = this.userPermissions;
    } else {
      json[r'userPermissions'] = null;
    }
    if (this.environments != null) {
      json[r'environments'] = this.environments;
    } else {
      json[r'environments'] = null;
    }
    if (this.importExport != null) {
      json[r'importExport'] = this.importExport;
    } else {
      json[r'importExport'] = null;
    }
    if (this.auditLogs != null) {
      json[r'auditLogs'] = this.auditLogs;
    } else {
      json[r'auditLogs'] = null;
    }
    if (this.deliverabilityTest != null) {
      json[r'deliverabilityTest'] = this.deliverabilityTest;
    } else {
      json[r'deliverabilityTest'] = null;
    }
    if (this.emailAudit != null) {
      json[r'emailAudit'] = this.emailAudit;
    } else {
      json[r'emailAudit'] = null;
    }
    if (this.inboxWarmUp != null) {
      json[r'inboxWarmUp'] = this.inboxWarmUp;
    } else {
      json[r'inboxWarmUp'] = null;
    }
    if (this.warmupPremiumSeedAccess != null) {
      json[r'warmupPremiumSeedAccess'] = this.warmupPremiumSeedAccess;
    } else {
      json[r'warmupPremiumSeedAccess'] = null;
    }
    if (this.domainMonitor != null) {
      json[r'domainMonitor'] = this.domainMonitor;
    } else {
      json[r'domainMonitor'] = null;
    }
    if (this.campaignProbe != null) {
      json[r'campaignProbe'] = this.campaignProbe;
    } else {
      json[r'campaignProbe'] = null;
    }
    if (this.virtualTotpDevices != null) {
      json[r'virtualTotpDevices'] = this.virtualTotpDevices;
    } else {
      json[r'virtualTotpDevices'] = null;
    }
      json[r'currentPeriodEnd'] = this.currentPeriodEnd.toUtc().toIso8601String();
      json[r'currentPeriodStart'] = this.currentPeriodStart.toUtc().toIso8601String();
    if (this.subscriptionStatus != null) {
      json[r'subscriptionStatus'] = this.subscriptionStatus;
    } else {
      json[r'subscriptionStatus'] = null;
    }
      json[r'subscriptionStatusIsBad'] = this.subscriptionStatusIsBad;
      json[r'dailyReceive'] = this.dailyReceive;
      json[r'dailySend'] = this.dailySend;
      json[r'maxEmailSizeMb'] = this.maxEmailSizeMb;
      json[r'aiTransformers'] = this.aiTransformers;
      json[r'gmailInboxConnection'] = this.gmailInboxConnection;
      json[r'aiDestinationSheets'] = this.aiDestinationSheets;
      json[r'gmailInboxConnectionLimit'] = this.gmailInboxConnectionLimit;
    if (this.permitsExternalSend != null) {
      json[r'permitsExternalSend'] = this.permitsExternalSend;
    } else {
      json[r'permitsExternalSend'] = null;
    }
    if (this.totalPermanentInboxes != null) {
      json[r'totalPermanentInboxes'] = this.totalPermanentInboxes;
    } else {
      json[r'totalPermanentInboxes'] = null;
    }
    if (this.monthlyTemporaryInboxes != null) {
      json[r'monthlyTemporaryInboxes'] = this.monthlyTemporaryInboxes;
    } else {
      json[r'monthlyTemporaryInboxes'] = null;
    }
    if (this.agents != null) {
      json[r'agents'] = this.agents;
    } else {
      json[r'agents'] = null;
    }
      json[r'maxInboxPlacementSeedAddressesPerTest'] = this.maxInboxPlacementSeedAddressesPerTest;
      json[r'maxAutomatedInboxPlacementSchedules'] = this.maxAutomatedInboxPlacementSchedules;
      json[r'includedWarmupSenderSeats'] = this.includedWarmupSenderSeats;
      json[r'includedMonthlyWarmupCreditsPerSender'] = this.includedMonthlyWarmupCreditsPerSender;
      json[r'warmupControlledRecipientCreditWeight'] = this.warmupControlledRecipientCreditWeight;
      json[r'warmupPremiumRecipientCreditWeight'] = this.warmupPremiumRecipientCreditWeight;
    if (this.loadTest != null) {
      json[r'loadTest'] = this.loadTest;
    } else {
      json[r'loadTest'] = null;
    }
    if (this.costMajor != null) {
      json[r'costMajor'] = this.costMajor;
    } else {
      json[r'costMajor'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionDto(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'userId')!,
        customerId: mapValueOfType<String>(json, r'customerId'),
        subscriptionId: mapValueOfType<String>(json, r'subscriptionId'),
        currency: SubscriptionDtoCurrencyEnum.fromJson(json[r'currency']),
        cost: mapValueOfType<int>(json, r'cost'),
        isDecimalLess: mapValueOfType<bool>(json, r'isDecimalLess')!,
        subscriptionType: SubscriptionDtoSubscriptionTypeEnum.fromJson(json[r'subscriptionType'])!,
        subscriptionSchedule: SubscriptionDtoSubscriptionScheduleEnum.fromJson(json[r'subscriptionSchedule'])!,
        monthlyInboxes: mapValueOfType<int>(json, r'monthlyInboxes')!,
        monthlyReceive: mapValueOfType<int>(json, r'monthlyReceive')!,
        oauthConnections: mapValueOfType<int>(json, r'oauthConnections')!,
        storageBytes: mapValueOfType<int>(json, r'storageBytes')!,
        totalInboxes: mapValueOfType<int>(json, r'totalInboxes')!,
        phoneNumbers: mapValueOfType<int>(json, r'phoneNumbers')!,
        phoneProvisionRequestLimit: mapValueOfType<int>(json, r'phoneProvisionRequestLimit')!,
        monthlySend: mapValueOfType<int>(json, r'monthlySend')!,
        domains: mapValueOfType<int>(json, r'domains')!,
        members: mapValueOfType<int>(json, r'members')!,
        aliases: mapValueOfType<int>(json, r'aliases')!,
        threads: mapValueOfType<int>(json, r'threads')!,
        recipients: mapValueOfType<int>(json, r'recipients')!,
        attachments: mapValueOfType<bool>(json, r'attachments')!,
        bulk: mapValueOfType<bool>(json, r'bulk')!,
        permanentInbox: mapValueOfType<bool>(json, r'permanentInbox')!,
        contacts: mapValueOfType<bool>(json, r'contacts')!,
        webhooks: mapValueOfType<bool>(json, r'webhooks')!,
        password: mapValueOfType<bool>(json, r'password')!,
        inboxRulesets: mapValueOfType<bool>(json, r'inboxRulesets')!,
        zapier: mapValueOfType<bool>(json, r'zapier')!,
        trackingPixels: mapValueOfType<bool>(json, r'trackingPixels')!,
        inboxForwarders: mapValueOfType<bool>(json, r'inboxForwarders')!,
        inboxRepliers: mapValueOfType<bool>(json, r'inboxRepliers')!,
        attachmentAutomations: mapValueOfType<bool>(json, r'attachmentAutomations')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        monthlyGetMailServerRecords: mapValueOfType<int>(json, r'monthlyGetMailServerRecords')!,
        monthlyVerifyEmailAddress: mapValueOfType<int>(json, r'monthlyVerifyEmailAddress')!,
        metered: mapValueOfType<bool>(json, r'metered')!,
        maxUniqueRecipients: mapValueOfType<int>(json, r'maxUniqueRecipients')!,
        externalPlanId: mapValueOfType<String>(json, r'externalPlanId'),
        externalValidationPlanId: mapValueOfType<String>(json, r'externalValidationPlanId'),
        externalValidationSubscriptionItemId: mapValueOfType<String>(json, r'externalValidationSubscriptionItemId'),
        sendWithQueue: mapValueOfType<bool>(json, r'sendWithQueue'),
        trialDays: mapValueOfType<int>(json, r'trialDays'),
        cancelAt: mapDateTime(json, r'cancelAt', ''),
        trialEnd: mapDateTime(json, r'trialEnd', ''),
        trialStart: mapDateTime(json, r'trialStart', ''),
        trialAdjustmentReason: mapValueOfType<String>(json, r'trialAdjustmentReason'),
        trialAdjustedAt: mapDateTime(json, r'trialAdjustedAt', ''),
        samlSSO: mapValueOfType<bool>(json, r'samlSSO'),
        oidcSSO: mapValueOfType<bool>(json, r'oidcSSO'),
        scimProvisioning: mapValueOfType<bool>(json, r'scimProvisioning'),
        demoDaysRemaining: mapValueOfType<int>(json, r'demoDaysRemaining'),
        organizations: mapValueOfType<int>(json, r'organizations'),
        emailFeatureCheck: mapValueOfType<bool>(json, r'emailFeatureCheck'),
        backup: mapValueOfType<bool>(json, r'backup'),
        screenshots: mapValueOfType<bool>(json, r'screenshots'),
        devicePreviews: mapValueOfType<bool>(json, r'devicePreviews'),
        userPermissions: mapValueOfType<bool>(json, r'userPermissions'),
        environments: mapValueOfType<bool>(json, r'environments'),
        importExport: mapValueOfType<bool>(json, r'importExport'),
        auditLogs: mapValueOfType<bool>(json, r'auditLogs'),
        deliverabilityTest: mapValueOfType<bool>(json, r'deliverabilityTest'),
        emailAudit: mapValueOfType<bool>(json, r'emailAudit'),
        inboxWarmUp: mapValueOfType<bool>(json, r'inboxWarmUp'),
        warmupPremiumSeedAccess: mapValueOfType<bool>(json, r'warmupPremiumSeedAccess'),
        domainMonitor: mapValueOfType<bool>(json, r'domainMonitor'),
        campaignProbe: mapValueOfType<bool>(json, r'campaignProbe'),
        virtualTotpDevices: mapValueOfType<bool>(json, r'virtualTotpDevices'),
        currentPeriodEnd: mapDateTime(json, r'currentPeriodEnd', '')!,
        currentPeriodStart: mapDateTime(json, r'currentPeriodStart', '')!,
        subscriptionStatus: SubscriptionDtoSubscriptionStatusEnum.fromJson(json[r'subscriptionStatus']),
        subscriptionStatusIsBad: mapValueOfType<bool>(json, r'subscriptionStatusIsBad')!,
        dailyReceive: mapValueOfType<int>(json, r'dailyReceive')!,
        dailySend: mapValueOfType<int>(json, r'dailySend')!,
        maxEmailSizeMb: mapValueOfType<int>(json, r'maxEmailSizeMb')!,
        aiTransformers: mapValueOfType<bool>(json, r'aiTransformers')!,
        gmailInboxConnection: mapValueOfType<bool>(json, r'gmailInboxConnection')!,
        aiDestinationSheets: mapValueOfType<bool>(json, r'aiDestinationSheets')!,
        gmailInboxConnectionLimit: mapValueOfType<int>(json, r'gmailInboxConnectionLimit')!,
        permitsExternalSend: mapValueOfType<bool>(json, r'permitsExternalSend'),
        totalPermanentInboxes: mapValueOfType<int>(json, r'totalPermanentInboxes'),
        monthlyTemporaryInboxes: mapValueOfType<int>(json, r'monthlyTemporaryInboxes'),
        agents: mapValueOfType<int>(json, r'agents'),
        maxInboxPlacementSeedAddressesPerTest: mapValueOfType<int>(json, r'maxInboxPlacementSeedAddressesPerTest')!,
        maxAutomatedInboxPlacementSchedules: mapValueOfType<int>(json, r'maxAutomatedInboxPlacementSchedules')!,
        includedWarmupSenderSeats: mapValueOfType<int>(json, r'includedWarmupSenderSeats')!,
        includedMonthlyWarmupCreditsPerSender: mapValueOfType<int>(json, r'includedMonthlyWarmupCreditsPerSender')!,
        warmupControlledRecipientCreditWeight: mapValueOfType<int>(json, r'warmupControlledRecipientCreditWeight')!,
        warmupPremiumRecipientCreditWeight: mapValueOfType<int>(json, r'warmupPremiumRecipientCreditWeight')!,
        loadTest: mapValueOfType<bool>(json, r'loadTest'),
        costMajor: json[r'costMajor'] == null
            ? null
            : num.parse(json[r'costMajor'].toString()),
      );
    }
    return null;
  }

  static List<SubscriptionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionDto> mapFromJson(dynamic json) {
    final map = <String, SubscriptionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionDto-objects as value to a dart map
  static Map<String, List<SubscriptionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'isDecimalLess',
    'subscriptionType',
    'subscriptionSchedule',
    'monthlyInboxes',
    'monthlyReceive',
    'oauthConnections',
    'storageBytes',
    'totalInboxes',
    'phoneNumbers',
    'phoneProvisionRequestLimit',
    'monthlySend',
    'domains',
    'members',
    'aliases',
    'threads',
    'recipients',
    'attachments',
    'bulk',
    'permanentInbox',
    'contacts',
    'webhooks',
    'password',
    'inboxRulesets',
    'zapier',
    'trackingPixels',
    'inboxForwarders',
    'inboxRepliers',
    'attachmentAutomations',
    'createdAt',
    'updatedAt',
    'monthlyGetMailServerRecords',
    'monthlyVerifyEmailAddress',
    'metered',
    'maxUniqueRecipients',
    'currentPeriodEnd',
    'currentPeriodStart',
    'subscriptionStatusIsBad',
    'dailyReceive',
    'dailySend',
    'maxEmailSizeMb',
    'aiTransformers',
    'gmailInboxConnection',
    'aiDestinationSheets',
    'gmailInboxConnectionLimit',
    'maxInboxPlacementSeedAddressesPerTest',
    'maxAutomatedInboxPlacementSchedules',
    'includedWarmupSenderSeats',
    'includedMonthlyWarmupCreditsPerSender',
    'warmupControlledRecipientCreditWeight',
    'warmupPremiumRecipientCreditWeight',
  };
}


class SubscriptionDtoCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionDtoCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EUR = SubscriptionDtoCurrencyEnum._(r'EUR');
  static const USD = SubscriptionDtoCurrencyEnum._(r'USD');
  static const JPY = SubscriptionDtoCurrencyEnum._(r'JPY');
  static const GBP = SubscriptionDtoCurrencyEnum._(r'GBP');
  static const AUD = SubscriptionDtoCurrencyEnum._(r'AUD');
  static const CAD = SubscriptionDtoCurrencyEnum._(r'CAD');
  static const CHF = SubscriptionDtoCurrencyEnum._(r'CHF');
  static const CNY = SubscriptionDtoCurrencyEnum._(r'CNY');
  static const INR = SubscriptionDtoCurrencyEnum._(r'INR');
  static const NZD = SubscriptionDtoCurrencyEnum._(r'NZD');

  /// List of all possible values in this [enum][SubscriptionDtoCurrencyEnum].
  static const values = <SubscriptionDtoCurrencyEnum>[
    EUR,
    USD,
    JPY,
    GBP,
    AUD,
    CAD,
    CHF,
    CNY,
    INR,
    NZD,
  ];

  static SubscriptionDtoCurrencyEnum? fromJson(dynamic value) => SubscriptionDtoCurrencyEnumTypeTransformer().decode(value);

  static List<SubscriptionDtoCurrencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionDtoCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionDtoCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionDtoCurrencyEnum] to String,
/// and [decode] dynamic data back to [SubscriptionDtoCurrencyEnum].
class SubscriptionDtoCurrencyEnumTypeTransformer {
  factory SubscriptionDtoCurrencyEnumTypeTransformer() => _instance ??= const SubscriptionDtoCurrencyEnumTypeTransformer._();

  const SubscriptionDtoCurrencyEnumTypeTransformer._();

  String encode(SubscriptionDtoCurrencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionDtoCurrencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionDtoCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EUR': return SubscriptionDtoCurrencyEnum.EUR;
        case r'USD': return SubscriptionDtoCurrencyEnum.USD;
        case r'JPY': return SubscriptionDtoCurrencyEnum.JPY;
        case r'GBP': return SubscriptionDtoCurrencyEnum.GBP;
        case r'AUD': return SubscriptionDtoCurrencyEnum.AUD;
        case r'CAD': return SubscriptionDtoCurrencyEnum.CAD;
        case r'CHF': return SubscriptionDtoCurrencyEnum.CHF;
        case r'CNY': return SubscriptionDtoCurrencyEnum.CNY;
        case r'INR': return SubscriptionDtoCurrencyEnum.INR;
        case r'NZD': return SubscriptionDtoCurrencyEnum.NZD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionDtoCurrencyEnumTypeTransformer] instance.
  static SubscriptionDtoCurrencyEnumTypeTransformer? _instance;
}



class SubscriptionDtoSubscriptionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionDtoSubscriptionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRO_MONTHLY = SubscriptionDtoSubscriptionTypeEnum._(r'PRO_MONTHLY');
  static const STARTER = SubscriptionDtoSubscriptionTypeEnum._(r'STARTER');
  static const PRO = SubscriptionDtoSubscriptionTypeEnum._(r'PRO');
  static const TEAM = SubscriptionDtoSubscriptionTypeEnum._(r'TEAM');
  static const ENTERPRISE = SubscriptionDtoSubscriptionTypeEnum._(r'ENTERPRISE');

  /// List of all possible values in this [enum][SubscriptionDtoSubscriptionTypeEnum].
  static const values = <SubscriptionDtoSubscriptionTypeEnum>[
    PRO_MONTHLY,
    STARTER,
    PRO,
    TEAM,
    ENTERPRISE,
  ];

  static SubscriptionDtoSubscriptionTypeEnum? fromJson(dynamic value) => SubscriptionDtoSubscriptionTypeEnumTypeTransformer().decode(value);

  static List<SubscriptionDtoSubscriptionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionDtoSubscriptionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionDtoSubscriptionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionDtoSubscriptionTypeEnum] to String,
/// and [decode] dynamic data back to [SubscriptionDtoSubscriptionTypeEnum].
class SubscriptionDtoSubscriptionTypeEnumTypeTransformer {
  factory SubscriptionDtoSubscriptionTypeEnumTypeTransformer() => _instance ??= const SubscriptionDtoSubscriptionTypeEnumTypeTransformer._();

  const SubscriptionDtoSubscriptionTypeEnumTypeTransformer._();

  String encode(SubscriptionDtoSubscriptionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionDtoSubscriptionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionDtoSubscriptionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRO_MONTHLY': return SubscriptionDtoSubscriptionTypeEnum.PRO_MONTHLY;
        case r'STARTER': return SubscriptionDtoSubscriptionTypeEnum.STARTER;
        case r'PRO': return SubscriptionDtoSubscriptionTypeEnum.PRO;
        case r'TEAM': return SubscriptionDtoSubscriptionTypeEnum.TEAM;
        case r'ENTERPRISE': return SubscriptionDtoSubscriptionTypeEnum.ENTERPRISE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionDtoSubscriptionTypeEnumTypeTransformer] instance.
  static SubscriptionDtoSubscriptionTypeEnumTypeTransformer? _instance;
}



class SubscriptionDtoSubscriptionScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionDtoSubscriptionScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTHLY = SubscriptionDtoSubscriptionScheduleEnum._(r'MONTHLY');
  static const YEARLY = SubscriptionDtoSubscriptionScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][SubscriptionDtoSubscriptionScheduleEnum].
  static const values = <SubscriptionDtoSubscriptionScheduleEnum>[
    MONTHLY,
    YEARLY,
  ];

  static SubscriptionDtoSubscriptionScheduleEnum? fromJson(dynamic value) => SubscriptionDtoSubscriptionScheduleEnumTypeTransformer().decode(value);

  static List<SubscriptionDtoSubscriptionScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionDtoSubscriptionScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionDtoSubscriptionScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionDtoSubscriptionScheduleEnum] to String,
/// and [decode] dynamic data back to [SubscriptionDtoSubscriptionScheduleEnum].
class SubscriptionDtoSubscriptionScheduleEnumTypeTransformer {
  factory SubscriptionDtoSubscriptionScheduleEnumTypeTransformer() => _instance ??= const SubscriptionDtoSubscriptionScheduleEnumTypeTransformer._();

  const SubscriptionDtoSubscriptionScheduleEnumTypeTransformer._();

  String encode(SubscriptionDtoSubscriptionScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionDtoSubscriptionScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionDtoSubscriptionScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTHLY': return SubscriptionDtoSubscriptionScheduleEnum.MONTHLY;
        case r'YEARLY': return SubscriptionDtoSubscriptionScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionDtoSubscriptionScheduleEnumTypeTransformer] instance.
  static SubscriptionDtoSubscriptionScheduleEnumTypeTransformer? _instance;
}



class SubscriptionDtoSubscriptionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionDtoSubscriptionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const incompleteExpired = SubscriptionDtoSubscriptionStatusEnum._(r'incomplete_expired');
  static const pastDue = SubscriptionDtoSubscriptionStatusEnum._(r'past_due');
  static const canceled = SubscriptionDtoSubscriptionStatusEnum._(r'canceled');
  static const unpaid = SubscriptionDtoSubscriptionStatusEnum._(r'unpaid');
  static const paused = SubscriptionDtoSubscriptionStatusEnum._(r'paused');
  static const incomplete = SubscriptionDtoSubscriptionStatusEnum._(r'incomplete');
  static const trialing = SubscriptionDtoSubscriptionStatusEnum._(r'trialing');
  static const active = SubscriptionDtoSubscriptionStatusEnum._(r'active');

  /// List of all possible values in this [enum][SubscriptionDtoSubscriptionStatusEnum].
  static const values = <SubscriptionDtoSubscriptionStatusEnum>[
    incompleteExpired,
    pastDue,
    canceled,
    unpaid,
    paused,
    incomplete,
    trialing,
    active,
  ];

  static SubscriptionDtoSubscriptionStatusEnum? fromJson(dynamic value) => SubscriptionDtoSubscriptionStatusEnumTypeTransformer().decode(value);

  static List<SubscriptionDtoSubscriptionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionDtoSubscriptionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionDtoSubscriptionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionDtoSubscriptionStatusEnum] to String,
/// and [decode] dynamic data back to [SubscriptionDtoSubscriptionStatusEnum].
class SubscriptionDtoSubscriptionStatusEnumTypeTransformer {
  factory SubscriptionDtoSubscriptionStatusEnumTypeTransformer() => _instance ??= const SubscriptionDtoSubscriptionStatusEnumTypeTransformer._();

  const SubscriptionDtoSubscriptionStatusEnumTypeTransformer._();

  String encode(SubscriptionDtoSubscriptionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionDtoSubscriptionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionDtoSubscriptionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'incomplete_expired': return SubscriptionDtoSubscriptionStatusEnum.incompleteExpired;
        case r'past_due': return SubscriptionDtoSubscriptionStatusEnum.pastDue;
        case r'canceled': return SubscriptionDtoSubscriptionStatusEnum.canceled;
        case r'unpaid': return SubscriptionDtoSubscriptionStatusEnum.unpaid;
        case r'paused': return SubscriptionDtoSubscriptionStatusEnum.paused;
        case r'incomplete': return SubscriptionDtoSubscriptionStatusEnum.incomplete;
        case r'trialing': return SubscriptionDtoSubscriptionStatusEnum.trialing;
        case r'active': return SubscriptionDtoSubscriptionStatusEnum.active;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionDtoSubscriptionStatusEnumTypeTransformer] instance.
  static SubscriptionDtoSubscriptionStatusEnumTypeTransformer? _instance;
}


