//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookTestResult {
  /// Returns a new [WebhookTestResult] instance.
  WebhookTestResult({
    this.message,
    @required this.request,
    @required this.response,
  });

  String message;

  WebhookTestRequest request;

  WebhookTestResponse response;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestResult &&
     other.message == message &&
     other.request == request &&
     other.response == response;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (request == null ? 0 : request.hashCode) +
    (response == null ? 0 : response.hashCode);

  @override
  String toString() => 'WebhookTestResult[message=$message, request=$request, response=$response]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
      json[r'request'] = request;
      json[r'response'] = response;
    return json;
  }

  /// Returns a new [WebhookTestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookTestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookTestResult(
        message: json[r'message'],
        request: WebhookTestRequest.fromJson(json[r'request']),
        response: WebhookTestResponse.fromJson(json[r'response']),
    );

  static List<WebhookTestResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookTestResult>[]
      : json.map((v) => WebhookTestResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookTestResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookTestResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookTestResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestResult-objects as value to a dart map
  static Map<String, List<WebhookTestResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookTestResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookTestResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

