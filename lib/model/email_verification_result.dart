//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailVerificationResult {
  /// Returns a new [EmailVerificationResult] instance.
  EmailVerificationResult({
    @required this.domainName,
    @required this.port,
    @required this.emailAddress,
    @required this.isValid,
    this.error,
  });

  String domainName;

  int port;

  String emailAddress;

  bool isValid;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailVerificationResult &&
     other.domainName == domainName &&
     other.port == port &&
     other.emailAddress == emailAddress &&
     other.isValid == isValid &&
     other.error == error;

  @override
  int get hashCode =>
    (domainName == null ? 0 : domainName.hashCode) +
    (port == null ? 0 : port.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (isValid == null ? 0 : isValid.hashCode) +
    (error == null ? 0 : error.hashCode);

  @override
  String toString() => 'EmailVerificationResult[domainName=$domainName, port=$port, emailAddress=$emailAddress, isValid=$isValid, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainName'] = domainName;
      json[r'port'] = port;
      json[r'emailAddress'] = emailAddress;
      json[r'isValid'] = isValid;
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [EmailVerificationResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailVerificationResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailVerificationResult(
        domainName: json[r'domainName'],
        port: json[r'port'],
        emailAddress: json[r'emailAddress'],
        isValid: json[r'isValid'],
        error: json[r'error'],
    );

  static List<EmailVerificationResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailVerificationResult>[]
      : json.map((v) => EmailVerificationResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailVerificationResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailVerificationResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailVerificationResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailVerificationResult-objects as value to a dart map
  static Map<String, List<EmailVerificationResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailVerificationResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailVerificationResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

