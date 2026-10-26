//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAgentSmsConversationNoteOptions {
  /// Returns a new [CreateAgentSmsConversationNoteOptions] instance.
  CreateAgentSmsConversationNoteOptions({
    required this.body,
    this.sourceSmsId,
  });

  String body;

  String? sourceSmsId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAgentSmsConversationNoteOptions &&
     other.body == body &&
     other.sourceSmsId == sourceSmsId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (sourceSmsId == null ? 0 : sourceSmsId!.hashCode);

  @override
  String toString() => 'CreateAgentSmsConversationNoteOptions[body=$body, sourceSmsId=$sourceSmsId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
    if (this.sourceSmsId != null) {
      json[r'sourceSmsId'] = this.sourceSmsId;
    } else {
      json[r'sourceSmsId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAgentSmsConversationNoteOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAgentSmsConversationNoteOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAgentSmsConversationNoteOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAgentSmsConversationNoteOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAgentSmsConversationNoteOptions(
        body: mapValueOfType<String>(json, r'body')!,
        sourceSmsId: mapValueOfType<String>(json, r'sourceSmsId'),
      );
    }
    return null;
  }

  static List<CreateAgentSmsConversationNoteOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentSmsConversationNoteOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentSmsConversationNoteOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAgentSmsConversationNoteOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAgentSmsConversationNoteOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAgentSmsConversationNoteOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAgentSmsConversationNoteOptions-objects as value to a dart map
  static Map<String, List<CreateAgentSmsConversationNoteOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAgentSmsConversationNoteOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAgentSmsConversationNoteOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
  };
}

