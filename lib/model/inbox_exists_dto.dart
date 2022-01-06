//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxExistsDto {
  /// Returns a new [InboxExistsDto] instance.
  InboxExistsDto({
    this.exists,
  });

  bool exists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxExistsDto &&
     other.exists == exists;

  @override
  int get hashCode =>
    (exists == null ? 0 : exists.hashCode);

  @override
  String toString() => 'InboxExistsDto[exists=$exists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exists != null) {
      json[r'exists'] = exists;
    }
    return json;
  }

  /// Returns a new [InboxExistsDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxExistsDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxExistsDto(
        exists: json[r'exists'],
    );

  static List<InboxExistsDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxExistsDto>[]
      : json.map((v) => InboxExistsDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxExistsDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxExistsDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxExistsDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxExistsDto-objects as value to a dart map
  static Map<String, List<InboxExistsDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxExistsDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxExistsDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

