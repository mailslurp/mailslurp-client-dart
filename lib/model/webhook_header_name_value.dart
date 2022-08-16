//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookHeaderNameValue {
  /// Returns a new [WebhookHeaderNameValue] instance.
  WebhookHeaderNameValue({
    @required this.name,
    @required this.value,
  });

  /// Name of header
  String name;

  /// Value of header
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookHeaderNameValue &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'WebhookHeaderNameValue[name=$name, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'value'] = value;
    return json;
  }

  /// Returns a new [WebhookHeaderNameValue] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookHeaderNameValue fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookHeaderNameValue(
        name: json[r'name'],
        value: json[r'value'],
    );

  static List<WebhookHeaderNameValue> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookHeaderNameValue>[]
      : json.map((v) => WebhookHeaderNameValue.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookHeaderNameValue> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookHeaderNameValue>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookHeaderNameValue.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookHeaderNameValue-objects as value to a dart map
  static Map<String, List<WebhookHeaderNameValue>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookHeaderNameValue>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookHeaderNameValue.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

