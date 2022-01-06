//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTextLinesResult {
  /// Returns a new [EmailTextLinesResult] instance.
  EmailTextLinesResult({
    this.lines = const [],
    this.body,
  });

  List<String> lines;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailTextLinesResult &&
     other.lines == lines &&
     other.body == body;

  @override
  int get hashCode =>
    (lines == null ? 0 : lines.hashCode) +
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'EmailTextLinesResult[lines=$lines, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lines != null) {
      json[r'lines'] = lines;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [EmailTextLinesResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailTextLinesResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailTextLinesResult(
        lines: json[r'lines'] == null
          ? null
          : (json[r'lines'] as List).cast<String>(),
        body: json[r'body'],
    );

  static List<EmailTextLinesResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailTextLinesResult>[]
      : json.map((v) => EmailTextLinesResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailTextLinesResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailTextLinesResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailTextLinesResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailTextLinesResult-objects as value to a dart map
  static Map<String, List<EmailTextLinesResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailTextLinesResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailTextLinesResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

