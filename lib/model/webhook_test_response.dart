//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookTestResponse {
  /// Returns a new [WebhookTestResponse] instance.
  WebhookTestResponse({
    this.message,
    this.statusCode,
  });

  String message;

  int statusCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestResponse &&
     other.message == message &&
     other.statusCode == statusCode;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (statusCode == null ? 0 : statusCode.hashCode);

  @override
  String toString() => 'WebhookTestResponse[message=$message, statusCode=$statusCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    if (statusCode != null) {
      json[r'statusCode'] = statusCode;
    }
    return json;
  }

  /// Returns a new [WebhookTestResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookTestResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookTestResponse(
        message: json[r'message'],
        statusCode: json[r'statusCode'],
    );

  static List<WebhookTestResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookTestResponse>[]
      : json.map((v) => WebhookTestResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookTestResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookTestResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookTestResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestResponse-objects as value to a dart map
  static Map<String, List<WebhookTestResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookTestResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookTestResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

