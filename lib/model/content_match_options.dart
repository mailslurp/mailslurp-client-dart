//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContentMatchOptions {
  /// Returns a new [ContentMatchOptions] instance.
  ContentMatchOptions({
    required this.pattern,
  });

  /// Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns.
  String pattern;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContentMatchOptions &&
     other.pattern == pattern;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pattern.hashCode);

  @override
  String toString() => 'ContentMatchOptions[pattern=$pattern]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pattern'] = this.pattern;
    return json;
  }

  /// Returns a new [ContentMatchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContentMatchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContentMatchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContentMatchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContentMatchOptions(
        pattern: mapValueOfType<String>(json, r'pattern')!,
      );
    }
    return null;
  }

  static List<ContentMatchOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContentMatchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContentMatchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContentMatchOptions> mapFromJson(dynamic json) {
    final map = <String, ContentMatchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContentMatchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContentMatchOptions-objects as value to a dart map
  static Map<String, List<ContentMatchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContentMatchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContentMatchOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pattern',
  };
}

