//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapAccessDetails {
  /// Returns a new [ImapAccessDetails] instance.
  ImapAccessDetails({
    required this.secureImapServerHost,
    required this.secureImapServerPort,
    required this.secureImapUsername,
    required this.secureImapPassword,
    required this.imapServerHost,
    required this.imapServerPort,
    required this.imapUsername,
    required this.imapPassword,
    required this.imapMailbox,
  });

  /// Secure TLS IMAP server host domain
  String secureImapServerHost;

  /// Secure TLS IMAP server host port
  int secureImapServerPort;

  /// Secure TLS IMAP username for login
  String secureImapUsername;

  /// Secure TLS IMAP password for login
  String secureImapPassword;

  /// IMAP server host domain
  String imapServerHost;

  /// IMAP server host port
  int imapServerPort;

  /// IMAP username for login
  String imapUsername;

  /// IMAP password for login
  String imapPassword;

  /// IMAP mailbox to SELECT
  String imapMailbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapAccessDetails &&
     other.secureImapServerHost == secureImapServerHost &&
     other.secureImapServerPort == secureImapServerPort &&
     other.secureImapUsername == secureImapUsername &&
     other.secureImapPassword == secureImapPassword &&
     other.imapServerHost == imapServerHost &&
     other.imapServerPort == imapServerPort &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.imapMailbox == imapMailbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secureImapServerHost.hashCode) +
    (secureImapServerPort.hashCode) +
    (secureImapUsername.hashCode) +
    (secureImapPassword.hashCode) +
    (imapServerHost.hashCode) +
    (imapServerPort.hashCode) +
    (imapUsername.hashCode) +
    (imapPassword.hashCode) +
    (imapMailbox.hashCode);

  @override
  String toString() => 'ImapAccessDetails[secureImapServerHost=$secureImapServerHost, secureImapServerPort=$secureImapServerPort, secureImapUsername=$secureImapUsername, secureImapPassword=$secureImapPassword, imapServerHost=$imapServerHost, imapServerPort=$imapServerPort, imapUsername=$imapUsername, imapPassword=$imapPassword, imapMailbox=$imapMailbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secureImapServerHost'] = this.secureImapServerHost;
      json[r'secureImapServerPort'] = this.secureImapServerPort;
      json[r'secureImapUsername'] = this.secureImapUsername;
      json[r'secureImapPassword'] = this.secureImapPassword;
      json[r'imapServerHost'] = this.imapServerHost;
      json[r'imapServerPort'] = this.imapServerPort;
      json[r'imapUsername'] = this.imapUsername;
      json[r'imapPassword'] = this.imapPassword;
      json[r'imapMailbox'] = this.imapMailbox;
    return json;
  }

  /// Returns a new [ImapAccessDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapAccessDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapAccessDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapAccessDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapAccessDetails(
        secureImapServerHost: mapValueOfType<String>(json, r'secureImapServerHost')!,
        secureImapServerPort: mapValueOfType<int>(json, r'secureImapServerPort')!,
        secureImapUsername: mapValueOfType<String>(json, r'secureImapUsername')!,
        secureImapPassword: mapValueOfType<String>(json, r'secureImapPassword')!,
        imapServerHost: mapValueOfType<String>(json, r'imapServerHost')!,
        imapServerPort: mapValueOfType<int>(json, r'imapServerPort')!,
        imapUsername: mapValueOfType<String>(json, r'imapUsername')!,
        imapPassword: mapValueOfType<String>(json, r'imapPassword')!,
        imapMailbox: mapValueOfType<String>(json, r'imapMailbox')!,
      );
    }
    return null;
  }

  static List<ImapAccessDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapAccessDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapAccessDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapAccessDetails> mapFromJson(dynamic json) {
    final map = <String, ImapAccessDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapAccessDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapAccessDetails-objects as value to a dart map
  static Map<String, List<ImapAccessDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapAccessDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapAccessDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'secureImapServerHost',
    'secureImapServerPort',
    'secureImapUsername',
    'secureImapPassword',
    'imapServerHost',
    'imapServerPort',
    'imapUsername',
    'imapPassword',
    'imapMailbox',
  };
}

