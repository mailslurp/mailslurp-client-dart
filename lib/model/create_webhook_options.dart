//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateWebhookOptions {
  /// Returns a new [CreateWebhookOptions] instance.
  CreateWebhookOptions({
    this.basicAuth,
    this.name,
    this.url,
  });

  BasicAuthOptions basicAuth;

  /// Optional name for the webhook
  String name;

  /// Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWebhookOptions &&
     other.basicAuth == basicAuth &&
     other.name == name &&
     other.url == url;

  @override
  int get hashCode =>
    (basicAuth == null ? 0 : basicAuth.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'CreateWebhookOptions[basicAuth=$basicAuth, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (basicAuth != null) {
      json[r'basicAuth'] = basicAuth;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [CreateWebhookOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateWebhookOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateWebhookOptions(
        basicAuth: BasicAuthOptions.fromJson(json[r'basicAuth']),
        name: json[r'name'],
        url: json[r'url'],
    );

  static List<CreateWebhookOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateWebhookOptions>[]
      : json.map((v) => CreateWebhookOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateWebhookOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateWebhookOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateWebhookOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookOptions-objects as value to a dart map
  static Map<String, List<CreateWebhookOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateWebhookOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateWebhookOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

