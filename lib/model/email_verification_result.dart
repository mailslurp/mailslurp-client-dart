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
    @required this.emailAddress,
    this.error,
    @required this.isValid,
    @required this.port,
  });

  String domainName;

  String emailAddress;

  String error;

  bool isValid;

  int port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailVerificationResult &&
     other.domainName == domainName &&
     other.emailAddress == emailAddress &&
     other.error == error &&
     other.isValid == isValid &&
     other.port == port;

  @override
  int get hashCode =>
    (domainName == null ? 0 : domainName.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (error == null ? 0 : error.hashCode) +
    (isValid == null ? 0 : isValid.hashCode) +
    (port == null ? 0 : port.hashCode);

  @override
  String toString() => 'EmailVerificationResult[domainName=$domainName, emailAddress=$emailAddress, error=$error, isValid=$isValid, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainName'] = domainName;
      json[r'emailAddress'] = emailAddress;
    if (error != null) {
      json[r'error'] = error;
    }
      json[r'isValid'] = isValid;
      json[r'port'] = port;
    return json;
  }

  /// Returns a new [EmailVerificationResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailVerificationResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailVerificationResult(
        domainName: json[r'domainName'],
        emailAddress: json[r'emailAddress'],
        error: json[r'error'],
        isValid: json[r'isValid'],
        port: json[r'port'],
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

