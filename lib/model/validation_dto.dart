//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationDto {
  /// Returns a new [ValidationDto] instance.
  ValidationDto({
    @required this.emailId,
    @required this.html,
  });

  /// ID of the email validated
  String emailId;

  HTMLValidationResult html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationDto &&
     other.emailId == emailId &&
     other.html == html;

  @override
  int get hashCode =>
    (emailId == null ? 0 : emailId.hashCode) +
    (html == null ? 0 : html.hashCode);

  @override
  String toString() => 'ValidationDto[emailId=$emailId, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailId'] = emailId;
      json[r'html'] = html;
    return json;
  }

  /// Returns a new [ValidationDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ValidationDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ValidationDto(
        emailId: json[r'emailId'],
        html: HTMLValidationResult.fromJson(json[r'html']),
    );

  static List<ValidationDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ValidationDto>[]
      : json.map((v) => ValidationDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ValidationDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ValidationDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ValidationDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ValidationDto-objects as value to a dart map
  static Map<String, List<ValidationDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidationDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ValidationDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

