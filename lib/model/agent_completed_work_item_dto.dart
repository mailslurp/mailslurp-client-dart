//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentCompletedWorkItemDto {
  /// Returns a new [AgentCompletedWorkItemDto] instance.
  AgentCompletedWorkItemDto({
    required this.sentEmail,
    required this.conversationId,
    required this.claimReleased,
  });

  SentEmailDto sentEmail;

  String conversationId;

  bool claimReleased;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentCompletedWorkItemDto &&
     other.sentEmail == sentEmail &&
     other.conversationId == conversationId &&
     other.claimReleased == claimReleased;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sentEmail.hashCode) +
    (conversationId.hashCode) +
    (claimReleased.hashCode);

  @override
  String toString() => 'AgentCompletedWorkItemDto[sentEmail=$sentEmail, conversationId=$conversationId, claimReleased=$claimReleased]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sentEmail'] = this.sentEmail;
      json[r'conversationId'] = this.conversationId;
      json[r'claimReleased'] = this.claimReleased;
    return json;
  }

  /// Returns a new [AgentCompletedWorkItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentCompletedWorkItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentCompletedWorkItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentCompletedWorkItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentCompletedWorkItemDto(
        sentEmail: SentEmailDto.fromJson(json[r'sentEmail'])!,
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        claimReleased: mapValueOfType<bool>(json, r'claimReleased')!,
      );
    }
    return null;
  }

  static List<AgentCompletedWorkItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCompletedWorkItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCompletedWorkItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentCompletedWorkItemDto> mapFromJson(dynamic json) {
    final map = <String, AgentCompletedWorkItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentCompletedWorkItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentCompletedWorkItemDto-objects as value to a dart map
  static Map<String, List<AgentCompletedWorkItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentCompletedWorkItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentCompletedWorkItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sentEmail',
    'conversationId',
    'claimReleased',
  };
}

