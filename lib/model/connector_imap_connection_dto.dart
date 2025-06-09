//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorImapConnectionDto {
  /// Returns a new [ConnectorImapConnectionDto] instance.
  ConnectorImapConnectionDto({
    required this.connectorId,
    required this.imapHost,
    this.imapPort,
    this.imapUsername,
    this.imapPassword,
    this.imapSsl,
    this.selectFolder,
    this.searchTerms,
    this.startTls,
    this.proxyHost,
    this.proxyPort,
    this.proxyEnabled,
    this.localHostName,
    this.mechanisms = const [],
    this.sslProtocols = const [],
    this.sslTrust,
    this.enabled,
    required this.createdAt,
    required this.id,
  });

  String connectorId;

  String imapHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imapPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imapUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imapPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? imapSsl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selectFolder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchTerms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? startTls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proxyHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? proxyPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? proxyEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localHostName;

  List<String> mechanisms;

  List<String> sslProtocols;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sslTrust;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  DateTime createdAt;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorImapConnectionDto &&
     other.connectorId == connectorId &&
     other.imapHost == imapHost &&
     other.imapPort == imapPort &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.imapSsl == imapSsl &&
     other.selectFolder == selectFolder &&
     other.searchTerms == searchTerms &&
     other.startTls == startTls &&
     other.proxyHost == proxyHost &&
     other.proxyPort == proxyPort &&
     other.proxyEnabled == proxyEnabled &&
     other.localHostName == localHostName &&
     other.mechanisms == mechanisms &&
     other.sslProtocols == sslProtocols &&
     other.sslTrust == sslTrust &&
     other.enabled == enabled &&
     other.createdAt == createdAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectorId.hashCode) +
    (imapHost.hashCode) +
    (imapPort == null ? 0 : imapPort!.hashCode) +
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode) +
    (imapSsl == null ? 0 : imapSsl!.hashCode) +
    (selectFolder == null ? 0 : selectFolder!.hashCode) +
    (searchTerms == null ? 0 : searchTerms!.hashCode) +
    (startTls == null ? 0 : startTls!.hashCode) +
    (proxyHost == null ? 0 : proxyHost!.hashCode) +
    (proxyPort == null ? 0 : proxyPort!.hashCode) +
    (proxyEnabled == null ? 0 : proxyEnabled!.hashCode) +
    (localHostName == null ? 0 : localHostName!.hashCode) +
    (mechanisms.hashCode) +
    (sslProtocols.hashCode) +
    (sslTrust == null ? 0 : sslTrust!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ConnectorImapConnectionDto[connectorId=$connectorId, imapHost=$imapHost, imapPort=$imapPort, imapUsername=$imapUsername, imapPassword=$imapPassword, imapSsl=$imapSsl, selectFolder=$selectFolder, searchTerms=$searchTerms, startTls=$startTls, proxyHost=$proxyHost, proxyPort=$proxyPort, proxyEnabled=$proxyEnabled, localHostName=$localHostName, mechanisms=$mechanisms, sslProtocols=$sslProtocols, sslTrust=$sslTrust, enabled=$enabled, createdAt=$createdAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectorId'] = this.connectorId;
      json[r'imapHost'] = this.imapHost;
    if (this.imapPort != null) {
      json[r'imapPort'] = this.imapPort;
    } else {
      json[r'imapPort'] = null;
    }
    if (this.imapUsername != null) {
      json[r'imapUsername'] = this.imapUsername;
    } else {
      json[r'imapUsername'] = null;
    }
    if (this.imapPassword != null) {
      json[r'imapPassword'] = this.imapPassword;
    } else {
      json[r'imapPassword'] = null;
    }
    if (this.imapSsl != null) {
      json[r'imapSsl'] = this.imapSsl;
    } else {
      json[r'imapSsl'] = null;
    }
    if (this.selectFolder != null) {
      json[r'selectFolder'] = this.selectFolder;
    } else {
      json[r'selectFolder'] = null;
    }
    if (this.searchTerms != null) {
      json[r'searchTerms'] = this.searchTerms;
    } else {
      json[r'searchTerms'] = null;
    }
    if (this.startTls != null) {
      json[r'startTls'] = this.startTls;
    } else {
      json[r'startTls'] = null;
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
    if (this.localHostName != null) {
      json[r'localHostName'] = this.localHostName;
    } else {
      json[r'localHostName'] = null;
    }
      json[r'mechanisms'] = this.mechanisms;
      json[r'sslProtocols'] = this.sslProtocols;
    if (this.sslTrust != null) {
      json[r'sslTrust'] = this.sslTrust;
    } else {
      json[r'sslTrust'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ConnectorImapConnectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorImapConnectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorImapConnectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorImapConnectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorImapConnectionDto(
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        imapHost: mapValueOfType<String>(json, r'imapHost')!,
        imapPort: mapValueOfType<int>(json, r'imapPort'),
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
        imapSsl: mapValueOfType<bool>(json, r'imapSsl'),
        selectFolder: mapValueOfType<String>(json, r'selectFolder'),
        searchTerms: mapValueOfType<String>(json, r'searchTerms'),
        startTls: mapValueOfType<bool>(json, r'startTls'),
        proxyHost: mapValueOfType<String>(json, r'proxyHost'),
        proxyPort: mapValueOfType<int>(json, r'proxyPort'),
        proxyEnabled: mapValueOfType<bool>(json, r'proxyEnabled'),
        localHostName: mapValueOfType<String>(json, r'localHostName'),
        mechanisms: json[r'mechanisms'] is List
            ? (json[r'mechanisms'] as List).cast<String>()
            : const [],
        sslProtocols: json[r'sslProtocols'] is List
            ? (json[r'sslProtocols'] as List).cast<String>()
            : const [],
        sslTrust: mapValueOfType<String>(json, r'sslTrust'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ConnectorImapConnectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorImapConnectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorImapConnectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorImapConnectionDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorImapConnectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorImapConnectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorImapConnectionDto-objects as value to a dart map
  static Map<String, List<ConnectorImapConnectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorImapConnectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorImapConnectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectorId',
    'imapHost',
    'createdAt',
    'id',
  };
}

