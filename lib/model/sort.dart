//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Sort {
  /// Returns a new [Sort] instance.
  Sort({
    this.empty,
    this.sorted,
    this.unsorted,
  });

  bool empty;

  bool sorted;

  bool unsorted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sort &&
     other.empty == empty &&
     other.sorted == sorted &&
     other.unsorted == unsorted;

  @override
  int get hashCode =>
    (empty == null ? 0 : empty.hashCode) +
    (sorted == null ? 0 : sorted.hashCode) +
    (unsorted == null ? 0 : unsorted.hashCode);

  @override
  String toString() => 'Sort[empty=$empty, sorted=$sorted, unsorted=$unsorted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (empty != null) {
      json[r'empty'] = empty;
    }
    if (sorted != null) {
      json[r'sorted'] = sorted;
    }
    if (unsorted != null) {
      json[r'unsorted'] = unsorted;
    }
    return json;
  }

  /// Returns a new [Sort] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Sort fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Sort(
        empty: json[r'empty'],
        sorted: json[r'sorted'],
        unsorted: json[r'unsorted'],
    );

  static List<Sort> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Sort>[]
      : json.map((v) => Sort.fromJson(v)).toList(growable: true == growable);

  static Map<String, Sort> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Sort>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Sort.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Sort-objects as value to a dart map
  static Map<String, List<Sort>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Sort>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Sort.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

