//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailPreviewUrls {
  /// Returns a new [EmailPreviewUrls] instance.
  EmailPreviewUrls({
    @required this.rawSmtpMessageUrl,
    @required this.plainHtmlBodyUrl,
  });

  String rawSmtpMessageUrl;

  String plainHtmlBodyUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreviewUrls &&
     other.rawSmtpMessageUrl == rawSmtpMessageUrl &&
     other.plainHtmlBodyUrl == plainHtmlBodyUrl;

  @override
  int get hashCode =>
    (rawSmtpMessageUrl == null ? 0 : rawSmtpMessageUrl.hashCode) +
    (plainHtmlBodyUrl == null ? 0 : plainHtmlBodyUrl.hashCode);

  @override
  String toString() => 'EmailPreviewUrls[rawSmtpMessageUrl=$rawSmtpMessageUrl, plainHtmlBodyUrl=$plainHtmlBodyUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawSmtpMessageUrl'] = rawSmtpMessageUrl;
      json[r'plainHtmlBodyUrl'] = plainHtmlBodyUrl;
    return json;
  }

  /// Returns a new [EmailPreviewUrls] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailPreviewUrls fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailPreviewUrls(
        rawSmtpMessageUrl: json[r'rawSmtpMessageUrl'],
        plainHtmlBodyUrl: json[r'plainHtmlBodyUrl'],
    );

  static List<EmailPreviewUrls> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailPreviewUrls>[]
      : json.map((v) => EmailPreviewUrls.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailPreviewUrls> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailPreviewUrls>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailPreviewUrls.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailPreviewUrls-objects as value to a dart map
  static Map<String, List<EmailPreviewUrls>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailPreviewUrls>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailPreviewUrls.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

