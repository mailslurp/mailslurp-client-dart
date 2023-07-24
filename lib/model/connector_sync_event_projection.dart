//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncEventProjection {
  /// Returns a new [ConnectorSyncEventProjection] instance.
  ConnectorSyncEventProjection({
    this.message,
    this.id,
    required this.createdAt,
    required this.connectorId,
    required this.syncCount,
    required this.syncStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (createdAt.hashCode) +
    (connectorId.hashCode) +
    (syncCount.hashCode) +
    (syncStatus.hashCode);

  @override
  String toString() => 'ConnectorSyncEventProjection[message=$message, id=$id, createdAt=$createdAt, connectorId=$connectorId, syncCount=$syncCount, syncStatus=$syncStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'connectorId'] = this.connectorId;
      json[r'syncCount'] = this.syncCount;
      json[r'syncStatus'] = this.syncStatus;
    return json;
  }

  /// Returns a new [ConnectorSyncEventProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncEventProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncEventProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncEventProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncEventProjection(
        message: mapValueOfType<String>(json, r'message'),
        id: mapValueOfType<String>(json, r'id'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        syncCount: mapValueOfType<int>(json, r'syncCount')!,
        syncStatus: ConnectorSyncEventProjectionSyncStatusEnum.fromJson(json[r'syncStatus'])!,
      );
    }
    return null;
  }

  static List<ConnectorSyncEventProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncEventProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncEventProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncEventProjection> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncEventProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncEventProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncEventProjection-objects as value to a dart map
  static Map<String, List<ConnectorSyncEventProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncEventProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncEventProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'connectorId',
    'syncCount',
    'syncStatus',
  };
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

  static ConnectorSyncEventProjectionSyncStatusEnum? fromJson(dynamic value) => ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer().decode(value);

  static List<ConnectorSyncEventProjectionSyncStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncEventProjectionSyncStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncEventProjectionSyncStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorSyncEventProjectionSyncStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorSyncEventProjectionSyncStatusEnum].
class ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer {
  factory ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer() => _instance ??= const ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer._();

  const ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer._();

  String encode(ConnectorSyncEventProjectionSyncStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorSyncEventProjectionSyncStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorSyncEventProjectionSyncStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return ConnectorSyncEventProjectionSyncStatusEnum.SUCCESS;
        case r'INTERNAL_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.INTERNAL_ERROR;
        case r'SUBSCRIPTION_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.SUBSCRIPTION_ERROR;
        case r'CONNECTION_ERROR': return ConnectorSyncEventProjectionSyncStatusEnum.CONNECTION_ERROR;
        case r'NOT_FOUND': return ConnectorSyncEventProjectionSyncStatusEnum.NOT_FOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer] instance.
  static ConnectorSyncEventProjectionSyncStatusEnumTypeTransformer? _instance;
}


