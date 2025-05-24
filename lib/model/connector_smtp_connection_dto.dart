//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSmtpConnectionDto {
  /// Returns a new [ConnectorSmtpConnectionDto] instance.
  ConnectorSmtpConnectionDto({
    required this.connectorId,
    required this.smtpHost,
    this.smtpPort,
    this.smtpUsername,
    this.smtpPassword,
    this.smtpSsl,
    this.startTls,
    this.smtpMechanisms = const [],
    this.localHostName,
    this.proxyHost,
    this.proxyPort,
    this.proxyEnabled,
    this.enabled,
    this.sslTrust,
    this.sslProtocols = const [],
    required this.createdAt,
    required this.id,
  });

  String connectorId;

  String smtpHost;

  int? smtpPort;

  String? smtpUsername;

  String? smtpPassword;

  bool? smtpSsl;

  bool? startTls;

  List<String>? smtpMechanisms;

  String? localHostName;

  String? proxyHost;

  int? proxyPort;

  bool? proxyEnabled;

  bool? enabled;

  String? sslTrust;

  List<String>? sslProtocols;

  DateTime createdAt;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSmtpConnectionDto &&
     other.connectorId == connectorId &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.smtpSsl == smtpSsl &&
     other.startTls == startTls &&
     other.smtpMechanisms == smtpMechanisms &&
     other.localHostName == localHostName &&
     other.proxyHost == proxyHost &&
     other.proxyPort == proxyPort &&
     other.proxyEnabled == proxyEnabled &&
     other.enabled == enabled &&
     other.sslTrust == sslTrust &&
     other.sslProtocols == sslProtocols &&
     other.createdAt == createdAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectorId.hashCode) +
    (smtpHost.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode) +
    (smtpSsl == null ? 0 : smtpSsl!.hashCode) +
    (startTls == null ? 0 : startTls!.hashCode) +
    (smtpMechanisms == null ? 0 : smtpMechanisms!.hashCode) +
    (localHostName == null ? 0 : localHostName!.hashCode) +
    (proxyHost == null ? 0 : proxyHost!.hashCode) +
    (proxyPort == null ? 0 : proxyPort!.hashCode) +
    (proxyEnabled == null ? 0 : proxyEnabled!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (sslTrust == null ? 0 : sslTrust!.hashCode) +
    (sslProtocols == null ? 0 : sslProtocols!.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ConnectorSmtpConnectionDto[connectorId=$connectorId, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, smtpSsl=$smtpSsl, startTls=$startTls, smtpMechanisms=$smtpMechanisms, localHostName=$localHostName, proxyHost=$proxyHost, proxyPort=$proxyPort, proxyEnabled=$proxyEnabled, enabled=$enabled, sslTrust=$sslTrust, sslProtocols=$sslProtocols, createdAt=$createdAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectorId'] = this.connectorId;
      json[r'smtpHost'] = this.smtpHost;
    if (this.smtpPort != null) {
      json[r'smtpPort'] = this.smtpPort;
    } else {
      json[r'smtpPort'] = null;
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
    if (this.smtpSsl != null) {
      json[r'smtpSsl'] = this.smtpSsl;
    } else {
      json[r'smtpSsl'] = null;
    }
    if (this.startTls != null) {
      json[r'startTls'] = this.startTls;
    } else {
      json[r'startTls'] = null;
    }
    if (this.smtpMechanisms != null) {
      json[r'smtpMechanisms'] = this.smtpMechanisms;
    } else {
      json[r'smtpMechanisms'] = null;
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
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ConnectorSmtpConnectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSmtpConnectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSmtpConnectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSmtpConnectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSmtpConnectionDto(
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        smtpHost: mapValueOfType<String>(json, r'smtpHost')!,
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
        smtpSsl: mapValueOfType<bool>(json, r'smtpSsl'),
        startTls: mapValueOfType<bool>(json, r'startTls'),
        smtpMechanisms: json[r'smtpMechanisms'] is List
            ? (json[r'smtpMechanisms'] as List).cast<String>()
            : const [],
        localHostName: mapValueOfType<String>(json, r'localHostName'),
        proxyHost: mapValueOfType<String>(json, r'proxyHost'),
        proxyPort: mapValueOfType<int>(json, r'proxyPort'),
        proxyEnabled: mapValueOfType<bool>(json, r'proxyEnabled'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        sslTrust: mapValueOfType<String>(json, r'sslTrust'),
        sslProtocols: json[r'sslProtocols'] is List
            ? (json[r'sslProtocols'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ConnectorSmtpConnectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSmtpConnectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSmtpConnectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSmtpConnectionDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorSmtpConnectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSmtpConnectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSmtpConnectionDto-objects as value to a dart map
  static Map<String, List<ConnectorSmtpConnectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSmtpConnectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSmtpConnectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectorId',
    'smtpHost',
    'createdAt',
    'id',
  };
}

