//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorDto {
  /// Returns a new [ConnectorDto] instance.
  ConnectorDto({
    @required this.id,
    @required this.userId,
    @required this.connectorType,
    @required this.connectorAuthType,
    @required this.syncEnabled,
    @required this.syncScheduleType,
    this.syncInterval,
    this.imapHost,
    this.imapPort,
    this.imapUsername,
    this.imapPassword,
    this.imapSsl,
    @required this.createdAt,
  });

  String id;

  String userId;

  ConnectorDtoConnectorTypeEnum connectorType;

  ConnectorDtoConnectorAuthTypeEnum connectorAuthType;

  bool syncEnabled;

  ConnectorDtoSyncScheduleTypeEnum syncScheduleType;

  int syncInterval;

  String imapHost;

  int imapPort;

  String imapUsername;

  String imapPassword;

  bool imapSsl;

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
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (connectorType == null ? 0 : connectorType.hashCode) +
    (connectorAuthType == null ? 0 : connectorAuthType.hashCode) +
    (syncEnabled == null ? 0 : syncEnabled.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval.hashCode) +
    (imapHost == null ? 0 : imapHost.hashCode) +
    (imapPort == null ? 0 : imapPort.hashCode) +
    (imapUsername == null ? 0 : imapUsername.hashCode) +
    (imapPassword == null ? 0 : imapPassword.hashCode) +
    (imapSsl == null ? 0 : imapSsl.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'ConnectorDto[id=$id, userId=$userId, connectorType=$connectorType, connectorAuthType=$connectorAuthType, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, imapHost=$imapHost, imapPort=$imapPort, imapUsername=$imapUsername, imapPassword=$imapPassword, imapSsl=$imapSsl, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'connectorType'] = connectorType;
      json[r'connectorAuthType'] = connectorAuthType;
      json[r'syncEnabled'] = syncEnabled;
      json[r'syncScheduleType'] = syncScheduleType;
    if (syncInterval != null) {
      json[r'syncInterval'] = syncInterval;
    }
    if (imapHost != null) {
      json[r'imapHost'] = imapHost;
    }
    if (imapPort != null) {
      json[r'imapPort'] = imapPort;
    }
    if (imapUsername != null) {
      json[r'imapUsername'] = imapUsername;
    }
    if (imapPassword != null) {
      json[r'imapPassword'] = imapPassword;
    }
    if (imapSsl != null) {
      json[r'imapSsl'] = imapSsl;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorDto(
        id: json[r'id'],
        userId: json[r'userId'],
        connectorType: ConnectorDtoConnectorTypeEnum.fromJson(json[r'connectorType']),
        connectorAuthType: ConnectorDtoConnectorAuthTypeEnum.fromJson(json[r'connectorAuthType']),
        syncEnabled: json[r'syncEnabled'],
        syncScheduleType: ConnectorDtoSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: json[r'syncInterval'],
        imapHost: json[r'imapHost'],
        imapPort: json[r'imapPort'],
        imapUsername: json[r'imapUsername'],
        imapPassword: json[r'imapPassword'],
        imapSsl: json[r'imapSsl'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<ConnectorDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorDto>[]
      : json.map((v) => ConnectorDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorDto-objects as value to a dart map
  static Map<String, List<ConnectorDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static ConnectorDtoConnectorTypeEnum fromJson(dynamic value) =>
    ConnectorDtoConnectorTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoConnectorTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorDtoConnectorTypeEnum>[]
      : json
          .map((value) => ConnectorDtoConnectorTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorDtoConnectorTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoConnectorTypeEnum].
class ConnectorDtoConnectorTypeEnumTypeTransformer {
  const ConnectorDtoConnectorTypeEnumTypeTransformer._();

  factory ConnectorDtoConnectorTypeEnumTypeTransformer() => _instance ??= ConnectorDtoConnectorTypeEnumTypeTransformer._();

  String encode(ConnectorDtoConnectorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoConnectorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoConnectorTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'IMAP': return ConnectorDtoConnectorTypeEnum.IMAP;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorDtoConnectorTypeEnumTypeTransformer] instance.
  static ConnectorDtoConnectorTypeEnumTypeTransformer _instance;
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

  static ConnectorDtoConnectorAuthTypeEnum fromJson(dynamic value) =>
    ConnectorDtoConnectorAuthTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoConnectorAuthTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorDtoConnectorAuthTypeEnum>[]
      : json
          .map((value) => ConnectorDtoConnectorAuthTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorDtoConnectorAuthTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoConnectorAuthTypeEnum].
class ConnectorDtoConnectorAuthTypeEnumTypeTransformer {
  const ConnectorDtoConnectorAuthTypeEnumTypeTransformer._();

  factory ConnectorDtoConnectorAuthTypeEnumTypeTransformer() => _instance ??= ConnectorDtoConnectorAuthTypeEnumTypeTransformer._();

  String encode(ConnectorDtoConnectorAuthTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoConnectorAuthTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoConnectorAuthTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PLAIN_TEXT': return ConnectorDtoConnectorAuthTypeEnum.PLAIN_TEXT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorDtoConnectorAuthTypeEnumTypeTransformer] instance.
  static ConnectorDtoConnectorAuthTypeEnumTypeTransformer _instance;
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

  static ConnectorDtoSyncScheduleTypeEnum fromJson(dynamic value) =>
    ConnectorDtoSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoSyncScheduleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorDtoSyncScheduleTypeEnum>[]
      : json
          .map((value) => ConnectorDtoSyncScheduleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorDtoSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoSyncScheduleTypeEnum].
class ConnectorDtoSyncScheduleTypeEnumTypeTransformer {
  const ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  factory ConnectorDtoSyncScheduleTypeEnumTypeTransformer() => _instance ??= ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorDtoSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoSyncScheduleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'INTERVAL': return ConnectorDtoSyncScheduleTypeEnum.INTERVAL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorDtoSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorDtoSyncScheduleTypeEnumTypeTransformer _instance;
}

