//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmptyResponseDto {
  /// Returns a new [EmptyResponseDto] instance.
  EmptyResponseDto({
    this.message,
  });

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmptyResponseDto &&
     other.message == message;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'EmptyResponseDto[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [EmptyResponseDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmptyResponseDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmptyResponseDto(
        message: json[r'message'],
    );

  static List<EmptyResponseDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmptyResponseDto>[]
      : json.map((v) => EmptyResponseDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmptyResponseDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmptyResponseDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmptyResponseDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmptyResponseDto-objects as value to a dart map
  static Map<String, List<EmptyResponseDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmptyResponseDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmptyResponseDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

