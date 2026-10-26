//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorImapConnectionOptions {
  /// Returns a new [CreateConnectorImapConnectionOptions] instance.
  CreateConnectorImapConnectionOptions({
    this.imapSsl,
    this.imapUsername,
    this.imapPassword,
    this.selectFolder,
    this.searchTerms,
    this.imapPort,
    required this.imapHost,
    this.enabled,
    this.startTls,
    this.proxyEnabled,
    this.proxyPort,
    this.proxyHost,
    this.localHostName,
    this.mechanisms = const [],
    this.sslTrust,
    this.sslProtocols = const [],
  });

  bool? imapSsl;

  String? imapUsername;

  String? imapPassword;

  /// Optional folder to select during IMAP connection
  String? selectFolder;

  String? searchTerms;

  /// IMAP server port
  int? imapPort;

  /// IMAP server host
  String imapHost;

  /// IMAP server enabled
  bool? enabled;

  bool? startTls;

  bool? proxyEnabled;

  int? proxyPort;

  String? proxyHost;

  String? localHostName;

  /// List of IMAP mechanisms
  List<String>? mechanisms;

  String? sslTrust;

  /// List of SSL protocols
  List<String>? sslProtocols;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorImapConnectionOptions &&
     other.imapSsl == imapSsl &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.selectFolder == selectFolder &&
     other.searchTerms == searchTerms &&
     other.imapPort == imapPort &&
     other.imapHost == imapHost &&
     other.enabled == enabled &&
     other.startTls == startTls &&
     other.proxyEnabled == proxyEnabled &&
     other.proxyPort == proxyPort &&
     other.proxyHost == proxyHost &&
     other.localHostName == localHostName &&
     other.mechanisms == mechanisms &&
     other.sslTrust == sslTrust &&
     other.sslProtocols == sslProtocols;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (imapSsl == null ? 0 : imapSsl!.hashCode) +
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode) +
    (selectFolder == null ? 0 : selectFolder!.hashCode) +
    (searchTerms == null ? 0 : searchTerms!.hashCode) +
    (imapPort == null ? 0 : imapPort!.hashCode) +
    (imapHost.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (startTls == null ? 0 : startTls!.hashCode) +
    (proxyEnabled == null ? 0 : proxyEnabled!.hashCode) +
    (proxyPort == null ? 0 : proxyPort!.hashCode) +
    (proxyHost == null ? 0 : proxyHost!.hashCode) +
    (localHostName == null ? 0 : localHostName!.hashCode) +
    (mechanisms == null ? 0 : mechanisms!.hashCode) +
    (sslTrust == null ? 0 : sslTrust!.hashCode) +
    (sslProtocols == null ? 0 : sslProtocols!.hashCode);

  @override
  String toString() => 'CreateConnectorImapConnectionOptions[imapSsl=$imapSsl, imapUsername=$imapUsername, imapPassword=$imapPassword, selectFolder=$selectFolder, searchTerms=$searchTerms, imapPort=$imapPort, imapHost=$imapHost, enabled=$enabled, startTls=$startTls, proxyEnabled=$proxyEnabled, proxyPort=$proxyPort, proxyHost=$proxyHost, localHostName=$localHostName, mechanisms=$mechanisms, sslTrust=$sslTrust, sslProtocols=$sslProtocols]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imapSsl != null) {
      json[r'imapSsl'] = this.imapSsl;
    } else {
      json[r'imapSsl'] = null;
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
    if (this.imapPort != null) {
      json[r'imapPort'] = this.imapPort;
    } else {
      json[r'imapPort'] = null;
    }
      json[r'imapHost'] = this.imapHost;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.startTls != null) {
      json[r'startTls'] = this.startTls;
    } else {
      json[r'startTls'] = null;
    }
    if (this.proxyEnabled != null) {
      json[r'proxyEnabled'] = this.proxyEnabled;
    } else {
      json[r'proxyEnabled'] = null;
    }
    if (this.proxyPort != null) {
      json[r'proxyPort'] = this.proxyPort;
    } else {
      json[r'proxyPort'] = null;
    }
    if (this.proxyHost != null) {
      json[r'proxyHost'] = this.proxyHost;
    } else {
      json[r'proxyHost'] = null;
    }
    if (this.localHostName != null) {
      json[r'localHostName'] = this.localHostName;
    } else {
      json[r'localHostName'] = null;
    }
    if (this.mechanisms != null) {
      json[r'mechanisms'] = this.mechanisms;
    } else {
      json[r'mechanisms'] = null;
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

  /// Returns a new [CreateConnectorImapConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorImapConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorImapConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorImapConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorImapConnectionOptions(
        imapSsl: mapValueOfType<bool>(json, r'imapSsl'),
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
        selectFolder: mapValueOfType<String>(json, r'selectFolder'),
        searchTerms: mapValueOfType<String>(json, r'searchTerms'),
        imapPort: mapValueOfType<int>(json, r'imapPort'),
        imapHost: mapValueOfType<String>(json, r'imapHost')!,
        enabled: mapValueOfType<bool>(json, r'enabled'),
        startTls: mapValueOfType<bool>(json, r'startTls'),
        proxyEnabled: mapValueOfType<bool>(json, r'proxyEnabled'),
        proxyPort: mapValueOfType<int>(json, r'proxyPort'),
        proxyHost: mapValueOfType<String>(json, r'proxyHost'),
        localHostName: mapValueOfType<String>(json, r'localHostName'),
        mechanisms: json[r'mechanisms'] is List
            ? (json[r'mechanisms'] as List).cast<String>()
            : const [],
        sslTrust: mapValueOfType<String>(json, r'sslTrust'),
        sslProtocols: json[r'sslProtocols'] is List
            ? (json[r'sslProtocols'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateConnectorImapConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorImapConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorImapConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorImapConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorImapConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorImapConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorImapConnectionOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorImapConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorImapConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorImapConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'imapHost',
  };
}

