//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorImapOptions {
  /// Returns a new [CreateConnectorImapOptions] instance.
  CreateConnectorImapOptions({
    @required this.host,
    @required this.port,
    @required this.username,
    @required this.password,
    @required this.useSSL,
  });

  String host;

  int port;

  String username;

  String password;

  bool useSSL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorImapOptions &&
     other.host == host &&
     other.port == port &&
     other.username == username &&
     other.password == password &&
     other.useSSL == useSSL;

  @override
  int get hashCode =>
    (host == null ? 0 : host.hashCode) +
    (port == null ? 0 : port.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (useSSL == null ? 0 : useSSL.hashCode);

  @override
  String toString() => 'CreateConnectorImapOptions[host=$host, port=$port, username=$username, password=$password, useSSL=$useSSL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = host;
      json[r'port'] = port;
      json[r'username'] = username;
      json[r'password'] = password;
      json[r'useSSL'] = useSSL;
    return json;
  }

  /// Returns a new [CreateConnectorImapOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateConnectorImapOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateConnectorImapOptions(
        host: json[r'host'],
        port: json[r'port'],
        username: json[r'username'],
        password: json[r'password'],
        useSSL: json[r'useSSL'],
    );

  static List<CreateConnectorImapOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateConnectorImapOptions>[]
      : json.map((v) => CreateConnectorImapOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateConnectorImapOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateConnectorImapOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateConnectorImapOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorImapOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorImapOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateConnectorImapOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateConnectorImapOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

