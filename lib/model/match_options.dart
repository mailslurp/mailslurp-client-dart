//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MatchOptions {
  /// Returns a new [MatchOptions] instance.
  MatchOptions({
    this.matches = const [],
    this.conditions = const [],
  });

  /// Zero or more match options such as `{ field: 'SUBJECT', should: 'CONTAIN', value: 'Welcome' }`. Options are additive so if one does not match the email is excluded from results
  List<MatchOption> matches;

  /// Zero or more conditions such as `{ condition: 'HAS_ATTACHMENTS', value: 'TRUE' }`. Note the values are the strings `TRUE|FALSE` not booleans.
  List<ConditionOption> conditions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MatchOptions &&
     other.matches == matches &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    (matches == null ? 0 : matches.hashCode) +
    (conditions == null ? 0 : conditions.hashCode);

  @override
  String toString() => 'MatchOptions[matches=$matches, conditions=$conditions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (matches != null) {
      json[r'matches'] = matches;
    }
    if (conditions != null) {
      json[r'conditions'] = conditions;
    }
    return json;
  }

  /// Returns a new [MatchOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MatchOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MatchOptions(
        matches: MatchOption.listFromJson(json[r'matches']),
        conditions: ConditionOption.listFromJson(json[r'conditions']),
    );

  static List<MatchOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MatchOptions>[]
      : json.map((v) => MatchOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, MatchOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MatchOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MatchOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MatchOptions-objects as value to a dart map
  static Map<String, List<MatchOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MatchOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MatchOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

