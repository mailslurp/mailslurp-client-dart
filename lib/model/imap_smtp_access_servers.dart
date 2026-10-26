//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapSmtpAccessServers {
  /// Returns a new [ImapSmtpAccessServers] instance.
  ImapSmtpAccessServers({
    required this.imapServer,
    required this.secureImapServer,
    required this.smtpServer,
    required this.secureSmtpServer,
  });

  ServerEndpoints imapServer;

  ServerEndpoints secureImapServer;

  ServerEndpoints smtpServer;

  ServerEndpoints secureSmtpServer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapSmtpAccessServers &&
     other.imapServer == imapServer &&
     other.secureImapServer == secureImapServer &&
     other.smtpServer == smtpServer &&
     other.secureSmtpServer == secureSmtpServer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (imapServer.hashCode) +
    (secureImapServer.hashCode) +
    (smtpServer.hashCode) +
    (secureSmtpServer.hashCode);

  @override
  String toString() => 'ImapSmtpAccessServers[imapServer=$imapServer, secureImapServer=$secureImapServer, smtpServer=$smtpServer, secureSmtpServer=$secureSmtpServer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'imapServer'] = this.imapServer;
      json[r'secureImapServer'] = this.secureImapServer;
      json[r'smtpServer'] = this.smtpServer;
      json[r'secureSmtpServer'] = this.secureSmtpServer;
    return json;
  }

  /// Returns a new [ImapSmtpAccessServers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapSmtpAccessServers? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapSmtpAccessServers[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapSmtpAccessServers[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapSmtpAccessServers(
        imapServer: ServerEndpoints.fromJson(json[r'imapServer'])!,
        secureImapServer: ServerEndpoints.fromJson(json[r'secureImapServer'])!,
        smtpServer: ServerEndpoints.fromJson(json[r'smtpServer'])!,
        secureSmtpServer: ServerEndpoints.fromJson(json[r'secureSmtpServer'])!,
      );
    }
    return null;
  }

  static List<ImapSmtpAccessServers> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapSmtpAccessServers>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapSmtpAccessServers.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapSmtpAccessServers> mapFromJson(dynamic json) {
    final map = <String, ImapSmtpAccessServers>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapSmtpAccessServers.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapSmtpAccessServers-objects as value to a dart map
  static Map<String, List<ImapSmtpAccessServers>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapSmtpAccessServers>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapSmtpAccessServers.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'imapServer',
    'secureImapServer',
    'smtpServer',
    'secureSmtpServer',
  };
}

