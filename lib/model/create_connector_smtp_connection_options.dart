//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorSmtpConnectionOptions {
  /// Returns a new [CreateConnectorSmtpConnectionOptions] instance.
  CreateConnectorSmtpConnectionOptions({
    this.enabled,
    required this.smtpHost,
    this.smtpPort,
    this.smtpSsl,
    this.smtpUsername,
    this.smtpPassword,
    this.smtpMechanisms = const [],
    this.startTls,
    this.localHostName,
    this.proxyHost,
    this.proxyPort,
    this.proxyEnabled,
    this.sslTrust,
    this.sslProtocols = const [],
  });

  bool? enabled;

  String smtpHost;

  int? smtpPort;

  bool? smtpSsl;

  String? smtpUsername;

  String? smtpPassword;

  List<String>? smtpMechanisms;

  bool? startTls;

  String? localHostName;

  String? proxyHost;

  int? proxyPort;

  bool? proxyEnabled;

  String? sslTrust;

  List<String>? sslProtocols;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorSmtpConnectionOptions &&
     other.enabled == enabled &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpSsl == smtpSsl &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.smtpMechanisms == smtpMechanisms &&
     other.startTls == startTls &&
     other.localHostName == localHostName &&
     other.proxyHost == proxyHost &&
     other.proxyPort == proxyPort &&
     other.proxyEnabled == proxyEnabled &&
     other.sslTrust == sslTrust &&
     other.sslProtocols == sslProtocols;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (smtpHost.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpSsl == null ? 0 : smtpSsl!.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode) +
    (smtpMechanisms == null ? 0 : smtpMechanisms!.hashCode) +
    (startTls == null ? 0 : startTls!.hashCode) +
    (localHostName == null ? 0 : localHostName!.hashCode) +
    (proxyHost == null ? 0 : proxyHost!.hashCode) +
    (proxyPort == null ? 0 : proxyPort!.hashCode) +
    (proxyEnabled == null ? 0 : proxyEnabled!.hashCode) +
    (sslTrust == null ? 0 : sslTrust!.hashCode) +
    (sslProtocols == null ? 0 : sslProtocols!.hashCode);

  @override
  String toString() => 'CreateConnectorSmtpConnectionOptions[enabled=$enabled, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpSsl=$smtpSsl, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, smtpMechanisms=$smtpMechanisms, startTls=$startTls, localHostName=$localHostName, proxyHost=$proxyHost, proxyPort=$proxyPort, proxyEnabled=$proxyEnabled, sslTrust=$sslTrust, sslProtocols=$sslProtocols]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'smtpHost'] = this.smtpHost;
    if (this.smtpPort != null) {
      json[r'smtpPort'] = this.smtpPort;
    } else {
      json[r'smtpPort'] = null;
    }
    if (this.smtpSsl != null) {
      json[r'smtpSsl'] = this.smtpSsl;
    } else {
      json[r'smtpSsl'] = null;
    }
    if (this.smtpUsername != null) {
      json[r'smtpUsername'] = this.smtpUsername;
    } else {
      json[r'smtpUsername'] = null;
    }
    if (this.smtpPassword != null) {
      json[r'smtpPassword'] = this.smtpPassword;
    } else {
      json[r'smtpPassword'] = null;
    }
    if (this.smtpMechanisms != null) {
      json[r'smtpMechanisms'] = this.smtpMechanisms;
    } else {
      json[r'smtpMechanisms'] = null;
    }
    if (this.startTls != null) {
      json[r'startTls'] = this.startTls;
    } else {
      json[r'startTls'] = null;
    }
    if (this.localHostName != null) {
      json[r'localHostName'] = this.localHostName;
    } else {
      json[r'localHostName'] = null;
    }
    if (this.proxyHost != null) {
      json[r'proxyHost'] = this.proxyHost;
    } else {
      json[r'proxyHost'] = null;
    }
    if (this.proxyPort != null) {
      json[r'proxyPort'] = this.proxyPort;
    } else {
      json[r'proxyPort'] = null;
    }
    if (this.proxyEnabled != null) {
      json[r'proxyEnabled'] = this.proxyEnabled;
    } else {
      json[r'proxyEnabled'] = null;
    }
    if (this.sslTrust != null) {
      json[r'sslTrust'] = this.sslTrust;
    } else {
      json[r'sslTrust'] = null;
    }
    if (this.sslProtocols != null) {
      json[r'sslProtocols'] = this.sslProtocols;
    } else {
      json[r'sslProtocols'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorSmtpConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorSmtpConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorSmtpConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorSmtpConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorSmtpConnectionOptions(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        smtpHost: mapValueOfType<String>(json, r'smtpHost')!,
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpSsl: mapValueOfType<bool>(json, r'smtpSsl'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
        smtpMechanisms: json[r'smtpMechanisms'] is List
            ? (json[r'smtpMechanisms'] as List).cast<String>()
            : const [],
        startTls: mapValueOfType<bool>(json, r'startTls'),
        localHostName: mapValueOfType<String>(json, r'localHostName'),
        proxyHost: mapValueOfType<String>(json, r'proxyHost'),
        proxyPort: mapValueOfType<int>(json, r'proxyPort'),
        proxyEnabled: mapValueOfType<bool>(json, r'proxyEnabled'),
        sslTrust: mapValueOfType<String>(json, r'sslTrust'),
        sslProtocols: json[r'sslProtocols'] is List
            ? (json[r'sslProtocols'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateConnectorSmtpConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorSmtpConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorSmtpConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorSmtpConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorSmtpConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorSmtpConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorSmtpConnectionOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorSmtpConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorSmtpConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorSmtpConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'smtpHost',
  };
}

