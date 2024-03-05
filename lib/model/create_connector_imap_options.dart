//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorImapOptions {
  /// Returns a new [CreateConnectorImapOptions] instance.
  CreateConnectorImapOptions({
    required this.host,
    required this.port,
    required this.username,
    required this.password,
    required this.useSSL,
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
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (port.hashCode) +
    (username.hashCode) +
    (password.hashCode) +
    (useSSL.hashCode);

  @override
  String toString() => 'CreateConnectorImapOptions[host=$host, port=$port, username=$username, password=$password, useSSL=$useSSL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'port'] = this.port;
      json[r'username'] = this.username;
      json[r'password'] = this.password;
      json[r'useSSL'] = this.useSSL;
    return json;
  }

  /// Returns a new [CreateConnectorImapOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorImapOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorImapOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorImapOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorImapOptions(
        host: mapValueOfType<String>(json, r'host')!,
        port: mapValueOfType<int>(json, r'port')!,
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
        useSSL: mapValueOfType<bool>(json, r'useSSL')!,
      );
    }
    return null;
  }

  static List<CreateConnectorImapOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorImapOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorImapOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorImapOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorImapOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorImapOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorImapOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorImapOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorImapOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorImapOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'port',
    'username',
    'password',
    'useSSL',
  };
}

