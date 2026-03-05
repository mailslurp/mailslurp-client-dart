//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorEventDto {
  /// Returns a new [ConnectorEventDto] instance.
  ConnectorEventDto({
    required this.id,
    required this.connectorId,
    required this.status,
    required this.eventType,
    required this.size,
    this.message,
    this.logs,
    this.seen,
    required this.createdAt,
  });

  String id;

  String connectorId;

  ConnectorEventDtoStatusEnum status;

  ConnectorEventDtoEventTypeEnum eventType;

  int size;

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
  String? logs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? seen;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorEventDto &&
     other.id == id &&
     other.connectorId == connectorId &&
     other.status == status &&
     other.eventType == eventType &&
     other.size == size &&
     other.message == message &&
     other.logs == logs &&
     other.seen == seen &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (connectorId.hashCode) +
    (status.hashCode) +
    (eventType.hashCode) +
    (size.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (logs == null ? 0 : logs!.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ConnectorEventDto[id=$id, connectorId=$connectorId, status=$status, eventType=$eventType, size=$size, message=$message, logs=$logs, seen=$seen, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'connectorId'] = this.connectorId;
      json[r'status'] = this.status;
      json[r'eventType'] = this.eventType;
      json[r'size'] = this.size;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    if (this.seen != null) {
      json[r'seen'] = this.seen;
    } else {
      json[r'seen'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorEventDto(
        id: mapValueOfType<String>(json, r'id')!,
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        status: ConnectorEventDtoStatusEnum.fromJson(json[r'status'])!,
        eventType: ConnectorEventDtoEventTypeEnum.fromJson(json[r'eventType'])!,
        size: mapValueOfType<int>(json, r'size')!,
        message: mapValueOfType<String>(json, r'message'),
        logs: mapValueOfType<String>(json, r'logs'),
        seen: mapValueOfType<bool>(json, r'seen'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<ConnectorEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorEventDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorEventDto-objects as value to a dart map
  static Map<String, List<ConnectorEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'connectorId',
    'status',
    'eventType',
    'size',
    'createdAt',
  };
}


class ConnectorEventDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorEventDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = ConnectorEventDtoStatusEnum._(r'SUCCESS');
  static const INTERNAL_ERROR = ConnectorEventDtoStatusEnum._(r'INTERNAL_ERROR');
  static const SUBSCRIPTION_ERROR = ConnectorEventDtoStatusEnum._(r'SUBSCRIPTION_ERROR');
  static const CONNECTION_ERROR = ConnectorEventDtoStatusEnum._(r'CONNECTION_ERROR');
  static const NOT_FOUND = ConnectorEventDtoStatusEnum._(r'NOT_FOUND');

  /// List of all possible values in this [enum][ConnectorEventDtoStatusEnum].
  static const values = <ConnectorEventDtoStatusEnum>[
    SUCCESS,
    INTERNAL_ERROR,
    SUBSCRIPTION_ERROR,
    CONNECTION_ERROR,
    NOT_FOUND,
  ];

  static ConnectorEventDtoStatusEnum? fromJson(dynamic value) => ConnectorEventDtoStatusEnumTypeTransformer().decode(value);

  static List<ConnectorEventDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorEventDtoStatusEnum] to String,
/// and [decode] dynamic data back to [ConnectorEventDtoStatusEnum].
class ConnectorEventDtoStatusEnumTypeTransformer {
  factory ConnectorEventDtoStatusEnumTypeTransformer() => _instance ??= const ConnectorEventDtoStatusEnumTypeTransformer._();

  const ConnectorEventDtoStatusEnumTypeTransformer._();

  String encode(ConnectorEventDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorEventDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorEventDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return ConnectorEventDtoStatusEnum.SUCCESS;
        case r'INTERNAL_ERROR': return ConnectorEventDtoStatusEnum.INTERNAL_ERROR;
        case r'SUBSCRIPTION_ERROR': return ConnectorEventDtoStatusEnum.SUBSCRIPTION_ERROR;
        case r'CONNECTION_ERROR': return ConnectorEventDtoStatusEnum.CONNECTION_ERROR;
        case r'NOT_FOUND': return ConnectorEventDtoStatusEnum.NOT_FOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorEventDtoStatusEnumTypeTransformer] instance.
  static ConnectorEventDtoStatusEnumTypeTransformer? _instance;
}



class ConnectorEventDtoEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorEventDtoEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SEND = ConnectorEventDtoEventTypeEnum._(r'SEND');
  static const SYNC = ConnectorEventDtoEventTypeEnum._(r'SYNC');

  /// List of all possible values in this [enum][ConnectorEventDtoEventTypeEnum].
  static const values = <ConnectorEventDtoEventTypeEnum>[
    SEND,
    SYNC,
  ];

  static ConnectorEventDtoEventTypeEnum? fromJson(dynamic value) => ConnectorEventDtoEventTypeEnumTypeTransformer().decode(value);

  static List<ConnectorEventDtoEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorEventDtoEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorEventDtoEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorEventDtoEventTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorEventDtoEventTypeEnum].
class ConnectorEventDtoEventTypeEnumTypeTransformer {
  factory ConnectorEventDtoEventTypeEnumTypeTransformer() => _instance ??= const ConnectorEventDtoEventTypeEnumTypeTransformer._();

  const ConnectorEventDtoEventTypeEnumTypeTransformer._();

  String encode(ConnectorEventDtoEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorEventDtoEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorEventDtoEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SEND': return ConnectorEventDtoEventTypeEnum.SEND;
        case r'SYNC': return ConnectorEventDtoEventTypeEnum.SYNC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorEventDtoEventTypeEnumTypeTransformer] instance.
  static ConnectorEventDtoEventTypeEnumTypeTransformer? _instance;
}


