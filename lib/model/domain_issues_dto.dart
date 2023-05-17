//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainIssuesDto {
  /// Returns a new [DomainIssuesDto] instance.
  DomainIssuesDto({
    @required this.hasIssues,
  });

  bool hasIssues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainIssuesDto &&
     other.hasIssues == hasIssues;

  @override
  int get hashCode =>
    (hasIssues == null ? 0 : hasIssues.hashCode);

  @override
  String toString() => 'DomainIssuesDto[hasIssues=$hasIssues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hasIssues'] = hasIssues;
    return json;
  }

  /// Returns a new [DomainIssuesDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DomainIssuesDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DomainIssuesDto(
        hasIssues: json[r'hasIssues'],
    );

  static List<DomainIssuesDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainIssuesDto>[]
      : json.map((v) => DomainIssuesDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, DomainIssuesDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DomainIssuesDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DomainIssuesDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DomainIssuesDto-objects as value to a dart map
  static Map<String, List<DomainIssuesDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DomainIssuesDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DomainIssuesDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

