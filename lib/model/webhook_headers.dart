//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookHeaders {
  /// Returns a new [WebhookHeaders] instance.
  WebhookHeaders({
    this.headers = const [],
  });

  /// List of header name value pairs to include with webhook requests
  List<WebhookHeaderNameValue> headers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookHeaders &&
     other.headers == headers;

  @override
  int get hashCode =>
    (headers == null ? 0 : headers.hashCode);

  @override
  String toString() => 'WebhookHeaders[headers=$headers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'headers'] = headers;
    return json;
  }

  /// Returns a new [WebhookHeaders] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookHeaders fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookHeaders(
        headers: WebhookHeaderNameValue.listFromJson(json[r'headers']),
    );

  static List<WebhookHeaders> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookHeaders>[]
      : json.map((v) => WebhookHeaders.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookHeaders> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookHeaders>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookHeaders.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookHeaders-objects as value to a dart map
  static Map<String, List<WebhookHeaders>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookHeaders>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookHeaders.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

