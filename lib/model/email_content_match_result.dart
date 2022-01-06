//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailContentMatchResult {
  /// Returns a new [EmailContentMatchResult] instance.
  EmailContentMatchResult({
    this.pattern,
    this.matches = const [],
  });

  String pattern;

  List<String> matches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailContentMatchResult &&
     other.pattern == pattern &&
     other.matches == matches;

  @override
  int get hashCode =>
    (pattern == null ? 0 : pattern.hashCode) +
    (matches == null ? 0 : matches.hashCode);

  @override
  String toString() => 'EmailContentMatchResult[pattern=$pattern, matches=$matches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (pattern != null) {
      json[r'pattern'] = pattern;
    }
    if (matches != null) {
      json[r'matches'] = matches;
    }
    return json;
  }

  /// Returns a new [EmailContentMatchResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailContentMatchResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailContentMatchResult(
        pattern: json[r'pattern'],
        matches: json[r'matches'] == null
          ? null
          : (json[r'matches'] as List).cast<String>(),
    );

  static List<EmailContentMatchResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailContentMatchResult>[]
      : json.map((v) => EmailContentMatchResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailContentMatchResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailContentMatchResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailContentMatchResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailContentMatchResult-objects as value to a dart map
  static Map<String, List<EmailContentMatchResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailContentMatchResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailContentMatchResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

