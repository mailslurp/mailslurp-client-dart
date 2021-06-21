//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RawEmailJson {
  /// Returns a new [RawEmailJson] instance.
  RawEmailJson({
    @required this.content,
  });

  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RawEmailJson &&
     other.content == content;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode);

  @override
  String toString() => 'RawEmailJson[content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = content;
    return json;
  }

  /// Returns a new [RawEmailJson] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RawEmailJson fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RawEmailJson(
        content: json[r'content'],
    );

  static List<RawEmailJson> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RawEmailJson>[]
      : json.map((v) => RawEmailJson.fromJson(v)).toList(growable: true == growable);

  static Map<String, RawEmailJson> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RawEmailJson>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RawEmailJson.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RawEmailJson-objects as value to a dart map
  static Map<String, List<RawEmailJson>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RawEmailJson>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RawEmailJson.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

