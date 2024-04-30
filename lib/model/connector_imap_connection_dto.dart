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
    this.imapHost,
    this.imapPort,
    this.imapUsername,
    this.imapPassword,
    this.imapSsl,
    this.selectFolder,
    this.searchTerms,
    this.enabled,
    required this.createdAt,
    required this.id,
  });

  String connectorId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imapHost;

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
     other.enabled == enabled &&
     other.createdAt == createdAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectorId.hashCode) +
    (imapHost == null ? 0 : imapHost!.hashCode) +
    (imapPort == null ? 0 : imapPort!.hashCode) +
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode) +
    (imapSsl == null ? 0 : imapSsl!.hashCode) +
    (selectFolder == null ? 0 : selectFolder!.hashCode) +
    (searchTerms == null ? 0 : searchTerms!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ConnectorImapConnectionDto[connectorId=$connectorId, imapHost=$imapHost, imapPort=$imapPort, imapUsername=$imapUsername, imapPassword=$imapPassword, imapSsl=$imapSsl, selectFolder=$selectFolder, searchTerms=$searchTerms, enabled=$enabled, createdAt=$createdAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectorId'] = this.connectorId;
    if (this.imapHost != null) {
      json[r'imapHost'] = this.imapHost;
    } else {
      json[r'imapHost'] = null;
    }
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
        imapHost: mapValueOfType<String>(json, r'imapHost'),
        imapPort: mapValueOfType<int>(json, r'imapPort'),
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
        imapSsl: mapValueOfType<bool>(json, r'imapSsl'),
        selectFolder: mapValueOfType<String>(json, r'selectFolder'),
        searchTerms: mapValueOfType<String>(json, r'searchTerms'),
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
    'createdAt',
    'id',
  };
}

