//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorDto {
  /// Returns a new [ConnectorDto] instance.
  ConnectorDto({
    required this.id,
    required this.userId,
    required this.connectorType,
    required this.connectorAuthType,
    required this.syncEnabled,
    required this.syncScheduleType,
    this.syncInterval,
    this.imapHost,
    this.imapPort,
    this.imapUsername,
    this.imapPassword,
    this.imapSsl,
    required this.createdAt,
  });

  String id;

  String userId;

  ConnectorDtoConnectorTypeEnum connectorType;

  ConnectorDtoConnectorAuthTypeEnum connectorAuthType;

  bool syncEnabled;

  ConnectorDtoSyncScheduleTypeEnum syncScheduleType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? syncInterval;

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

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorDto &&
     other.id == id &&
     other.userId == userId &&
     other.connectorType == connectorType &&
     other.connectorAuthType == connectorAuthType &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.imapHost == imapHost &&
     other.imapPort == imapPort &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.imapSsl == imapSsl &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (connectorType.hashCode) +
    (connectorAuthType.hashCode) +
    (syncEnabled.hashCode) +
    (syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode) +
    (imapHost == null ? 0 : imapHost!.hashCode) +
    (imapPort == null ? 0 : imapPort!.hashCode) +
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode) +
    (imapSsl == null ? 0 : imapSsl!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ConnectorDto[id=$id, userId=$userId, connectorType=$connectorType, connectorAuthType=$connectorAuthType, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, imapHost=$imapHost, imapPort=$imapPort, imapUsername=$imapUsername, imapPassword=$imapPassword, imapSsl=$imapSsl, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'connectorType'] = this.connectorType;
      json[r'connectorAuthType'] = this.connectorAuthType;
      json[r'syncEnabled'] = this.syncEnabled;
      json[r'syncScheduleType'] = this.syncScheduleType;
    if (this.syncInterval != null) {
      json[r'syncInterval'] = this.syncInterval;
    } else {
      json[r'syncInterval'] = null;
    }
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        connectorType: ConnectorDtoConnectorTypeEnum.fromJson(json[r'connectorType'])!,
        connectorAuthType: ConnectorDtoConnectorAuthTypeEnum.fromJson(json[r'connectorAuthType'])!,
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled')!,
        syncScheduleType: ConnectorDtoSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType'])!,
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
        imapHost: mapValueOfType<String>(json, r'imapHost'),
        imapPort: mapValueOfType<int>(json, r'imapPort'),
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
        imapSsl: mapValueOfType<bool>(json, r'imapSsl'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<ConnectorDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorDto-objects as value to a dart map
  static Map<String, List<ConnectorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'connectorType',
    'connectorAuthType',
    'syncEnabled',
    'syncScheduleType',
    'createdAt',
  };
}


class ConnectorDtoConnectorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorDtoConnectorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IMAP = ConnectorDtoConnectorTypeEnum._(r'IMAP');

  /// List of all possible values in this [enum][ConnectorDtoConnectorTypeEnum].
  static const values = <ConnectorDtoConnectorTypeEnum>[
    IMAP,
  ];

  static ConnectorDtoConnectorTypeEnum? fromJson(dynamic value) => ConnectorDtoConnectorTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoConnectorTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDtoConnectorTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDtoConnectorTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorDtoConnectorTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoConnectorTypeEnum].
class ConnectorDtoConnectorTypeEnumTypeTransformer {
  factory ConnectorDtoConnectorTypeEnumTypeTransformer() => _instance ??= const ConnectorDtoConnectorTypeEnumTypeTransformer._();

  const ConnectorDtoConnectorTypeEnumTypeTransformer._();

  String encode(ConnectorDtoConnectorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoConnectorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoConnectorTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IMAP': return ConnectorDtoConnectorTypeEnum.IMAP;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorDtoConnectorTypeEnumTypeTransformer] instance.
  static ConnectorDtoConnectorTypeEnumTypeTransformer? _instance;
}



class ConnectorDtoConnectorAuthTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorDtoConnectorAuthTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PLAIN_TEXT = ConnectorDtoConnectorAuthTypeEnum._(r'PLAIN_TEXT');

  /// List of all possible values in this [enum][ConnectorDtoConnectorAuthTypeEnum].
  static const values = <ConnectorDtoConnectorAuthTypeEnum>[
    PLAIN_TEXT,
  ];

  static ConnectorDtoConnectorAuthTypeEnum? fromJson(dynamic value) => ConnectorDtoConnectorAuthTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoConnectorAuthTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDtoConnectorAuthTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDtoConnectorAuthTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorDtoConnectorAuthTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoConnectorAuthTypeEnum].
class ConnectorDtoConnectorAuthTypeEnumTypeTransformer {
  factory ConnectorDtoConnectorAuthTypeEnumTypeTransformer() => _instance ??= const ConnectorDtoConnectorAuthTypeEnumTypeTransformer._();

  const ConnectorDtoConnectorAuthTypeEnumTypeTransformer._();

  String encode(ConnectorDtoConnectorAuthTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoConnectorAuthTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoConnectorAuthTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PLAIN_TEXT': return ConnectorDtoConnectorAuthTypeEnum.PLAIN_TEXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorDtoConnectorAuthTypeEnumTypeTransformer] instance.
  static ConnectorDtoConnectorAuthTypeEnumTypeTransformer? _instance;
}



class ConnectorDtoSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorDtoSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = ConnectorDtoSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][ConnectorDtoSyncScheduleTypeEnum].
  static const values = <ConnectorDtoSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static ConnectorDtoSyncScheduleTypeEnum? fromJson(dynamic value) => ConnectorDtoSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoSyncScheduleTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDtoSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDtoSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorDtoSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoSyncScheduleTypeEnum].
class ConnectorDtoSyncScheduleTypeEnumTypeTransformer {
  factory ConnectorDtoSyncScheduleTypeEnumTypeTransformer() => _instance ??= const ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  const ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorDtoSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return ConnectorDtoSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorDtoSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorDtoSyncScheduleTypeEnumTypeTransformer? _instance;
}


