//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentSmsConversationDetailDto {
  /// Returns a new [AgentSmsConversationDetailDto] instance.
  AgentSmsConversationDetailDto({
    required this.conversation,
    this.activities = const [],
    this.notes = const [],
    this.activeHandoff,
  });

  AgentSmsConversationQueueItemDto conversation;

  List<AgentActivityDto> activities;

  List<AgentConversationNoteDto> notes;

  AgentConversationHandoffDto? activeHandoff;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentSmsConversationDetailDto &&
     other.conversation == conversation &&
     other.activities == activities &&
     other.notes == notes &&
     other.activeHandoff == activeHandoff;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversation.hashCode) +
    (activities.hashCode) +
    (notes.hashCode) +
    (activeHandoff == null ? 0 : activeHandoff!.hashCode);

  @override
  String toString() => 'AgentSmsConversationDetailDto[conversation=$conversation, activities=$activities, notes=$notes, activeHandoff=$activeHandoff]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conversation'] = this.conversation;
      json[r'activities'] = this.activities;
      json[r'notes'] = this.notes;
    if (this.activeHandoff != null) {
      json[r'activeHandoff'] = this.activeHandoff;
    } else {
      json[r'activeHandoff'] = null;
    }
    return json;
  }

  /// Returns a new [AgentSmsConversationDetailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentSmsConversationDetailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentSmsConversationDetailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentSmsConversationDetailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentSmsConversationDetailDto(
        conversation: AgentSmsConversationQueueItemDto.fromJson(json[r'conversation'])!,
        activities: AgentActivityDto.listFromJson(json[r'activities']),
        notes: AgentConversationNoteDto.listFromJson(json[r'notes']),
        activeHandoff: AgentConversationHandoffDto.fromJson(json[r'activeHandoff']),
      );
    }
    return null;
  }

  static List<AgentSmsConversationDetailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationDetailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationDetailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentSmsConversationDetailDto> mapFromJson(dynamic json) {
    final map = <String, AgentSmsConversationDetailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentSmsConversationDetailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentSmsConversationDetailDto-objects as value to a dart map
  static Map<String, List<AgentSmsConversationDetailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentSmsConversationDetailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentSmsConversationDetailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conversation',
    'activities',
    'notes',
  };
}

