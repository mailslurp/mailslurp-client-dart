//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncEventProjection {
  /// Returns a new [ConnectorSyncEventProjection] instance.
  ConnectorSyncEventProjection({
    this.message,
    this.id,
    @required this.createdAt,
    @required this.connectorId,
    @required this.syncCount,
    @required this.syncStatus,
  });

  String message;

  String id;

  DateTime createdAt;

  String connectorId;

  int syncCount;

  ConnectorSyncEventProjectionSyncStatusEnum syncStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncEventProjection &&
     other.message == message &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.connectorId == connectorId &&
     other.syncCount == syncCount &&
     other.syncStatus == syncStatus;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (connectorId == null ? 0 : connectorId.hashCode) +
    (syncCount == null ? 0 : syncCount.hashCode) +
    (syncStatus == null ? 0 : syncStatus.hashCode);

  @override
  String toString() => 'ConnectorSyncEventProjection[message=$message, id=$id, createdAt=$createdAt, connectorId=$connectorId, syncCount=$syncCount, syncStatus=$syncStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'connectorId'] = connectorId;
      json[r'syncCount'] = syncCount;
      json[r'syncStatus'] = syncStatus;
    return json;
  }

  /// Returns a new [ConnectorSyncEventProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncEventProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncEventProjection(
        message: json[r'message'],
        id: json[r'id'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        connectorId: json[r'connectorId'],
        syncCount: json[r'syncCount'],
        syncStatus: ConnectorSyncEventProjectionSyncStatusEnum.fromJson(json[r'syncStatus']),
    );

  static List<ConnectorSyncEventProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncEventProjection>[]
      : json.map((v) => ConnectorSyncEventProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncEventProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncEventProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncEventProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncEventProjection-objects as value to a dart map
  static Map<String, List<ConnectorSyncEventProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncEventProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncEventProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ConnectorSyncEventProjectionSyncStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorSyncEventProjectionSyncStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = ConnectorSyncEventProjectionSyncStatusEnum._(r'SUCCESS');
  static const INTERNAL_ERROR = ConnectorSyncEventProjectionSyncStatusEnum._(r'INTERNAL_ERROR');
  static const SUBSCRIPTION_ERROR = ConnectorSyncEventProjectionSyncStatusEnum._(r'SUBSCRIPTION_ERROR');
  static const CONNECTION_ERROR = ConnectorSyncEventProjectionSyncStatusEnum._(r'CONNECTION_ERROR');
  static const NOT_FOUND = ConnectorSyncEventProjectionSyncStatusEnum._(r'NOT_FOUND');

  /// List of all possible values in this [enum][ConnectorSyncEventProjectionSyncStatusEnum].
  static const values = <ConnectorSyncEventProjectionSyncStatusEnum>[
    SUCCESS,
    INTERNAL_ERROR,
    SUBSCRIPTION_ERROR,
    CONNECTION_ERROR,
    NOT_FOUND,
  ];

  static ConnectorSyncEventProjectionSyncStatusEnum fromJson(dynamic value) =>
    ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer().decode(value);

  static List<ConnectorSyncEventProjectionSyncStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncEventProjectionSyncStatusEnum>[]
      : json
          .map((value) => ConnectorSyncEventProjectionSyncStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorSyncEventProjectionSyncStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorSyncEventProjectionSyncStatusEnum].
class ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer {
  const ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer._();

  factory ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer() => _instance ??= ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer._();

  String encode(ConnectorSyncEventProjectionSyncStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorSyncEventProjectionSyncStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorSyncEventProjectionSyncStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUCCESS': return ConnectorSyncEventProjectionSyncStatusEnum.SUCCESS;
      case r'INTERNAL_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.INTERNAL_ERROR;
      case r'SUBSCRIPTION_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.SUBSCRIPTION_ERROR;
      case r'CONNECTION_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.CONNECTION_ERROR;
      case r'NOT_FOUND': return ConnectorSyncEventProjectionSyncStatusEnum.NOT_FOUND;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer] instance.
  static ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer _instance;
}

