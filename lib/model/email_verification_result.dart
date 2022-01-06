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
    this.domainName,
    this.port,
    this.emailAddress,
    this.error,
    this.valid,
  });

  String domainName;

  int port;

  String emailAddress;

  String error;

  bool valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailVerificationResult &&
     other.domainName == domainName &&
     other.port == port &&
     other.emailAddress == emailAddress &&
     other.error == error &&
     other.valid == valid;

  @override
  int get hashCode =>
    (domainName == null ? 0 : domainName.hashCode) +
    (port == null ? 0 : port.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (error == null ? 0 : error.hashCode) +
    (valid == null ? 0 : valid.hashCode);

  @override
  String toString() => 'EmailVerificationResult[domainName=$domainName, port=$port, emailAddress=$emailAddress, error=$error, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (domainName != null) {
      json[r'domainName'] = domainName;
    }
    if (port != null) {
      json[r'port'] = port;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (error != null) {
      json[r'error'] = error;
    }
    if (valid != null) {
      json[r'valid'] = valid;
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
        error: json[r'error'],
        valid: json[r'valid'],
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

