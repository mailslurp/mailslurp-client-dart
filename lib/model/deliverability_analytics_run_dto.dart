//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityAnalyticsRunDto {
  /// Returns a new [DeliverabilityAnalyticsRunDto] instance.
  DeliverabilityAnalyticsRunDto({
    required this.id,
    this.name,
    required this.scope,
    required this.status,
    required this.createdAt,
    required this.startAt,
    this.completedAt,
    required this.totalEntities,
    required this.matchedEntities,
    required this.unmatchedEntities,
    required this.completionPercentage,
    this.successThresholdPercent,
    required this.thresholdStatus,
  });

  String id;

  String? name;

  DeliverabilityAnalyticsRunDtoScopeEnum scope;

  DeliverabilityAnalyticsRunDtoStatusEnum status;

  DateTime createdAt;

  DateTime startAt;

  DateTime? completedAt;

  int totalEntities;

  int matchedEntities;

  int unmatchedEntities;

  double completionPercentage;

  double? successThresholdPercent;

  DeliverabilityAnalyticsRunDtoThresholdStatusEnum thresholdStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityAnalyticsRunDto &&
     other.id == id &&
     other.name == name &&
     other.scope == scope &&
     other.status == status &&
     other.createdAt == createdAt &&
     other.startAt == startAt &&
     other.completedAt == completedAt &&
     other.totalEntities == totalEntities &&
     other.matchedEntities == matchedEntities &&
     other.unmatchedEntities == unmatchedEntities &&
     other.completionPercentage == completionPercentage &&
     other.successThresholdPercent == successThresholdPercent &&
     other.thresholdStatus == thresholdStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scope.hashCode) +
    (status.hashCode) +
    (createdAt.hashCode) +
    (startAt.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (totalEntities.hashCode) +
    (matchedEntities.hashCode) +
    (unmatchedEntities.hashCode) +
    (completionPercentage.hashCode) +
    (successThresholdPercent == null ? 0 : successThresholdPercent!.hashCode) +
    (thresholdStatus.hashCode);

  @override
  String toString() => 'DeliverabilityAnalyticsRunDto[id=$id, name=$name, scope=$scope, status=$status, createdAt=$createdAt, startAt=$startAt, completedAt=$completedAt, totalEntities=$totalEntities, matchedEntities=$matchedEntities, unmatchedEntities=$unmatchedEntities, completionPercentage=$completionPercentage, successThresholdPercent=$successThresholdPercent, thresholdStatus=$thresholdStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'status'] = this.status;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'startAt'] = this.startAt.toUtc().toIso8601String();
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'totalEntities'] = this.totalEntities;
      json[r'matchedEntities'] = this.matchedEntities;
      json[r'unmatchedEntities'] = this.unmatchedEntities;
      json[r'completionPercentage'] = this.completionPercentage;
    if (this.successThresholdPercent != null) {
      json[r'successThresholdPercent'] = this.successThresholdPercent;
    } else {
      json[r'successThresholdPercent'] = null;
    }
      json[r'thresholdStatus'] = this.thresholdStatus;
    return json;
  }

  /// Returns a new [DeliverabilityAnalyticsRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityAnalyticsRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityAnalyticsRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityAnalyticsRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityAnalyticsRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        scope: DeliverabilityAnalyticsRunDtoScopeEnum.fromJson(json[r'scope'])!,
        status: DeliverabilityAnalyticsRunDtoStatusEnum.fromJson(json[r'status'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        startAt: mapDateTime(json, r'startAt', '')!,
        completedAt: mapDateTime(json, r'completedAt', ''),
        totalEntities: mapValueOfType<int>(json, r'totalEntities')!,
        matchedEntities: mapValueOfType<int>(json, r'matchedEntities')!,
        unmatchedEntities: mapValueOfType<int>(json, r'unmatchedEntities')!,
        completionPercentage: mapValueOfType<double>(json, r'completionPercentage')!,
        successThresholdPercent: mapValueOfType<double>(json, r'successThresholdPercent'),
        thresholdStatus: DeliverabilityAnalyticsRunDtoThresholdStatusEnum.fromJson(json[r'thresholdStatus'])!,
      );
    }
    return null;
  }

  static List<DeliverabilityAnalyticsRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityAnalyticsRunDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityAnalyticsRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityAnalyticsRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityAnalyticsRunDto-objects as value to a dart map
  static Map<String, List<DeliverabilityAnalyticsRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityAnalyticsRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityAnalyticsRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scope',
    'status',
    'createdAt',
    'startAt',
    'totalEntities',
    'matchedEntities',
    'unmatchedEntities',
    'completionPercentage',
    'thresholdStatus',
  };
}


class DeliverabilityAnalyticsRunDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityAnalyticsRunDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilityAnalyticsRunDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilityAnalyticsRunDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilityAnalyticsRunDtoScopeEnum].
  static const values = <DeliverabilityAnalyticsRunDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilityAnalyticsRunDtoScopeEnum? fromJson(dynamic value) => DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilityAnalyticsRunDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsRunDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsRunDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityAnalyticsRunDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityAnalyticsRunDtoScopeEnum].
class DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer {
  factory DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer._();

  const DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilityAnalyticsRunDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityAnalyticsRunDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityAnalyticsRunDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilityAnalyticsRunDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilityAnalyticsRunDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer] instance.
  static DeliverabilityAnalyticsRunDtoScopeEnumTypeTransformer? _instance;
}



class DeliverabilityAnalyticsRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityAnalyticsRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = DeliverabilityAnalyticsRunDtoStatusEnum._(r'CREATED');
  static const SCHEDULED = DeliverabilityAnalyticsRunDtoStatusEnum._(r'SCHEDULED');
  static const RUNNING = DeliverabilityAnalyticsRunDtoStatusEnum._(r'RUNNING');
  static const PAUSED = DeliverabilityAnalyticsRunDtoStatusEnum._(r'PAUSED');
  static const STOPPED = DeliverabilityAnalyticsRunDtoStatusEnum._(r'STOPPED');
  static const COMPLETE = DeliverabilityAnalyticsRunDtoStatusEnum._(r'COMPLETE');
  static const FAILED = DeliverabilityAnalyticsRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DeliverabilityAnalyticsRunDtoStatusEnum].
  static const values = <DeliverabilityAnalyticsRunDtoStatusEnum>[
    CREATED,
    SCHEDULED,
    RUNNING,
    PAUSED,
    STOPPED,
    COMPLETE,
    FAILED,
  ];

  static DeliverabilityAnalyticsRunDtoStatusEnum? fromJson(dynamic value) => DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer().decode(value);

  static List<DeliverabilityAnalyticsRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityAnalyticsRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityAnalyticsRunDtoStatusEnum].
class DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer {
  factory DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer() => _instance ??= const DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer._();

  const DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer._();

  String encode(DeliverabilityAnalyticsRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityAnalyticsRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityAnalyticsRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATED': return DeliverabilityAnalyticsRunDtoStatusEnum.CREATED;
        case r'SCHEDULED': return DeliverabilityAnalyticsRunDtoStatusEnum.SCHEDULED;
        case r'RUNNING': return DeliverabilityAnalyticsRunDtoStatusEnum.RUNNING;
        case r'PAUSED': return DeliverabilityAnalyticsRunDtoStatusEnum.PAUSED;
        case r'STOPPED': return DeliverabilityAnalyticsRunDtoStatusEnum.STOPPED;
        case r'COMPLETE': return DeliverabilityAnalyticsRunDtoStatusEnum.COMPLETE;
        case r'FAILED': return DeliverabilityAnalyticsRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer] instance.
  static DeliverabilityAnalyticsRunDtoStatusEnumTypeTransformer? _instance;
}



class DeliverabilityAnalyticsRunDtoThresholdStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityAnalyticsRunDtoThresholdStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_CONFIGURED = DeliverabilityAnalyticsRunDtoThresholdStatusEnum._(r'NOT_CONFIGURED');
  static const PASSING = DeliverabilityAnalyticsRunDtoThresholdStatusEnum._(r'PASSING');
  static const FAILING = DeliverabilityAnalyticsRunDtoThresholdStatusEnum._(r'FAILING');

  /// List of all possible values in this [enum][DeliverabilityAnalyticsRunDtoThresholdStatusEnum].
  static const values = <DeliverabilityAnalyticsRunDtoThresholdStatusEnum>[
    NOT_CONFIGURED,
    PASSING,
    FAILING,
  ];

  static DeliverabilityAnalyticsRunDtoThresholdStatusEnum? fromJson(dynamic value) => DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer().decode(value);

  static List<DeliverabilityAnalyticsRunDtoThresholdStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsRunDtoThresholdStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsRunDtoThresholdStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityAnalyticsRunDtoThresholdStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityAnalyticsRunDtoThresholdStatusEnum].
class DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer {
  factory DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer() => _instance ??= const DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer._();

  const DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer._();

  String encode(DeliverabilityAnalyticsRunDtoThresholdStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityAnalyticsRunDtoThresholdStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityAnalyticsRunDtoThresholdStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_CONFIGURED': return DeliverabilityAnalyticsRunDtoThresholdStatusEnum.NOT_CONFIGURED;
        case r'PASSING': return DeliverabilityAnalyticsRunDtoThresholdStatusEnum.PASSING;
        case r'FAILING': return DeliverabilityAnalyticsRunDtoThresholdStatusEnum.FAILING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer] instance.
  static DeliverabilityAnalyticsRunDtoThresholdStatusEnumTypeTransformer? _instance;
}


