//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateEmailAddressListOptions {
  /// Returns a new [ValidateEmailAddressListOptions] instance.
  ValidateEmailAddressListOptions({
    this.emailAddressList = const [],
  });

  List<String> emailAddressList;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateEmailAddressListOptions &&
     other.emailAddressList == emailAddressList;

  @override
  int get hashCode =>
    (emailAddressList == null ? 0 : emailAddressList.hashCode);

  @override
  String toString() => 'ValidateEmailAddressListOptions[emailAddressList=$emailAddressList]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddressList'] = emailAddressList;
    return json;
  }

  /// Returns a new [ValidateEmailAddressListOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ValidateEmailAddressListOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ValidateEmailAddressListOptions(
        emailAddressList: json[r'emailAddressList'] == null
          ? null
          : (json[r'emailAddressList'] as List).cast<String>(),
    );

  static List<ValidateEmailAddressListOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ValidateEmailAddressListOptions>[]
      : json.map((v) => ValidateEmailAddressListOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ValidateEmailAddressListOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ValidateEmailAddressListOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ValidateEmailAddressListOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ValidateEmailAddressListOptions-objects as value to a dart map
  static Map<String, List<ValidateEmailAddressListOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidateEmailAddressListOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ValidateEmailAddressListOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

