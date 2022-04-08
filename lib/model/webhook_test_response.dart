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
    this.statusCode,
    this.message,
  });

  int statusCode;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestResponse &&
     other.statusCode == statusCode &&
     other.message == message;

  @override
  int get hashCode =>
    (statusCode == null ? 0 : statusCode.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'WebhookTestResponse[statusCode=$statusCode, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (statusCode != null) {
      json[r'statusCode'] = statusCode;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [WebhookTestResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookTestResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookTestResponse(
        statusCode: json[r'statusCode'],
        message: json[r'message'],
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

