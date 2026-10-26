//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateInboxReplierActiveOptions {
  /// Returns a new [UpdateInboxReplierActiveOptions] instance.
  UpdateInboxReplierActiveOptions({
    required this.active,
  });

  /// Whether the inbox replier is active
  bool active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateInboxReplierActiveOptions &&
     other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active.hashCode);

  @override
  String toString() => 'UpdateInboxReplierActiveOptions[active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'active'] = this.active;
    return json;
  }

  /// Returns a new [UpdateInboxReplierActiveOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateInboxReplierActiveOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateInboxReplierActiveOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateInboxReplierActiveOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateInboxReplierActiveOptions(
        active: mapValueOfType<bool>(json, r'active')!,
      );
    }
    return null;
  }

  static List<UpdateInboxReplierActiveOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateInboxReplierActiveOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateInboxReplierActiveOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateInboxReplierActiveOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateInboxReplierActiveOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateInboxReplierActiveOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxReplierActiveOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxReplierActiveOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateInboxReplierActiveOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateInboxReplierActiveOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'active',
  };
}

