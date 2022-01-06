//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyEmailAddressOptions {
  /// Returns a new [VerifyEmailAddressOptions] instance.
  VerifyEmailAddressOptions({
    this.mailServerDomain,
    this.emailAddress,
    this.senderEmailAddress,
    this.port,
  });

  String mailServerDomain;

  String emailAddress;

  String senderEmailAddress;

  int port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyEmailAddressOptions &&
     other.mailServerDomain == mailServerDomain &&
     other.emailAddress == emailAddress &&
     other.senderEmailAddress == senderEmailAddress &&
     other.port == port;

  @override
  int get hashCode =>
    (mailServerDomain == null ? 0 : mailServerDomain.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (senderEmailAddress == null ? 0 : senderEmailAddress.hashCode) +
    (port == null ? 0 : port.hashCode);

  @override
  String toString() => 'VerifyEmailAddressOptions[mailServerDomain=$mailServerDomain, emailAddress=$emailAddress, senderEmailAddress=$senderEmailAddress, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mailServerDomain != null) {
      json[r'mailServerDomain'] = mailServerDomain;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (senderEmailAddress != null) {
      json[r'senderEmailAddress'] = senderEmailAddress;
    }
    if (port != null) {
      json[r'port'] = port;
    }
    return json;
  }

  /// Returns a new [VerifyEmailAddressOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VerifyEmailAddressOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VerifyEmailAddressOptions(
        mailServerDomain: json[r'mailServerDomain'],
        emailAddress: json[r'emailAddress'],
        senderEmailAddress: json[r'senderEmailAddress'],
        port: json[r'port'],
    );

  static List<VerifyEmailAddressOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VerifyEmailAddressOptions>[]
      : json.map((v) => VerifyEmailAddressOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, VerifyEmailAddressOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VerifyEmailAddressOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = VerifyEmailAddressOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of VerifyEmailAddressOptions-objects as value to a dart map
  static Map<String, List<VerifyEmailAddressOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VerifyEmailAddressOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = VerifyEmailAddressOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

