//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailLinksResult {
  /// Returns a new [EmailLinksResult] instance.
  EmailLinksResult({
    this.links = const [],
    this.body,
  });

  List<String> links;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailLinksResult &&
     other.links == links &&
     other.body == body;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'EmailLinksResult[links=$links, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [EmailLinksResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailLinksResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailLinksResult(
        links: json[r'links'] == null
          ? null
          : (json[r'links'] as List).cast<String>(),
        body: json[r'body'],
    );

  static List<EmailLinksResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailLinksResult>[]
      : json.map((v) => EmailLinksResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailLinksResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailLinksResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailLinksResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailLinksResult-objects as value to a dart map
  static Map<String, List<EmailLinksResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailLinksResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailLinksResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

