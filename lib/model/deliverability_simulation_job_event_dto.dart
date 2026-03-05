//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobEventDto {
  /// Returns a new [DeliverabilitySimulationJobEventDto] instance.
  DeliverabilitySimulationJobEventDto({
    required this.id,
    required this.eventType,
    this.sendIndex,
    this.entityId,
    this.targetLabel,
    this.expectationName,
    this.attempt,
    this.message,
    this.error,
    required this.createdAt,
  });

  String id;

  DeliverabilitySimulationJobEventDtoEventTypeEnum eventType;

  int? sendIndex;

  String? entityId;

  String? targetLabel;

  String? expectationName;

  int? attempt;

  String? message;

  String? error;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobEventDto &&
     other.id == id &&
     other.eventType == eventType &&
     other.sendIndex == sendIndex &&
     other.entityId == entityId &&
     other.targetLabel == targetLabel &&
     other.expectationName == expectationName &&
     other.attempt == attempt &&
     other.message == message &&
     other.error == error &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (eventType.hashCode) +
    (sendIndex == null ? 0 : sendIndex!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (targetLabel == null ? 0 : targetLabel!.hashCode) +
    (expectationName == null ? 0 : expectationName!.hashCode) +
    (attempt == null ? 0 : attempt!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobEventDto[id=$id, eventType=$eventType, sendIndex=$sendIndex, entityId=$entityId, targetLabel=$targetLabel, expectationName=$expectationName, attempt=$attempt, message=$message, error=$error, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'eventType'] = this.eventType;
    if (this.sendIndex != null) {
      json[r'sendIndex'] = this.sendIndex;
    } else {
      json[r'sendIndex'] = null;
    }
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.targetLabel != null) {
      json[r'targetLabel'] = this.targetLabel;
    } else {
      json[r'targetLabel'] = null;
    }
    if (this.expectationName != null) {
      json[r'expectationName'] = this.expectationName;
    } else {
      json[r'expectationName'] = null;
    }
    if (this.attempt != null) {
      json[r'attempt'] = this.attempt;
    } else {
      json[r'attempt'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobEventDto(
        id: mapValueOfType<String>(json, r'id')!,
        eventType: DeliverabilitySimulationJobEventDtoEventTypeEnum.fromJson(json[r'eventType'])!,
        sendIndex: mapValueOfType<int>(json, r'sendIndex'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        targetLabel: mapValueOfType<String>(json, r'targetLabel'),
        expectationName: mapValueOfType<String>(json, r'expectationName'),
        attempt: mapValueOfType<int>(json, r'attempt'),
        message: mapValueOfType<String>(json, r'message'),
        error: mapValueOfType<String>(json, r'error'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobEventDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobEventDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'eventType',
    'createdAt',
  };
}


class DeliverabilitySimulationJobEventDtoEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilitySimulationJobEventDtoEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const JOB_CREATED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_CREATED');
  static const JOB_STARTED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_STARTED');
  static const JOB_PAUSED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_PAUSED');
  static const JOB_RESUMED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_RESUMED');
  static const JOB_CANCELLED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_CANCELLED');
  static const JOB_COMPLETED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_COMPLETED');
  static const JOB_FAILED = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'JOB_FAILED');
  static const SEND_SUCCESS = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'SEND_SUCCESS');
  static const SEND_FAILURE = DeliverabilitySimulationJobEventDtoEventTypeEnum._(r'SEND_FAILURE');

  /// List of all possible values in this [enum][DeliverabilitySimulationJobEventDtoEventTypeEnum].
  static const values = <DeliverabilitySimulationJobEventDtoEventTypeEnum>[
    JOB_CREATED,
    JOB_STARTED,
    JOB_PAUSED,
    JOB_RESUMED,
    JOB_CANCELLED,
    JOB_COMPLETED,
    JOB_FAILED,
    SEND_SUCCESS,
    SEND_FAILURE,
  ];

  static DeliverabilitySimulationJobEventDtoEventTypeEnum? fromJson(dynamic value) => DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer().decode(value);

  static List<DeliverabilitySimulationJobEventDtoEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobEventDtoEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobEventDtoEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilitySimulationJobEventDtoEventTypeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilitySimulationJobEventDtoEventTypeEnum].
class DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer {
  factory DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer() => _instance ??= const DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer._();

  const DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer._();

  String encode(DeliverabilitySimulationJobEventDtoEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilitySimulationJobEventDtoEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilitySimulationJobEventDtoEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'JOB_CREATED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_CREATED;
        case r'JOB_STARTED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_STARTED;
        case r'JOB_PAUSED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_PAUSED;
        case r'JOB_RESUMED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_RESUMED;
        case r'JOB_CANCELLED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_CANCELLED;
        case r'JOB_COMPLETED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_COMPLETED;
        case r'JOB_FAILED': return DeliverabilitySimulationJobEventDtoEventTypeEnum.JOB_FAILED;
        case r'SEND_SUCCESS': return DeliverabilitySimulationJobEventDtoEventTypeEnum.SEND_SUCCESS;
        case r'SEND_FAILURE': return DeliverabilitySimulationJobEventDtoEventTypeEnum.SEND_FAILURE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer] instance.
  static DeliverabilitySimulationJobEventDtoEventTypeEnumTypeTransformer? _instance;
}


