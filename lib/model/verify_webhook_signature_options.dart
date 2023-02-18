//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyWebhookSignatureOptions {
  /// Returns a new [VerifyWebhookSignatureOptions] instance.
  VerifyWebhookSignatureOptions({
    @required this.messageId,
    @required this.signature,
  });

  String messageId;

  String signature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyWebhookSignatureOptions &&
     other.messageId == messageId &&
     other.signature == signature;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (signature == null ? 0 : signature.hashCode);

  @override
  String toString() => 'VerifyWebhookSignatureOptions[messageId=$messageId, signature=$signature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'signature'] = signature;
    return json;
  }

  /// Returns a new [VerifyWebhookSignatureOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VerifyWebhookSignatureOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VerifyWebhookSignatureOptions(
        messageId: json[r'messageId'],
        signature: json[r'signature'],
    );

  static List<VerifyWebhookSignatureOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VerifyWebhookSignatureOptions>[]
      : json.map((v) => VerifyWebhookSignatureOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, VerifyWebhookSignatureOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VerifyWebhookSignatureOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = VerifyWebhookSignatureOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of VerifyWebhookSignatureOptions-objects as value to a dart map
  static Map<String, List<VerifyWebhookSignatureOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VerifyWebhookSignatureOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = VerifyWebhookSignatureOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

