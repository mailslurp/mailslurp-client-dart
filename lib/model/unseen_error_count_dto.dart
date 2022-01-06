//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnseenErrorCountDto {
  /// Returns a new [UnseenErrorCountDto] instance.
  UnseenErrorCountDto({
    this.count,
  });

  int count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnseenErrorCountDto &&
     other.count == count;

  @override
  int get hashCode =>
    (count == null ? 0 : count.hashCode);

  @override
  String toString() => 'UnseenErrorCountDto[count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (count != null) {
      json[r'count'] = count;
    }
    return json;
  }

  /// Returns a new [UnseenErrorCountDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UnseenErrorCountDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UnseenErrorCountDto(
        count: json[r'count'],
    );

  static List<UnseenErrorCountDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UnseenErrorCountDto>[]
      : json.map((v) => UnseenErrorCountDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, UnseenErrorCountDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UnseenErrorCountDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UnseenErrorCountDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UnseenErrorCountDto-objects as value to a dart map
  static Map<String, List<UnseenErrorCountDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnseenErrorCountDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UnseenErrorCountDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

