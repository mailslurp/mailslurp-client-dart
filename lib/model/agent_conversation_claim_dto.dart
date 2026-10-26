//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentConversationClaimDto {
  /// Returns a new [AgentConversationClaimDto] instance.
  AgentConversationClaimDto({
    required this.claimId,
    required this.conversationId,
    required this.apiKeyEntityId,
    required this.workerId,
    required this.acquiredAt,
    required this.expiresAt,
    this.conversationVersion,
  });

  String claimId;

  String conversationId;

  String apiKeyEntityId;

  String workerId;

  DateTime acquiredAt;

  DateTime expiresAt;

  int? conversationVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationClaimDto &&
     other.claimId == claimId &&
     other.conversationId == conversationId &&
     other.apiKeyEntityId == apiKeyEntityId &&
     other.workerId == workerId &&
     other.acquiredAt == acquiredAt &&
     other.expiresAt == expiresAt &&
     other.conversationVersion == conversationVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimId.hashCode) +
    (conversationId.hashCode) +
    (apiKeyEntityId.hashCode) +
    (workerId.hashCode) +
    (acquiredAt.hashCode) +
    (expiresAt.hashCode) +
    (conversationVersion == null ? 0 : conversationVersion!.hashCode);

  @override
  String toString() => 'AgentConversationClaimDto[claimId=$claimId, conversationId=$conversationId, apiKeyEntityId=$apiKeyEntityId, workerId=$workerId, acquiredAt=$acquiredAt, expiresAt=$expiresAt, conversationVersion=$conversationVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'claimId'] = this.claimId;
      json[r'conversationId'] = this.conversationId;
      json[r'apiKeyEntityId'] = this.apiKeyEntityId;
      json[r'workerId'] = this.workerId;
      json[r'acquiredAt'] = this.acquiredAt.toUtc().toIso8601String();
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    if (this.conversationVersion != null) {
      json[r'conversationVersion'] = this.conversationVersion;
    } else {
      json[r'conversationVersion'] = null;
    }
    return json;
  }

  /// Returns a new [AgentConversationClaimDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationClaimDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentConversationClaimDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentConversationClaimDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentConversationClaimDto(
        claimId: mapValueOfType<String>(json, r'claimId')!,
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        apiKeyEntityId: mapValueOfType<String>(json, r'apiKeyEntityId')!,
        workerId: mapValueOfType<String>(json, r'workerId')!,
        acquiredAt: mapDateTime(json, r'acquiredAt', '')!,
        expiresAt: mapDateTime(json, r'expiresAt', '')!,
        conversationVersion: mapValueOfType<int>(json, r'conversationVersion'),
      );
    }
    return null;
  }

  static List<AgentConversationClaimDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationClaimDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationClaimDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationClaimDto> mapFromJson(dynamic json) {
    final map = <String, AgentConversationClaimDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationClaimDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationClaimDto-objects as value to a dart map
  static Map<String, List<AgentConversationClaimDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationClaimDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationClaimDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'claimId',
    'conversationId',
    'apiKeyEntityId',
    'workerId',
    'acquiredAt',
    'expiresAt',
  };
}

