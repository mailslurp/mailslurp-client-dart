//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorEmailVerificationDto {
  /// Returns a new [DomainMonitorEmailVerificationDto] instance.
  DomainMonitorEmailVerificationDto({
    required this.monitorId,
    required this.emailAddress,
    required this.localPart,
    required this.status,
    required this.sampleCount,
    this.lastSample,
    required this.createdAt,
    required this.updatedAt,
  });

  String monitorId;

  String emailAddress;

  String localPart;

  DomainMonitorEmailVerificationDtoStatusEnum status;

  int sampleCount;

  DomainMonitorObservedAuthSampleDto? lastSample;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorEmailVerificationDto &&
     other.monitorId == monitorId &&
     other.emailAddress == emailAddress &&
     other.localPart == localPart &&
     other.status == status &&
     other.sampleCount == sampleCount &&
     other.lastSample == lastSample &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monitorId.hashCode) +
    (emailAddress.hashCode) +
    (localPart.hashCode) +
    (status.hashCode) +
    (sampleCount.hashCode) +
    (lastSample == null ? 0 : lastSample!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DomainMonitorEmailVerificationDto[monitorId=$monitorId, emailAddress=$emailAddress, localPart=$localPart, status=$status, sampleCount=$sampleCount, lastSample=$lastSample, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'monitorId'] = this.monitorId;
      json[r'emailAddress'] = this.emailAddress;
      json[r'localPart'] = this.localPart;
      json[r'status'] = this.status;
      json[r'sampleCount'] = this.sampleCount;
    if (this.lastSample != null) {
      json[r'lastSample'] = this.lastSample;
    } else {
      json[r'lastSample'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainMonitorEmailVerificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorEmailVerificationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorEmailVerificationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorEmailVerificationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorEmailVerificationDto(
        monitorId: mapValueOfType<String>(json, r'monitorId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        localPart: mapValueOfType<String>(json, r'localPart')!,
        status: DomainMonitorEmailVerificationDtoStatusEnum.fromJson(json[r'status'])!,
        sampleCount: mapValueOfType<int>(json, r'sampleCount')!,
        lastSample: DomainMonitorObservedAuthSampleDto.fromJson(json[r'lastSample']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorEmailVerificationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorEmailVerificationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorEmailVerificationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorEmailVerificationDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorEmailVerificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorEmailVerificationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorEmailVerificationDto-objects as value to a dart map
  static Map<String, List<DomainMonitorEmailVerificationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorEmailVerificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorEmailVerificationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'monitorId',
    'emailAddress',
    'localPart',
    'status',
    'sampleCount',
    'createdAt',
    'updatedAt',
  };
}


class DomainMonitorEmailVerificationDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorEmailVerificationDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = DomainMonitorEmailVerificationDtoStatusEnum._(r'PENDING');
  static const COMPLETE = DomainMonitorEmailVerificationDtoStatusEnum._(r'COMPLETE');

  /// List of all possible values in this [enum][DomainMonitorEmailVerificationDtoStatusEnum].
  static const values = <DomainMonitorEmailVerificationDtoStatusEnum>[
    PENDING,
    COMPLETE,
  ];

  static DomainMonitorEmailVerificationDtoStatusEnum? fromJson(dynamic value) => DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorEmailVerificationDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorEmailVerificationDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorEmailVerificationDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorEmailVerificationDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorEmailVerificationDtoStatusEnum].
class DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer {
  factory DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer() => _instance ??= const DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer._();

  const DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer._();

  String encode(DomainMonitorEmailVerificationDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorEmailVerificationDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorEmailVerificationDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return DomainMonitorEmailVerificationDtoStatusEnum.PENDING;
        case r'COMPLETE': return DomainMonitorEmailVerificationDtoStatusEnum.COMPLETE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer] instance.
  static DomainMonitorEmailVerificationDtoStatusEnumTypeTransformer? _instance;
}


