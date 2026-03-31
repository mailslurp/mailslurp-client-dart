//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestSmtpServerOptions {
  /// Returns a new [TestSmtpServerOptions] instance.
  TestSmtpServerOptions({
    required this.host,
    required this.port,
    required this.useStartTls,
    this.username,
    this.password,
    this.from,
    this.to,
    this.captchaToken,
  });

  /// SMTP host name or IP address
  String host;

  /// Minimum value: 1
  /// Maximum value: 65535
  int port;

  bool useStartTls;

  String? username;

  String? password;

  String? from;

  String? to;

  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestSmtpServerOptions &&
     other.host == host &&
     other.port == port &&
     other.useStartTls == useStartTls &&
     other.username == username &&
     other.password == password &&
     other.from == from &&
     other.to == to &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (port.hashCode) +
    (useStartTls.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'TestSmtpServerOptions[host=$host, port=$port, useStartTls=$useStartTls, username=$username, password=$password, from=$from, to=$to, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'port'] = this.port;
      json[r'useStartTls'] = this.useStartTls;
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [TestSmtpServerOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestSmtpServerOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestSmtpServerOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestSmtpServerOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestSmtpServerOptions(
        host: mapValueOfType<String>(json, r'host')!,
        port: mapValueOfType<int>(json, r'port')!,
        useStartTls: mapValueOfType<bool>(json, r'useStartTls')!,
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
        from: mapValueOfType<String>(json, r'from'),
        to: mapValueOfType<String>(json, r'to'),
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<TestSmtpServerOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestSmtpServerOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestSmtpServerOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestSmtpServerOptions> mapFromJson(dynamic json) {
    final map = <String, TestSmtpServerOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestSmtpServerOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestSmtpServerOptions-objects as value to a dart map
  static Map<String, List<TestSmtpServerOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestSmtpServerOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestSmtpServerOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'port',
    'useStartTls',
  };
}

