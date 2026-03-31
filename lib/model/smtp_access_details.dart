//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmtpAccessDetails {
  /// Returns a new [SmtpAccessDetails] instance.
  SmtpAccessDetails({
    required this.secureSmtpServerHost,
    required this.secureSmtpServerPort,
    required this.secureSmtpUsername,
    required this.secureSmtpPassword,
    required this.smtpServerHost,
    required this.smtpServerPort,
    required this.smtpUsername,
    required this.smtpPassword,
    this.mailFromDomain,
  });

  /// Secure TLS SMTP server host domain
  String secureSmtpServerHost;

  /// Secure TLS SMTP server host port
  int secureSmtpServerPort;

  /// Secure TLS SMTP username for login
  String secureSmtpUsername;

  /// Secure TLS SMTP password for login
  String secureSmtpPassword;

  /// SMTP server host domain
  String smtpServerHost;

  /// SMTP server host port
  int smtpServerPort;

  /// SMTP username for login
  String smtpUsername;

  /// SMTP password for login
  String smtpPassword;

  /// Mail from domain or SMTP HELO value
  String? mailFromDomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmtpAccessDetails &&
     other.secureSmtpServerHost == secureSmtpServerHost &&
     other.secureSmtpServerPort == secureSmtpServerPort &&
     other.secureSmtpUsername == secureSmtpUsername &&
     other.secureSmtpPassword == secureSmtpPassword &&
     other.smtpServerHost == smtpServerHost &&
     other.smtpServerPort == smtpServerPort &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.mailFromDomain == mailFromDomain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secureSmtpServerHost.hashCode) +
    (secureSmtpServerPort.hashCode) +
    (secureSmtpUsername.hashCode) +
    (secureSmtpPassword.hashCode) +
    (smtpServerHost.hashCode) +
    (smtpServerPort.hashCode) +
    (smtpUsername.hashCode) +
    (smtpPassword.hashCode) +
    (mailFromDomain == null ? 0 : mailFromDomain!.hashCode);

  @override
  String toString() => 'SmtpAccessDetails[secureSmtpServerHost=$secureSmtpServerHost, secureSmtpServerPort=$secureSmtpServerPort, secureSmtpUsername=$secureSmtpUsername, secureSmtpPassword=$secureSmtpPassword, smtpServerHost=$smtpServerHost, smtpServerPort=$smtpServerPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, mailFromDomain=$mailFromDomain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secureSmtpServerHost'] = this.secureSmtpServerHost;
      json[r'secureSmtpServerPort'] = this.secureSmtpServerPort;
      json[r'secureSmtpUsername'] = this.secureSmtpUsername;
      json[r'secureSmtpPassword'] = this.secureSmtpPassword;
      json[r'smtpServerHost'] = this.smtpServerHost;
      json[r'smtpServerPort'] = this.smtpServerPort;
      json[r'smtpUsername'] = this.smtpUsername;
      json[r'smtpPassword'] = this.smtpPassword;
    if (this.mailFromDomain != null) {
      json[r'mailFromDomain'] = this.mailFromDomain;
    } else {
      json[r'mailFromDomain'] = null;
    }
    return json;
  }

  /// Returns a new [SmtpAccessDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmtpAccessDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmtpAccessDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmtpAccessDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmtpAccessDetails(
        secureSmtpServerHost: mapValueOfType<String>(json, r'secureSmtpServerHost')!,
        secureSmtpServerPort: mapValueOfType<int>(json, r'secureSmtpServerPort')!,
        secureSmtpUsername: mapValueOfType<String>(json, r'secureSmtpUsername')!,
        secureSmtpPassword: mapValueOfType<String>(json, r'secureSmtpPassword')!,
        smtpServerHost: mapValueOfType<String>(json, r'smtpServerHost')!,
        smtpServerPort: mapValueOfType<int>(json, r'smtpServerPort')!,
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername')!,
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword')!,
        mailFromDomain: mapValueOfType<String>(json, r'mailFromDomain'),
      );
    }
    return null;
  }

  static List<SmtpAccessDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmtpAccessDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmtpAccessDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmtpAccessDetails> mapFromJson(dynamic json) {
    final map = <String, SmtpAccessDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmtpAccessDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmtpAccessDetails-objects as value to a dart map
  static Map<String, List<SmtpAccessDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmtpAccessDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmtpAccessDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'secureSmtpServerHost',
    'secureSmtpServerPort',
    'secureSmtpUsername',
    'secureSmtpPassword',
    'smtpServerHost',
    'smtpServerPort',
    'smtpUsername',
    'smtpPassword',
  };
}

