//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CountDto {
  /// Returns a new [CountDto] instance.
  CountDto({
    @required this.totalElements,
  });

  int totalElements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CountDto &&
     other.totalElements == totalElements;

  @override
  int get hashCode =>
    (totalElements == null ? 0 : totalElements.hashCode);

  @override
  String toString() => 'CountDto[totalElements=$totalElements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalElements'] = totalElements;
    return json;
  }

  /// Returns a new [CountDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CountDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CountDto(
        totalElements: json[r'totalElements'],
    );

  static List<CountDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CountDto>[]
      : json.map((v) => CountDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, CountDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CountDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CountDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CountDto-objects as value to a dart map
  static Map<String, List<CountDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CountDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CountDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

