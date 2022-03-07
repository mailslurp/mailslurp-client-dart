//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapSmtpAccessDetails {
  /// Returns a new [ImapSmtpAccessDetails] instance.
  ImapSmtpAccessDetails({
    @required this.smtpServerHost,
    @required this.smtpServerPort,
    @required this.smtpUsername,
    @required this.smtpPassword,
    @required this.imapServerHost,
    @required this.imapServerPort,
    @required this.imapUsername,
    @required this.imapPassword,
  });

  String smtpServerHost;

  int smtpServerPort;

  String smtpUsername;

  String smtpPassword;

  String imapServerHost;

  int imapServerPort;

  String imapUsername;

  String imapPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapSmtpAccessDetails &&
     other.smtpServerHost == smtpServerHost &&
     other.smtpServerPort == smtpServerPort &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.imapServerHost == imapServerHost &&
     other.imapServerPort == imapServerPort &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword;

  @override
  int get hashCode =>
    (smtpServerHost == null ? 0 : smtpServerHost.hashCode) +
    (smtpServerPort == null ? 0 : smtpServerPort.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword.hashCode) +
    (imapServerHost == null ? 0 : imapServerHost.hashCode) +
    (imapServerPort == null ? 0 : imapServerPort.hashCode) +
    (imapUsername == null ? 0 : imapUsername.hashCode) +
    (imapPassword == null ? 0 : imapPassword.hashCode);

  @override
  String toString() => 'ImapSmtpAccessDetails[smtpServerHost=$smtpServerHost, smtpServerPort=$smtpServerPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, imapServerHost=$imapServerHost, imapServerPort=$imapServerPort, imapUsername=$imapUsername, imapPassword=$imapPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'smtpServerHost'] = smtpServerHost;
      json[r'smtpServerPort'] = smtpServerPort;
      json[r'smtpUsername'] = smtpUsername;
      json[r'smtpPassword'] = smtpPassword;
      json[r'imapServerHost'] = imapServerHost;
      json[r'imapServerPort'] = imapServerPort;
      json[r'imapUsername'] = imapUsername;
      json[r'imapPassword'] = imapPassword;
    return json;
  }

  /// Returns a new [ImapSmtpAccessDetails] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ImapSmtpAccessDetails fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ImapSmtpAccessDetails(
        smtpServerHost: json[r'smtpServerHost'],
        smtpServerPort: json[r'smtpServerPort'],
        smtpUsername: json[r'smtpUsername'],
        smtpPassword: json[r'smtpPassword'],
        imapServerHost: json[r'imapServerHost'],
        imapServerPort: json[r'imapServerPort'],
        imapUsername: json[r'imapUsername'],
        imapPassword: json[r'imapPassword'],
    );

  static List<ImapSmtpAccessDetails> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ImapSmtpAccessDetails>[]
      : json.map((v) => ImapSmtpAccessDetails.fromJson(v)).toList(growable: true == growable);

  static Map<String, ImapSmtpAccessDetails> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ImapSmtpAccessDetails>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ImapSmtpAccessDetails.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ImapSmtpAccessDetails-objects as value to a dart map
  static Map<String, List<ImapSmtpAccessDetails>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ImapSmtpAccessDetails>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ImapSmtpAccessDetails.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

