//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncEventDto {
  /// Returns a new [ConnectorSyncEventDto] instance.
  ConnectorSyncEventDto({
    required this.id,
    required this.connectorId,
    required this.syncStatus,
    required this.syncCount,
    this.message,
    required this.createdAt,
  });

  String id;

  String connectorId;

  ConnectorSyncEventDtoSyncStatusEnum syncStatus;

  int syncCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (connectorId.hashCode) +
    (syncStatus.hashCode) +
    (syncCount.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ConnectorSyncEventDto[id=$id, connectorId=$connectorId, syncStatus=$syncStatus, syncCount=$syncCount, message=$message, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'connectorId'] = this.connectorId;
      json[r'syncStatus'] = this.syncStatus;
      json[r'syncCount'] = this.syncCount;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorSyncEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncEventDto(
        id: mapValueOfType<String>(json, r'id')!,
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        syncStatus: ConnectorSyncEventDtoSyncStatusEnum.fromJson(json[r'syncStatus'])!,
        syncCount: mapValueOfType<int>(json, r'syncCount')!,
        message: mapValueOfType<String>(json, r'message'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<ConnectorSyncEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncEventDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncEventDto-objects as value to a dart map
  static Map<String, List<ConnectorSyncEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'connectorId',
    'syncStatus',
    'syncCount',
    'createdAt',
  };
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

  static ConnectorSyncEventDtoSyncStatusEnum? fromJson(dynamic value) => ConnectorSyncEventDtoSyncStatusEnumTypeTransformer().decode(value);

  static List<ConnectorSyncEventDtoSyncStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncEventDtoSyncStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncEventDtoSyncStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorSyncEventDtoSyncStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorSyncEventDtoSyncStatusEnum].
class ConnectorSyncEventDtoSyncStatusEnumTypeTransformer {
  factory ConnectorSyncEventDtoSyncStatusEnumTypeTransformer() => _instance ??= const ConnectorSyncEventDtoSyncStatusEnumTypeTransformer._();

  const ConnectorSyncEventDtoSyncStatusEnumTypeTransformer._();

  String encode(ConnectorSyncEventDtoSyncStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorSyncEventDtoSyncStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorSyncEventDtoSyncStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return ConnectorSyncEventDtoSyncStatusEnum.SUCCESS;
        case r'INTERNAL_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.INTERNAL_ERROR;
        case r'SUBSCRIPTION_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.SUBSCRIPTION_ERROR;
        case r'CONNECTION_ERROR': return ConnectorSyncEventDtoSyncStatusEnum.CONNECTION_ERROR;
        case r'NOT_FOUND': return ConnectorSyncEventDtoSyncStatusEnum.NOT_FOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorSyncEventDtoSyncStatusEnumTypeTransformer] instance.
  static ConnectorSyncEventDtoSyncStatusEnumTypeTransformer? _instance;
}


