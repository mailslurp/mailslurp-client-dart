//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentDeferredWorkItemDto {
  /// Returns a new [AgentDeferredWorkItemDto] instance.
  AgentDeferredWorkItemDto({
    required this.handoff,
    required this.conversation,
    required this.claimReleased,
  });

  AgentConversationHandoffDto handoff;

  AgentConversationDetailV2Dto conversation;

  bool claimReleased;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentDeferredWorkItemDto &&
     other.handoff == handoff &&
     other.conversation == conversation &&
     other.claimReleased == claimReleased;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (handoff.hashCode) +
    (conversation.hashCode) +
    (claimReleased.hashCode);

  @override
  String toString() => 'AgentDeferredWorkItemDto[handoff=$handoff, conversation=$conversation, claimReleased=$claimReleased]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'handoff'] = this.handoff;
      json[r'conversation'] = this.conversation;
      json[r'claimReleased'] = this.claimReleased;
    return json;
  }

  /// Returns a new [AgentDeferredWorkItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentDeferredWorkItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentDeferredWorkItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentDeferredWorkItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentDeferredWorkItemDto(
        handoff: AgentConversationHandoffDto.fromJson(json[r'handoff'])!,
        conversation: AgentConversationDetailV2Dto.fromJson(json[r'conversation'])!,
        claimReleased: mapValueOfType<bool>(json, r'claimReleased')!,
      );
    }
    return null;
  }

  static List<AgentDeferredWorkItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentDeferredWorkItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentDeferredWorkItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentDeferredWorkItemDto> mapFromJson(dynamic json) {
    final map = <String, AgentDeferredWorkItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentDeferredWorkItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentDeferredWorkItemDto-objects as value to a dart map
  static Map<String, List<AgentDeferredWorkItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentDeferredWorkItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentDeferredWorkItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'handoff',
    'conversation',
    'claimReleased',
  };
}

