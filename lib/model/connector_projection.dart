//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorProjection {
  /// Returns a new [ConnectorProjection] instance.
  ConnectorProjection({
    this.id,
    @required this.inboxId,
    @required this.userId,
    @required this.createdAt,
    @required this.connectorType,
    @required this.syncScheduleType,
    this.syncInterval,
    @required this.syncEnabled,
  });

  String id;

  String inboxId;

  String userId;

  DateTime createdAt;

  ConnectorProjectionConnectorTypeEnum connectorType;

  ConnectorProjectionSyncScheduleTypeEnum syncScheduleType;

  int syncInterval;

  bool syncEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorProjection &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.connectorType == connectorType &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.syncEnabled == syncEnabled;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (connectorType == null ? 0 : connectorType.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval.hashCode) +
    (syncEnabled == null ? 0 : syncEnabled.hashCode);

  @override
  String toString() => 'ConnectorProjection[id=$id, inboxId=$inboxId, userId=$userId, createdAt=$createdAt, connectorType=$connectorType, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, syncEnabled=$syncEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'inboxId'] = inboxId;
      json[r'userId'] = userId;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'connectorType'] = connectorType;
      json[r'syncScheduleType'] = syncScheduleType;
    if (syncInterval != null) {
      json[r'syncInterval'] = syncInterval;
    }
      json[r'syncEnabled'] = syncEnabled;
    return json;
  }

  /// Returns a new [ConnectorProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorProjection(
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        userId: json[r'userId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        connectorType: ConnectorProjectionConnectorTypeEnum.fromJson(json[r'connectorType']),
        syncScheduleType: ConnectorProjectionSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: json[r'syncInterval'],
        syncEnabled: json[r'syncEnabled'],
    );

  static List<ConnectorProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorProjection>[]
      : json.map((v) => ConnectorProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorProjection-objects as value to a dart map
  static Map<String, List<ConnectorProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ConnectorProjectionConnectorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorProjectionConnectorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IMAP = ConnectorProjectionConnectorTypeEnum._(r'IMAP');

  /// List of all possible values in this [enum][ConnectorProjectionConnectorTypeEnum].
  static const values = <ConnectorProjectionConnectorTypeEnum>[
    IMAP,
  ];

  static ConnectorProjectionConnectorTypeEnum fromJson(dynamic value) =>
    ConnectorProjectionConnectorTypeEnumTypeTransformer().decode(value);

  static List<ConnectorProjectionConnectorTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorProjectionConnectorTypeEnum>[]
      : json
          .map((value) => ConnectorProjectionConnectorTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorProjectionConnectorTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorProjectionConnectorTypeEnum].
class ConnectorProjectionConnectorTypeEnumTypeTransformer {
  const ConnectorProjectionConnectorTypeEnumTypeTransformer._();

  factory ConnectorProjectionConnectorTypeEnumTypeTransformer() => _instance ??= ConnectorProjectionConnectorTypeEnumTypeTransformer._();

  String encode(ConnectorProjectionConnectorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorProjectionConnectorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorProjectionConnectorTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'IMAP': return ConnectorProjectionConnectorTypeEnum.IMAP;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorProjectionConnectorTypeEnumTypeTransformer] instance.
  static ConnectorProjectionConnectorTypeEnumTypeTransformer _instance;
}


class ConnectorProjectionSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorProjectionSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = ConnectorProjectionSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][ConnectorProjectionSyncScheduleTypeEnum].
  static const values = <ConnectorProjectionSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static ConnectorProjectionSyncScheduleTypeEnum fromJson(dynamic value) =>
    ConnectorProjectionSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorProjectionSyncScheduleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorProjectionSyncScheduleTypeEnum>[]
      : json
          .map((value) => ConnectorProjectionSyncScheduleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorProjectionSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorProjectionSyncScheduleTypeEnum].
class ConnectorProjectionSyncScheduleTypeEnumTypeTransformer {
  const ConnectorProjectionSyncScheduleTypeEnumTypeTransformer._();

  factory ConnectorProjectionSyncScheduleTypeEnumTypeTransformer() => _instance ??= ConnectorProjectionSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorProjectionSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorProjectionSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorProjectionSyncScheduleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'INTERVAL': return ConnectorProjectionSyncScheduleTypeEnum.INTERVAL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorProjectionSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorProjectionSyncScheduleTypeEnumTypeTransformer _instance;
}

