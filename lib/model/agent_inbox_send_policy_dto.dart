//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentInboxSendPolicyDto {
  /// Returns a new [AgentInboxSendPolicyDto] instance.
  AgentInboxSendPolicyDto({
    required this.inboxId,
    this.recipients = const [],
    required this.allowed,
    this.reasonCode,
    this.blockingRulesetIds = const [],
    required this.operatorUrl,
  });

  String inboxId;

  List<String> recipients;

  bool allowed;

  String? reasonCode;

  List<String> blockingRulesetIds;

  String operatorUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentInboxSendPolicyDto &&
     other.inboxId == inboxId &&
     other.recipients == recipients &&
     other.allowed == allowed &&
     other.reasonCode == reasonCode &&
     other.blockingRulesetIds == blockingRulesetIds &&
     other.operatorUrl == operatorUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId.hashCode) +
    (recipients.hashCode) +
    (allowed.hashCode) +
    (reasonCode == null ? 0 : reasonCode!.hashCode) +
    (blockingRulesetIds.hashCode) +
    (operatorUrl.hashCode);

  @override
  String toString() => 'AgentInboxSendPolicyDto[inboxId=$inboxId, recipients=$recipients, allowed=$allowed, reasonCode=$reasonCode, blockingRulesetIds=$blockingRulesetIds, operatorUrl=$operatorUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = this.inboxId;
      json[r'recipients'] = this.recipients;
      json[r'allowed'] = this.allowed;
    if (this.reasonCode != null) {
      json[r'reasonCode'] = this.reasonCode;
    } else {
      json[r'reasonCode'] = null;
    }
      json[r'blockingRulesetIds'] = this.blockingRulesetIds;
      json[r'operatorUrl'] = this.operatorUrl;
    return json;
  }

  /// Returns a new [AgentInboxSendPolicyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentInboxSendPolicyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentInboxSendPolicyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentInboxSendPolicyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentInboxSendPolicyDto(
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        recipients: json[r'recipients'] is List
            ? (json[r'recipients'] as List).cast<String>()
            : const [],
        allowed: mapValueOfType<bool>(json, r'allowed')!,
        reasonCode: mapValueOfType<String>(json, r'reasonCode'),
        blockingRulesetIds: json[r'blockingRulesetIds'] is List
            ? (json[r'blockingRulesetIds'] as List).cast<String>()
            : const [],
        operatorUrl: mapValueOfType<String>(json, r'operatorUrl')!,
      );
    }
    return null;
  }

  static List<AgentInboxSendPolicyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentInboxSendPolicyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentInboxSendPolicyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentInboxSendPolicyDto> mapFromJson(dynamic json) {
    final map = <String, AgentInboxSendPolicyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentInboxSendPolicyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentInboxSendPolicyDto-objects as value to a dart map
  static Map<String, List<AgentInboxSendPolicyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentInboxSendPolicyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentInboxSendPolicyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'recipients',
    'allowed',
    'blockingRulesetIds',
    'operatorUrl',
  };
}

