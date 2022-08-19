//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContentMatchOptions {
  /// Returns a new [ContentMatchOptions] instance.
  ContentMatchOptions({
    @required this.pattern,
  });

  /// Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns.
  String pattern;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContentMatchOptions &&
     other.pattern == pattern;

  @override
  int get hashCode =>
    (pattern == null ? 0 : pattern.hashCode);

  @override
  String toString() => 'ContentMatchOptions[pattern=$pattern]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pattern'] = pattern;
    return json;
  }

  /// Returns a new [ContentMatchOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContentMatchOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ContentMatchOptions(
        pattern: json[r'pattern'],
    );

  static List<ContentMatchOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ContentMatchOptions>[]
      : json.map((v) => ContentMatchOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ContentMatchOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ContentMatchOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ContentMatchOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ContentMatchOptions-objects as value to a dart map
  static Map<String, List<ContentMatchOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContentMatchOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ContentMatchOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

