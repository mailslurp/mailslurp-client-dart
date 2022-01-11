//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnreadCount {
  /// Returns a new [UnreadCount] instance.
  UnreadCount({
    @required this.count,
  });

  int count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnreadCount &&
     other.count == count;

  @override
  int get hashCode =>
    (count == null ? 0 : count.hashCode);

  @override
  String toString() => 'UnreadCount[count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'count'] = count;
    return json;
  }

  /// Returns a new [UnreadCount] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UnreadCount fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UnreadCount(
        count: json[r'count'],
    );

  static List<UnreadCount> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UnreadCount>[]
      : json.map((v) => UnreadCount.fromJson(v)).toList(growable: true == growable);

  static Map<String, UnreadCount> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UnreadCount>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UnreadCount.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UnreadCount-objects as value to a dart map
  static Map<String, List<UnreadCount>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnreadCount>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UnreadCount.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

