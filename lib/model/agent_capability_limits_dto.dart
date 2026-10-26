//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentCapabilityLimitsDto {
  /// Returns a new [AgentCapabilityLimitsDto] instance.
  AgentCapabilityLimitsDto({
    required this.maxConversationPageSize,
    required this.maxThreadPageSize,
    required this.maxEventBatchSize,
    required this.maxLongPollSeconds,
    required this.maxClaimLeaseSeconds,
  });

  int maxConversationPageSize;

  int maxThreadPageSize;

  int maxEventBatchSize;

  int maxLongPollSeconds;

  int maxClaimLeaseSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentCapabilityLimitsDto &&
     other.maxConversationPageSize == maxConversationPageSize &&
     other.maxThreadPageSize == maxThreadPageSize &&
     other.maxEventBatchSize == maxEventBatchSize &&
     other.maxLongPollSeconds == maxLongPollSeconds &&
     other.maxClaimLeaseSeconds == maxClaimLeaseSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maxConversationPageSize.hashCode) +
    (maxThreadPageSize.hashCode) +
    (maxEventBatchSize.hashCode) +
    (maxLongPollSeconds.hashCode) +
    (maxClaimLeaseSeconds.hashCode);

  @override
  String toString() => 'AgentCapabilityLimitsDto[maxConversationPageSize=$maxConversationPageSize, maxThreadPageSize=$maxThreadPageSize, maxEventBatchSize=$maxEventBatchSize, maxLongPollSeconds=$maxLongPollSeconds, maxClaimLeaseSeconds=$maxClaimLeaseSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'maxConversationPageSize'] = this.maxConversationPageSize;
      json[r'maxThreadPageSize'] = this.maxThreadPageSize;
      json[r'maxEventBatchSize'] = this.maxEventBatchSize;
      json[r'maxLongPollSeconds'] = this.maxLongPollSeconds;
      json[r'maxClaimLeaseSeconds'] = this.maxClaimLeaseSeconds;
    return json;
  }

  /// Returns a new [AgentCapabilityLimitsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentCapabilityLimitsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentCapabilityLimitsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentCapabilityLimitsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentCapabilityLimitsDto(
        maxConversationPageSize: mapValueOfType<int>(json, r'maxConversationPageSize')!,
        maxThreadPageSize: mapValueOfType<int>(json, r'maxThreadPageSize')!,
        maxEventBatchSize: mapValueOfType<int>(json, r'maxEventBatchSize')!,
        maxLongPollSeconds: mapValueOfType<int>(json, r'maxLongPollSeconds')!,
        maxClaimLeaseSeconds: mapValueOfType<int>(json, r'maxClaimLeaseSeconds')!,
      );
    }
    return null;
  }

  static List<AgentCapabilityLimitsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCapabilityLimitsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCapabilityLimitsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentCapabilityLimitsDto> mapFromJson(dynamic json) {
    final map = <String, AgentCapabilityLimitsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentCapabilityLimitsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentCapabilityLimitsDto-objects as value to a dart map
  static Map<String, List<AgentCapabilityLimitsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentCapabilityLimitsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentCapabilityLimitsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'maxConversationPageSize',
    'maxThreadPageSize',
    'maxEventBatchSize',
    'maxLongPollSeconds',
    'maxClaimLeaseSeconds',
  };
}

