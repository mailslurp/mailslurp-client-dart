//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JSONSchemaDto {
  /// Returns a new [JSONSchemaDto] instance.
  JSONSchemaDto({
    this.value,
  });

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JSONSchemaDto &&
     other.value == value;

  @override
  int get hashCode =>
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'JSONSchemaDto[value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [JSONSchemaDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static JSONSchemaDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : JSONSchemaDto(
        value: json[r'value'],
    );

  static List<JSONSchemaDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JSONSchemaDto>[]
      : json.map((v) => JSONSchemaDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, JSONSchemaDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JSONSchemaDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JSONSchemaDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JSONSchemaDto-objects as value to a dart map
  static Map<String, List<JSONSchemaDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<JSONSchemaDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JSONSchemaDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

