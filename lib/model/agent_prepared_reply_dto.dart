//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentPreparedReplyDto {
  /// Returns a new [AgentPreparedReplyDto] instance.
  AgentPreparedReplyDto({
    required this.draft,
    required this.conversation,
    required this.claimReleased,
  });

  EmailDraftDto draft;

  AgentConversationDetailV2Dto conversation;

  bool claimReleased;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentPreparedReplyDto &&
     other.draft == draft &&
     other.conversation == conversation &&
     other.claimReleased == claimReleased;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (draft.hashCode) +
    (conversation.hashCode) +
    (claimReleased.hashCode);

  @override
  String toString() => 'AgentPreparedReplyDto[draft=$draft, conversation=$conversation, claimReleased=$claimReleased]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'draft'] = this.draft;
      json[r'conversation'] = this.conversation;
      json[r'claimReleased'] = this.claimReleased;
    return json;
  }

  /// Returns a new [AgentPreparedReplyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentPreparedReplyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentPreparedReplyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentPreparedReplyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentPreparedReplyDto(
        draft: EmailDraftDto.fromJson(json[r'draft'])!,
        conversation: AgentConversationDetailV2Dto.fromJson(json[r'conversation'])!,
        claimReleased: mapValueOfType<bool>(json, r'claimReleased')!,
      );
    }
    return null;
  }

  static List<AgentPreparedReplyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentPreparedReplyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentPreparedReplyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentPreparedReplyDto> mapFromJson(dynamic json) {
    final map = <String, AgentPreparedReplyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentPreparedReplyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentPreparedReplyDto-objects as value to a dart map
  static Map<String, List<AgentPreparedReplyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentPreparedReplyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentPreparedReplyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'draft',
    'conversation',
    'claimReleased',
  };
}

