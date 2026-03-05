//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorEventProjection {
  /// Returns a new [ConnectorEventProjection] instance.
  ConnectorEventProjection({
    required this.createdAt,
    required this.eventType,
    required this.connectorId,
    this.seen,
    this.message,
    this.id,
    required this.size,
    required this.status,
  });

  DateTime createdAt;

  ConnectorEventProjectionEventTypeEnum eventType;

  String connectorId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? seen;

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

  int size;

  ConnectorEventProjectionStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorEventProjection &&
     other.createdAt == createdAt &&
     other.eventType == eventType &&
     other.connectorId == connectorId &&
     other.seen == seen &&
     other.message == message &&
     other.id == id &&
     other.size == size &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (eventType.hashCode) +
    (connectorId.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (size.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ConnectorEventProjection[createdAt=$createdAt, eventType=$eventType, connectorId=$connectorId, seen=$seen, message=$message, id=$id, size=$size, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'eventType'] = this.eventType;
      json[r'connectorId'] = this.connectorId;
    if (this.seen != null) {
      json[r'seen'] = this.seen;
    } else {
      json[r'seen'] = null;
    }
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
      json[r'size'] = this.size;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ConnectorEventProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorEventProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorEventProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorEventProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorEventProjection(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        eventType: ConnectorEventProjectionEventTypeEnum.fromJson(json[r'eventType'])!,
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        seen: mapValueOfType<bool>(json, r'seen'),
        message: mapValueOfType<String>(json, r'message'),
        id: mapValueOfType<String>(json, r'id'),
        size: mapValueOfType<int>(json, r'size')!,
        status: ConnectorEventProjectionStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<ConnectorEventProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorEventProjection> mapFromJson(dynamic json) {
    final map = <String, ConnectorEventProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorEventProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorEventProjection-objects as value to a dart map
  static Map<String, List<ConnectorEventProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorEventProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorEventProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'eventType',
    'connectorId',
    'size',
    'status',
  };
}


class ConnectorEventProjectionEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorEventProjectionEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SEND = ConnectorEventProjectionEventTypeEnum._(r'SEND');
  static const SYNC = ConnectorEventProjectionEventTypeEnum._(r'SYNC');

  /// List of all possible values in this [enum][ConnectorEventProjectionEventTypeEnum].
  static const values = <ConnectorEventProjectionEventTypeEnum>[
    SEND,
    SYNC,
  ];

  static ConnectorEventProjectionEventTypeEnum? fromJson(dynamic value) => ConnectorEventProjectionEventTypeEnumTypeTransformer().decode(value);

  static List<ConnectorEventProjectionEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventProjectionEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventProjectionEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorEventProjectionEventTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorEventProjectionEventTypeEnum].
class ConnectorEventProjectionEventTypeEnumTypeTransformer {
  factory ConnectorEventProjectionEventTypeEnumTypeTransformer() => _instance ??= const ConnectorEventProjectionEventTypeEnumTypeTransformer._();

  const ConnectorEventProjectionEventTypeEnumTypeTransformer._();

  String encode(ConnectorEventProjectionEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorEventProjectionEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorEventProjectionEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SEND': return ConnectorEventProjectionEventTypeEnum.SEND;
        case r'SYNC': return ConnectorEventProjectionEventTypeEnum.SYNC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorEventProjectionEventTypeEnumTypeTransformer] instance.
  static ConnectorEventProjectionEventTypeEnumTypeTransformer? _instance;
}



class ConnectorEventProjectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorEventProjectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = ConnectorEventProjectionStatusEnum._(r'SUCCESS');
  static const INTERNAL_ERROR = ConnectorEventProjectionStatusEnum._(r'INTERNAL_ERROR');
  static const SUBSCRIPTION_ERROR = ConnectorEventProjectionStatusEnum._(r'SUBSCRIPTION_ERROR');
  static const CONNECTION_ERROR = ConnectorEventProjectionStatusEnum._(r'CONNECTION_ERROR');
  static const NOT_FOUND = ConnectorEventProjectionStatusEnum._(r'NOT_FOUND');

  /// List of all possible values in this [enum][ConnectorEventProjectionStatusEnum].
  static const values = <ConnectorEventProjectionStatusEnum>[
    SUCCESS,
    INTERNAL_ERROR,
    SUBSCRIPTION_ERROR,
    CONNECTION_ERROR,
    NOT_FOUND,
  ];

  static ConnectorEventProjectionStatusEnum? fromJson(dynamic value) => ConnectorEventProjectionStatusEnumTypeTransformer().decode(value);

  static List<ConnectorEventProjectionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventProjectionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventProjectionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorEventProjectionStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorEventProjectionStatusEnum].
class ConnectorEventProjectionStatusEnumTypeTransformer {
  factory ConnectorEventProjectionStatusEnumTypeTransformer() => _instance ??= const ConnectorEventProjectionStatusEnumTypeTransformer._();

  const ConnectorEventProjectionStatusEnumTypeTransformer._();

  String encode(ConnectorEventProjectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorEventProjectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorEventProjectionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return ConnectorEventProjectionStatusEnum.SUCCESS;
        case r'INTERNAL_ERROR': return ConnectorEventProjectionStatusEnum.INTERNAL_ERROR;
        case r'SUBSCRIPTION_ERROR': return ConnectorEventProjectionStatusEnum.SUBSCRIPTION_ERROR;
        case r'CONNECTION_ERROR': return ConnectorEventProjectionStatusEnum.CONNECTION_ERROR;
        case r'NOT_FOUND': return ConnectorEventProjectionStatusEnum.NOT_FOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorEventProjectionStatusEnumTypeTransformer] instance.
  static ConnectorEventProjectionStatusEnumTypeTransformer? _instance;
}


