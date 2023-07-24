//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailVerificationResult {
  /// Returns a new [EmailVerificationResult] instance.
  EmailVerificationResult({
    required this.domainName,
    required this.port,
    required this.emailAddress,
    required this.isValid,
    this.error,
  });

  String domainName;

  int port;

  String emailAddress;

  bool isValid;

  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailVerificationResult &&
     other.domainName == domainName &&
     other.port == port &&
     other.emailAddress == emailAddress &&
     other.isValid == isValid &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainName.hashCode) +
    (port.hashCode) +
    (emailAddress.hashCode) +
    (isValid.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'EmailVerificationResult[domainName=$domainName, port=$port, emailAddress=$emailAddress, isValid=$isValid, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainName'] = this.domainName;
      json[r'port'] = this.port;
      json[r'emailAddress'] = this.emailAddress;
      json[r'isValid'] = this.isValid;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [EmailVerificationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailVerificationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailVerificationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailVerificationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailVerificationResult(
        domainName: mapValueOfType<String>(json, r'domainName')!,
        port: mapValueOfType<int>(json, r'port')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<EmailVerificationResult>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailVerificationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailVerificationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailVerificationResult> mapFromJson(dynamic json) {
    final map = <String, EmailVerificationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailVerificationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailVerificationResult-objects as value to a dart map
  static Map<String, List<EmailVerificationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailVerificationResult>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailVerificationResult.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domainName',
    'port',
    'emailAddress',
    'isValid',
  };
}

