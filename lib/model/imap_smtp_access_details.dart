//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapSmtpAccessDetails {
  /// Returns a new [ImapSmtpAccessDetails] instance.
  ImapSmtpAccessDetails({
    required this.secureSmtpServerHost,
    required this.secureSmtpServerPort,
    required this.secureSmtpUsername,
    required this.secureSmtpPassword,
    required this.smtpServerHost,
    required this.smtpServerPort,
    required this.smtpUsername,
    required this.smtpPassword,
    required this.imapServerHost,
    required this.imapServerPort,
    required this.imapUsername,
    required this.imapPassword,
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

  /// IMAP server host domain
  String imapServerHost;

  /// IMAP server host port
  int imapServerPort;

  /// IMAP username for login
  String imapUsername;

  /// IMAP password for login
  String imapPassword;

  /// Mail from domain or SMTP HELO value
  String? mailFromDomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapSmtpAccessDetails &&
     other.secureSmtpServerHost == secureSmtpServerHost &&
     other.secureSmtpServerPort == secureSmtpServerPort &&
     other.secureSmtpUsername == secureSmtpUsername &&
     other.secureSmtpPassword == secureSmtpPassword &&
     other.smtpServerHost == smtpServerHost &&
     other.smtpServerPort == smtpServerPort &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.imapServerHost == imapServerHost &&
     other.imapServerPort == imapServerPort &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
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
    (imapServerHost.hashCode) +
    (imapServerPort.hashCode) +
    (imapUsername.hashCode) +
    (imapPassword.hashCode) +
    (mailFromDomain == null ? 0 : mailFromDomain!.hashCode);

  @override
  String toString() => 'ImapSmtpAccessDetails[secureSmtpServerHost=$secureSmtpServerHost, secureSmtpServerPort=$secureSmtpServerPort, secureSmtpUsername=$secureSmtpUsername, secureSmtpPassword=$secureSmtpPassword, smtpServerHost=$smtpServerHost, smtpServerPort=$smtpServerPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, imapServerHost=$imapServerHost, imapServerPort=$imapServerPort, imapUsername=$imapUsername, imapPassword=$imapPassword, mailFromDomain=$mailFromDomain]';

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
      json[r'imapServerHost'] = this.imapServerHost;
      json[r'imapServerPort'] = this.imapServerPort;
      json[r'imapUsername'] = this.imapUsername;
      json[r'imapPassword'] = this.imapPassword;
    if (this.mailFromDomain != null) {
      json[r'mailFromDomain'] = this.mailFromDomain;
    } else {
      json[r'mailFromDomain'] = null;
    }
    return json;
  }

  /// Returns a new [ImapSmtpAccessDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapSmtpAccessDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapSmtpAccessDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapSmtpAccessDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapSmtpAccessDetails(
        secureSmtpServerHost: mapValueOfType<String>(json, r'secureSmtpServerHost')!,
        secureSmtpServerPort: mapValueOfType<int>(json, r'secureSmtpServerPort')!,
        secureSmtpUsername: mapValueOfType<String>(json, r'secureSmtpUsername')!,
        secureSmtpPassword: mapValueOfType<String>(json, r'secureSmtpPassword')!,
        smtpServerHost: mapValueOfType<String>(json, r'smtpServerHost')!,
        smtpServerPort: mapValueOfType<int>(json, r'smtpServerPort')!,
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername')!,
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword')!,
        imapServerHost: mapValueOfType<String>(json, r'imapServerHost')!,
        imapServerPort: mapValueOfType<int>(json, r'imapServerPort')!,
        imapUsername: mapValueOfType<String>(json, r'imapUsername')!,
        imapPassword: mapValueOfType<String>(json, r'imapPassword')!,
        mailFromDomain: mapValueOfType<String>(json, r'mailFromDomain'),
      );
    }
    return null;
  }

  static List<ImapSmtpAccessDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapSmtpAccessDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapSmtpAccessDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapSmtpAccessDetails> mapFromJson(dynamic json) {
    final map = <String, ImapSmtpAccessDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapSmtpAccessDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapSmtpAccessDetails-objects as value to a dart map
  static Map<String, List<ImapSmtpAccessDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapSmtpAccessDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapSmtpAccessDetails.listFromJson(entry.value, growable: growable,);
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
    'imapServerHost',
    'imapServerPort',
    'imapUsername',
    'imapPassword',
  };
}

