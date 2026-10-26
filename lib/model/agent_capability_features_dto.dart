//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentCapabilityFeaturesDto {
  /// Returns a new [AgentCapabilityFeaturesDto] instance.
  AgentCapabilityFeaturesDto({
    required this.conversationQueue,
    required this.durableEvents,
    required this.conversationClaims,
    required this.humanHandoff,
    required this.internalNotes,
    required this.threadedReplyDrafts,
    required this.webhookSubscriptionsManagedByOwner,
    required this.virtualTotpDevices,
    required this.phoneNumberSmsRead,
    required this.phoneNumberSmsSend,
    required this.smsConversationQueue,
    required this.smsDurableEvents,
    required this.smsConversationClaims,
    required this.smsHumanHandoff,
    required this.smsInternalNotes,
    required this.smsIdempotentSend,
  });

  bool conversationQueue;

  bool durableEvents;

  bool conversationClaims;

  bool humanHandoff;

  bool internalNotes;

  bool threadedReplyDrafts;

  bool webhookSubscriptionsManagedByOwner;

  bool virtualTotpDevices;

  bool phoneNumberSmsRead;

  bool phoneNumberSmsSend;

  bool smsConversationQueue;

  bool smsDurableEvents;

  bool smsConversationClaims;

  bool smsHumanHandoff;

  bool smsInternalNotes;

  bool smsIdempotentSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentCapabilityFeaturesDto &&
     other.conversationQueue == conversationQueue &&
     other.durableEvents == durableEvents &&
     other.conversationClaims == conversationClaims &&
     other.humanHandoff == humanHandoff &&
     other.internalNotes == internalNotes &&
     other.threadedReplyDrafts == threadedReplyDrafts &&
     other.webhookSubscriptionsManagedByOwner == webhookSubscriptionsManagedByOwner &&
     other.virtualTotpDevices == virtualTotpDevices &&
     other.phoneNumberSmsRead == phoneNumberSmsRead &&
     other.phoneNumberSmsSend == phoneNumberSmsSend &&
     other.smsConversationQueue == smsConversationQueue &&
     other.smsDurableEvents == smsDurableEvents &&
     other.smsConversationClaims == smsConversationClaims &&
     other.smsHumanHandoff == smsHumanHandoff &&
     other.smsInternalNotes == smsInternalNotes &&
     other.smsIdempotentSend == smsIdempotentSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversationQueue.hashCode) +
    (durableEvents.hashCode) +
    (conversationClaims.hashCode) +
    (humanHandoff.hashCode) +
    (internalNotes.hashCode) +
    (threadedReplyDrafts.hashCode) +
    (webhookSubscriptionsManagedByOwner.hashCode) +
    (virtualTotpDevices.hashCode) +
    (phoneNumberSmsRead.hashCode) +
    (phoneNumberSmsSend.hashCode) +
    (smsConversationQueue.hashCode) +
    (smsDurableEvents.hashCode) +
    (smsConversationClaims.hashCode) +
    (smsHumanHandoff.hashCode) +
    (smsInternalNotes.hashCode) +
    (smsIdempotentSend.hashCode);

  @override
  String toString() => 'AgentCapabilityFeaturesDto[conversationQueue=$conversationQueue, durableEvents=$durableEvents, conversationClaims=$conversationClaims, humanHandoff=$humanHandoff, internalNotes=$internalNotes, threadedReplyDrafts=$threadedReplyDrafts, webhookSubscriptionsManagedByOwner=$webhookSubscriptionsManagedByOwner, virtualTotpDevices=$virtualTotpDevices, phoneNumberSmsRead=$phoneNumberSmsRead, phoneNumberSmsSend=$phoneNumberSmsSend, smsConversationQueue=$smsConversationQueue, smsDurableEvents=$smsDurableEvents, smsConversationClaims=$smsConversationClaims, smsHumanHandoff=$smsHumanHandoff, smsInternalNotes=$smsInternalNotes, smsIdempotentSend=$smsIdempotentSend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conversationQueue'] = this.conversationQueue;
      json[r'durableEvents'] = this.durableEvents;
      json[r'conversationClaims'] = this.conversationClaims;
      json[r'humanHandoff'] = this.humanHandoff;
      json[r'internalNotes'] = this.internalNotes;
      json[r'threadedReplyDrafts'] = this.threadedReplyDrafts;
      json[r'webhookSubscriptionsManagedByOwner'] = this.webhookSubscriptionsManagedByOwner;
      json[r'virtualTotpDevices'] = this.virtualTotpDevices;
      json[r'phoneNumberSmsRead'] = this.phoneNumberSmsRead;
      json[r'phoneNumberSmsSend'] = this.phoneNumberSmsSend;
      json[r'smsConversationQueue'] = this.smsConversationQueue;
      json[r'smsDurableEvents'] = this.smsDurableEvents;
      json[r'smsConversationClaims'] = this.smsConversationClaims;
      json[r'smsHumanHandoff'] = this.smsHumanHandoff;
      json[r'smsInternalNotes'] = this.smsInternalNotes;
      json[r'smsIdempotentSend'] = this.smsIdempotentSend;
    return json;
  }

  /// Returns a new [AgentCapabilityFeaturesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentCapabilityFeaturesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentCapabilityFeaturesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentCapabilityFeaturesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentCapabilityFeaturesDto(
        conversationQueue: mapValueOfType<bool>(json, r'conversationQueue')!,
        durableEvents: mapValueOfType<bool>(json, r'durableEvents')!,
        conversationClaims: mapValueOfType<bool>(json, r'conversationClaims')!,
        humanHandoff: mapValueOfType<bool>(json, r'humanHandoff')!,
        internalNotes: mapValueOfType<bool>(json, r'internalNotes')!,
        threadedReplyDrafts: mapValueOfType<bool>(json, r'threadedReplyDrafts')!,
        webhookSubscriptionsManagedByOwner: mapValueOfType<bool>(json, r'webhookSubscriptionsManagedByOwner')!,
        virtualTotpDevices: mapValueOfType<bool>(json, r'virtualTotpDevices')!,
        phoneNumberSmsRead: mapValueOfType<bool>(json, r'phoneNumberSmsRead')!,
        phoneNumberSmsSend: mapValueOfType<bool>(json, r'phoneNumberSmsSend')!,
        smsConversationQueue: mapValueOfType<bool>(json, r'smsConversationQueue')!,
        smsDurableEvents: mapValueOfType<bool>(json, r'smsDurableEvents')!,
        smsConversationClaims: mapValueOfType<bool>(json, r'smsConversationClaims')!,
        smsHumanHandoff: mapValueOfType<bool>(json, r'smsHumanHandoff')!,
        smsInternalNotes: mapValueOfType<bool>(json, r'smsInternalNotes')!,
        smsIdempotentSend: mapValueOfType<bool>(json, r'smsIdempotentSend')!,
      );
    }
    return null;
  }

  static List<AgentCapabilityFeaturesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCapabilityFeaturesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCapabilityFeaturesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentCapabilityFeaturesDto> mapFromJson(dynamic json) {
    final map = <String, AgentCapabilityFeaturesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentCapabilityFeaturesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentCapabilityFeaturesDto-objects as value to a dart map
  static Map<String, List<AgentCapabilityFeaturesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentCapabilityFeaturesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentCapabilityFeaturesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conversationQueue',
    'durableEvents',
    'conversationClaims',
    'humanHandoff',
    'internalNotes',
    'threadedReplyDrafts',
    'webhookSubscriptionsManagedByOwner',
    'virtualTotpDevices',
    'phoneNumberSmsRead',
    'phoneNumberSmsSend',
    'smsConversationQueue',
    'smsDurableEvents',
    'smsConversationClaims',
    'smsHumanHandoff',
    'smsInternalNotes',
    'smsIdempotentSend',
  };
}

