//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailHtmlDto {
  /// Returns a new [EmailHtmlDto] instance.
  EmailHtmlDto({
    this.subject,
    this.body,
  });

  String subject;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailHtmlDto &&
     other.subject == subject &&
     other.body == body;

  @override
  int get hashCode =>
    (subject == null ? 0 : subject.hashCode) +
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'EmailHtmlDto[subject=$subject, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [EmailHtmlDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailHtmlDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailHtmlDto(
        subject: json[r'subject'],
        body: json[r'body'],
    );

  static List<EmailHtmlDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailHtmlDto>[]
      : json.map((v) => EmailHtmlDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailHtmlDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailHtmlDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailHtmlDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailHtmlDto-objects as value to a dart map
  static Map<String, List<EmailHtmlDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailHtmlDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailHtmlDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

