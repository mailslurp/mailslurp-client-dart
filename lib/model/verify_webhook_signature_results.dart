//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyWebhookSignatureResults {
  /// Returns a new [VerifyWebhookSignatureResults] instance.
  VerifyWebhookSignatureResults({
    @required this.isValid,
  });

  bool isValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyWebhookSignatureResults &&
     other.isValid == isValid;

  @override
  int get hashCode =>
    (isValid == null ? 0 : isValid.hashCode);

  @override
  String toString() => 'VerifyWebhookSignatureResults[isValid=$isValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isValid'] = isValid;
    return json;
  }

  /// Returns a new [VerifyWebhookSignatureResults] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VerifyWebhookSignatureResults fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VerifyWebhookSignatureResults(
        isValid: json[r'isValid'],
    );

  static List<VerifyWebhookSignatureResults> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VerifyWebhookSignatureResults>[]
      : json.map((v) => VerifyWebhookSignatureResults.fromJson(v)).toList(growable: true == growable);

  static Map<String, VerifyWebhookSignatureResults> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VerifyWebhookSignatureResults>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = VerifyWebhookSignatureResults.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of VerifyWebhookSignatureResults-objects as value to a dart map
  static Map<String, List<VerifyWebhookSignatureResults>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VerifyWebhookSignatureResults>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = VerifyWebhookSignatureResults.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

