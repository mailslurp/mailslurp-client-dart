//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapServerSearchResult {
  /// Returns a new [ImapServerSearchResult] instance.
  ImapServerSearchResult({
    this.results = const [],
  });

  List<ImapEmailProjection> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapServerSearchResult &&
     other.results == results;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode);

  @override
  String toString() => 'ImapServerSearchResult[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [ImapServerSearchResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapServerSearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapServerSearchResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapServerSearchResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapServerSearchResult(
        results: ImapEmailProjection.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<ImapServerSearchResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerSearchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerSearchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapServerSearchResult> mapFromJson(dynamic json) {
    final map = <String, ImapServerSearchResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapServerSearchResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapServerSearchResult-objects as value to a dart map
  static Map<String, List<ImapServerSearchResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapServerSearchResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapServerSearchResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'results',
  };
}

