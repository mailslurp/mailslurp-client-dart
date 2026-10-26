//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentWorkItemDto {
  /// Returns a new [AgentWorkItemDto] instance.
  AgentWorkItemDto({
    this.conversation,
    this.claim,
    this.nextCursor,
    required this.hasMore,
  });

  AgentConversationDetailV2Dto? conversation;

  AgentConversationClaimDto? claim;

  String? nextCursor;

  bool hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentWorkItemDto &&
     other.conversation == conversation &&
     other.claim == claim &&
     other.nextCursor == nextCursor &&
     other.hasMore == hasMore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversation == null ? 0 : conversation!.hashCode) +
    (claim == null ? 0 : claim!.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (hasMore.hashCode);

  @override
  String toString() => 'AgentWorkItemDto[conversation=$conversation, claim=$claim, nextCursor=$nextCursor, hasMore=$hasMore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.conversation != null) {
      json[r'conversation'] = this.conversation;
    } else {
      json[r'conversation'] = null;
    }
    if (this.claim != null) {
      json[r'claim'] = this.claim;
    } else {
      json[r'claim'] = null;
    }
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'hasMore'] = this.hasMore;
    return json;
  }

  /// Returns a new [AgentWorkItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentWorkItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentWorkItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentWorkItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentWorkItemDto(
        conversation: AgentConversationDetailV2Dto.fromJson(json[r'conversation']),
        claim: AgentConversationClaimDto.fromJson(json[r'claim']),
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        hasMore: mapValueOfType<bool>(json, r'hasMore')!,
      );
    }
    return null;
  }

  static List<AgentWorkItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentWorkItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentWorkItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentWorkItemDto> mapFromJson(dynamic json) {
    final map = <String, AgentWorkItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentWorkItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentWorkItemDto-objects as value to a dart map
  static Map<String, List<AgentWorkItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentWorkItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentWorkItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hasMore',
  };
}

