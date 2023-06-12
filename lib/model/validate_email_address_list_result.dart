//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateEmailAddressListResult {
  /// Returns a new [ValidateEmailAddressListResult] instance.
  ValidateEmailAddressListResult({
    this.validEmailAddresses = const [],
    this.invalidEmailAddresses = const [],
    this.resultMapEmailAddressIsValid = const {},
  });

  List<String> validEmailAddresses;

  List<String> invalidEmailAddresses;

  Map<String, bool> resultMapEmailAddressIsValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateEmailAddressListResult &&
     other.validEmailAddresses == validEmailAddresses &&
     other.invalidEmailAddresses == invalidEmailAddresses &&
     other.resultMapEmailAddressIsValid == resultMapEmailAddressIsValid;

  @override
  int get hashCode =>
    (validEmailAddresses == null ? 0 : validEmailAddresses.hashCode) +
    (invalidEmailAddresses == null ? 0 : invalidEmailAddresses.hashCode) +
    (resultMapEmailAddressIsValid == null ? 0 : resultMapEmailAddressIsValid.hashCode);

  @override
  String toString() => 'ValidateEmailAddressListResult[validEmailAddresses=$validEmailAddresses, invalidEmailAddresses=$invalidEmailAddresses, resultMapEmailAddressIsValid=$resultMapEmailAddressIsValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'validEmailAddresses'] = validEmailAddresses;
      json[r'invalidEmailAddresses'] = invalidEmailAddresses;
      json[r'resultMapEmailAddressIsValid'] = resultMapEmailAddressIsValid;
    return json;
  }

  /// Returns a new [ValidateEmailAddressListResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ValidateEmailAddressListResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ValidateEmailAddressListResult(
        validEmailAddresses: json[r'validEmailAddresses'] == null
          ? null
          : (json[r'validEmailAddresses'] as List).cast<String>(),
        invalidEmailAddresses: json[r'invalidEmailAddresses'] == null
          ? null
          : (json[r'invalidEmailAddresses'] as List).cast<String>(),
        resultMapEmailAddressIsValid: json[r'resultMapEmailAddressIsValid'] == null ?
          null :
          (json[r'resultMapEmailAddressIsValid'] as Map).cast<String, bool>(),
    );

  static List<ValidateEmailAddressListResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ValidateEmailAddressListResult>[]
      : json.map((v) => ValidateEmailAddressListResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ValidateEmailAddressListResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ValidateEmailAddressListResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ValidateEmailAddressListResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ValidateEmailAddressListResult-objects as value to a dart map
  static Map<String, List<ValidateEmailAddressListResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidateEmailAddressListResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ValidateEmailAddressListResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

