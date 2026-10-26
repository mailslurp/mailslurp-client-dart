//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentConversationCursorPageDto {
  /// Returns a new [AgentConversationCursorPageDto] instance.
  AgentConversationCursorPageDto({
    this.items = const [],
    this.nextCursor,
    required this.hasMore,
  });

  List<AgentConversationQueueItemDto> items;

  String? nextCursor;

  bool hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationCursorPageDto &&
     other.items == items &&
     other.nextCursor == nextCursor &&
     other.hasMore == hasMore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (hasMore.hashCode);

  @override
  String toString() => 'AgentConversationCursorPageDto[items=$items, nextCursor=$nextCursor, hasMore=$hasMore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'hasMore'] = this.hasMore;
    return json;
  }

  /// Returns a new [AgentConversationCursorPageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationCursorPageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentConversationCursorPageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentConversationCursorPageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentConversationCursorPageDto(
        items: AgentConversationQueueItemDto.listFromJson(json[r'items']),
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        hasMore: mapValueOfType<bool>(json, r'hasMore')!,
      );
    }
    return null;
  }

  static List<AgentConversationCursorPageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationCursorPageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationCursorPageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationCursorPageDto> mapFromJson(dynamic json) {
    final map = <String, AgentConversationCursorPageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationCursorPageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationCursorPageDto-objects as value to a dart map
  static Map<String, List<AgentConversationCursorPageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationCursorPageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationCursorPageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'hasMore',
  };
}

