//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAgentConversationNoteOptions {
  /// Returns a new [CreateAgentConversationNoteOptions] instance.
  CreateAgentConversationNoteOptions({
    required this.body,
    this.sourceEmailId,
    this.draftId,
  });

  String body;

  String? sourceEmailId;

  String? draftId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAgentConversationNoteOptions &&
     other.body == body &&
     other.sourceEmailId == sourceEmailId &&
     other.draftId == draftId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (sourceEmailId == null ? 0 : sourceEmailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode);

  @override
  String toString() => 'CreateAgentConversationNoteOptions[body=$body, sourceEmailId=$sourceEmailId, draftId=$draftId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
    if (this.sourceEmailId != null) {
      json[r'sourceEmailId'] = this.sourceEmailId;
    } else {
      json[r'sourceEmailId'] = null;
    }
    if (this.draftId != null) {
      json[r'draftId'] = this.draftId;
    } else {
      json[r'draftId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAgentConversationNoteOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAgentConversationNoteOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAgentConversationNoteOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAgentConversationNoteOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAgentConversationNoteOptions(
        body: mapValueOfType<String>(json, r'body')!,
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
      );
    }
    return null;
  }

  static List<CreateAgentConversationNoteOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentConversationNoteOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentConversationNoteOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAgentConversationNoteOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAgentConversationNoteOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAgentConversationNoteOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAgentConversationNoteOptions-objects as value to a dart map
  static Map<String, List<CreateAgentConversationNoteOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAgentConversationNoteOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAgentConversationNoteOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
  };
}

