//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookRedriveResult {
  /// Returns a new [WebhookRedriveResult] instance.
  WebhookRedriveResult({
    this.message,
    @required this.success,
    @required this.webhookResultId,
  });

  String message;

  bool success;

  String webhookResultId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookRedriveResult &&
     other.message == message &&
     other.success == success &&
     other.webhookResultId == webhookResultId;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (success == null ? 0 : success.hashCode) +
    (webhookResultId == null ? 0 : webhookResultId.hashCode);

  @override
  String toString() => 'WebhookRedriveResult[message=$message, success=$success, webhookResultId=$webhookResultId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
      json[r'success'] = success;
      json[r'webhookResultId'] = webhookResultId;
    return json;
  }

  /// Returns a new [WebhookRedriveResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookRedriveResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookRedriveResult(
        message: json[r'message'],
        success: json[r'success'],
        webhookResultId: json[r'webhookResultId'],
    );

  static List<WebhookRedriveResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookRedriveResult>[]
      : json.map((v) => WebhookRedriveResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookRedriveResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookRedriveResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookRedriveResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookRedriveResult-objects as value to a dart map
  static Map<String, List<WebhookRedriveResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookRedriveResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookRedriveResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

