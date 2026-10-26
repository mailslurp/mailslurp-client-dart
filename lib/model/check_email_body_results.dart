//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailBodyResults {
  /// Returns a new [CheckEmailBodyResults] instance.
  CheckEmailBodyResults({
    required this.hasIssues,
    this.linkIssues = const [],
    this.imageIssues = const [],
    this.spellingIssues = const [],
  });

  bool hasIssues;

  List<LinkIssue> linkIssues;

  List<ImageIssue> imageIssues;

  List<SpellingIssue> spellingIssues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailBodyResults &&
     other.hasIssues == hasIssues &&
     other.linkIssues == linkIssues &&
     other.imageIssues == imageIssues &&
     other.spellingIssues == spellingIssues;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hasIssues.hashCode) +
    (linkIssues.hashCode) +
    (imageIssues.hashCode) +
    (spellingIssues.hashCode);

  @override
  String toString() => 'CheckEmailBodyResults[hasIssues=$hasIssues, linkIssues=$linkIssues, imageIssues=$imageIssues, spellingIssues=$spellingIssues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hasIssues'] = this.hasIssues;
      json[r'linkIssues'] = this.linkIssues;
      json[r'imageIssues'] = this.imageIssues;
      json[r'spellingIssues'] = this.spellingIssues;
    return json;
  }

  /// Returns a new [CheckEmailBodyResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailBodyResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailBodyResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailBodyResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailBodyResults(
        hasIssues: mapValueOfType<bool>(json, r'hasIssues')!,
        linkIssues: LinkIssue.listFromJson(json[r'linkIssues']),
        imageIssues: ImageIssue.listFromJson(json[r'imageIssues']),
        spellingIssues: SpellingIssue.listFromJson(json[r'spellingIssues']),
      );
    }
    return null;
  }

  static List<CheckEmailBodyResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBodyResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBodyResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailBodyResults> mapFromJson(dynamic json) {
    final map = <String, CheckEmailBodyResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailBodyResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailBodyResults-objects as value to a dart map
  static Map<String, List<CheckEmailBodyResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailBodyResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailBodyResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hasIssues',
    'linkIssues',
    'imageIssues',
    'spellingIssues',
  };
}

