//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageScope {
  /// Returns a new [AIMessageScope] instance.
  AIMessageScope({
    this.inboxIds = const [],
    this.phoneNumberIds = const [],
  });

  List<String> inboxIds;

  List<String> phoneNumberIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageScope &&
     other.inboxIds == inboxIds &&
     other.phoneNumberIds == phoneNumberIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxIds.hashCode) +
    (phoneNumberIds.hashCode);

  @override
  String toString() => 'AIMessageScope[inboxIds=$inboxIds, phoneNumberIds=$phoneNumberIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxIds'] = this.inboxIds;
      json[r'phoneNumberIds'] = this.phoneNumberIds;
    return json;
  }

  /// Returns a new [AIMessageScope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageScope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageScope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageScope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageScope(
        inboxIds: json[r'inboxIds'] is List
            ? (json[r'inboxIds'] as List).cast<String>()
            : const [],
        phoneNumberIds: json[r'phoneNumberIds'] is List
            ? (json[r'phoneNumberIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AIMessageScope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageScope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageScope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageScope> mapFromJson(dynamic json) {
    final map = <String, AIMessageScope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageScope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageScope-objects as value to a dart map
  static Map<String, List<AIMessageScope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageScope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageScope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxIds',
    'phoneNumberIds',
  };
}

