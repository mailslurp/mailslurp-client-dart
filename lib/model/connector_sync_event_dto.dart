//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncEventDto {
  /// Returns a new [ConnectorSyncEventDto] instance.
  ConnectorSyncEventDto({
    @required this.id,
    @required this.connectorId,
    @required this.syncStatus,
    @required this.syncCount,
    this.message,
    @required this.createdAt,
  });

  String id;

  String connectorId;

  ConnectorSyncEventDtoSyncStatusEnum syncStatus;

  int syncCount;

  String message;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncEventDto &&
     other.id == id &&
     other.connectorId == connectorId &&
     other.syncStatus == syncStatus &&
     other.syncCount == syncCount &&
     other.message == message &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (connectorId == null ? 0 : connectorId.hashCode) +
    (syncStatus == null ? 0 : syncStatus.hashCode) +
    (syncCount == null ? 0 : syncCount.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'ConnectorSyncEventDto[id=$id, connectorId=$connectorId, syncStatus=$syncStatus, syncCount=$syncCount, message=$message, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'connectorId'] = connectorId;
      json[r'syncStatus'] = syncStatus;
      json[r'syncCount'] = syncCount;
    if (message != null) {
      json[r'message'] = message;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorSyncEventDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncEventDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncEventDto(
        id: json[r'id'],
        connectorId: json[r'connectorId'],
        syncStatus: ConnectorSyncEventDtoSyncStatusEnum.fromJson(json[r'syncStatus']),
        syncCount: json[r'syncCount'],
        message: json[r'message'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<ConnectorSyncEventDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncEventDto>[]
      : json.map((v) => ConnectorSyncEventDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncEventDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncEventDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncEventDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncEventDto-objects as value to a dart map
  static Map<String, List<ConnectorSyncEventDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncEventDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncEventDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ConnectorSyncEventDtoSyncStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorSyncEventDtoSyncStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = ConnectorSyncEventDtoSyncStatusEnum._(r'SUCCESS');
  static const INTERNAL_ERROR = ConnectorSyncEventDtoSyncStatusEnum._(r'INTERNAL_ERROR');
  static const SUBSCRIPTION_ERROR = ConnectorSyncEventDtoSyncStatusEnum._(r'SUBSCRIPTION_ERROR');
  static const CONNECTION_ERROR = ConnectorSyncEventDtoSyncStatusEnum._(r'CONNECTION_ERROR');
  static const NOT_FOUND = ConnectorSyncEventDtoSyncStatusEnum._(r'NOT_FOUND');

  /// List of all possible values in this [enum][ConnectorSyncEventDtoSyncStatusEnum].
  static const values = <ConnectorSyncEventDtoSyncStatusEnum>[
    SUCCESS,
    INTERNAL_ERROR,
    SUBSCRIPTION_ERROR,
    CONNECTION_ERROR,
    NOT_FOUND,
  ];

  static ConnectorSyncEventDtoSyncStatusEnum fromJson(dynamic value) =>
    ConnectorSyncEventDtoSyncStatusEnumTypeTransformer().decode(value);

  static List<ConnectorSyncEventDtoSyncStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncEventDtoSyncStatusEnum>[]
      : json
          .map((value) => ConnectorSyncEventDtoSyncStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConnectorSyncEventDtoSyncStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorSyncEventDtoSyncStatusEnum].
class ConnectorSyncEventDtoSyncStatusEnumTypeTransformer {
  const ConnectorSyncEventDtoSyncStatusEnumTypeTransformer._();

  factory ConnectorSyncEventDtoSyncStatusEnumTypeTransformer() => _instance ??= ConnectorSyncEventDtoSyncStatusEnumTypeTransformer._();

  String encode(ConnectorSyncEventDtoSyncStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorSyncEventDtoSyncStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorSyncEventDtoSyncStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUCCESS': return ConnectorSyncEventDtoSyncStatusEnum.SUCCESS;
      case r'INTERNAL_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.INTERNAL_ERROR;
      case r'SUBSCRIPTION_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.SUBSCRIPTION_ERROR;
      case r'CONNECTION_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.CONNECTION_ERROR;
      case r'NOT_FOUND': return ConnectorSyncEventDtoSyncStatusEnum.NOT_FOUND;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectorSyncEventDtoSyncStatusEnumTypeTransformer] instance.
  static ConnectorSyncEventDtoSyncStatusEnumTypeTransformer _instance;
}

