//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneProvisioningJobDto {
  /// Returns a new [PhoneProvisioningJobDto] instance.
  PhoneProvisioningJobDto({
    required this.id,
    required this.userId,
    required this.phoneCountry,
    this.phoneVariant,
    required this.status,
    required this.requestedCount,
    required this.attemptedCount,
    required this.succeededCount,
    required this.failedCount,
    required this.unavailableCount,
    required this.createdAt,
    required this.updatedAt,
    this.items = const [],
  });

  String id;

  String userId;

  PhoneProvisioningJobDtoPhoneCountryEnum phoneCountry;

  PhoneProvisioningJobDtoPhoneVariantEnum? phoneVariant;

  PhoneProvisioningJobDtoStatusEnum status;

  int requestedCount;

  int attemptedCount;

  int succeededCount;

  int failedCount;

  int unavailableCount;

  DateTime createdAt;

  DateTime updatedAt;

  List<PhoneProvisioningJobItemDto> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneProvisioningJobDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.status == status &&
     other.requestedCount == requestedCount &&
     other.attemptedCount == attemptedCount &&
     other.succeededCount == succeededCount &&
     other.failedCount == failedCount &&
     other.unavailableCount == unavailableCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.items == items;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (phoneCountry.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (status.hashCode) +
    (requestedCount.hashCode) +
    (attemptedCount.hashCode) +
    (succeededCount.hashCode) +
    (failedCount.hashCode) +
    (unavailableCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'PhoneProvisioningJobDto[id=$id, userId=$userId, phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, status=$status, requestedCount=$requestedCount, attemptedCount=$attemptedCount, succeededCount=$succeededCount, failedCount=$failedCount, unavailableCount=$unavailableCount, createdAt=$createdAt, updatedAt=$updatedAt, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.phoneVariant != null) {
      json[r'phoneVariant'] = this.phoneVariant;
    } else {
      json[r'phoneVariant'] = null;
    }
      json[r'status'] = this.status;
      json[r'requestedCount'] = this.requestedCount;
      json[r'attemptedCount'] = this.attemptedCount;
      json[r'succeededCount'] = this.succeededCount;
      json[r'failedCount'] = this.failedCount;
      json[r'unavailableCount'] = this.unavailableCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [PhoneProvisioningJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneProvisioningJobDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneProvisioningJobDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneProvisioningJobDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneProvisioningJobDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneCountry: PhoneProvisioningJobDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneVariant: PhoneProvisioningJobDtoPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        status: PhoneProvisioningJobDtoStatusEnum.fromJson(json[r'status'])!,
        requestedCount: mapValueOfType<int>(json, r'requestedCount')!,
        attemptedCount: mapValueOfType<int>(json, r'attemptedCount')!,
        succeededCount: mapValueOfType<int>(json, r'succeededCount')!,
        failedCount: mapValueOfType<int>(json, r'failedCount')!,
        unavailableCount: mapValueOfType<int>(json, r'unavailableCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        items: PhoneProvisioningJobItemDto.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<PhoneProvisioningJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneProvisioningJobDto> mapFromJson(dynamic json) {
    final map = <String, PhoneProvisioningJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneProvisioningJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneProvisioningJobDto-objects as value to a dart map
  static Map<String, List<PhoneProvisioningJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneProvisioningJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneProvisioningJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'phoneCountry',
    'status',
    'requestedCount',
    'attemptedCount',
    'succeededCount',
    'failedCount',
    'unavailableCount',
    'createdAt',
    'updatedAt',
    'items',
  };
}


class PhoneProvisioningJobDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneProvisioningJobDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneProvisioningJobDtoPhoneCountryEnum._(r'US');
  static const GB = PhoneProvisioningJobDtoPhoneCountryEnum._(r'GB');
  static const AU = PhoneProvisioningJobDtoPhoneCountryEnum._(r'AU');
  static const CA = PhoneProvisioningJobDtoPhoneCountryEnum._(r'CA');
  static const EE = PhoneProvisioningJobDtoPhoneCountryEnum._(r'EE');
  static const HK = PhoneProvisioningJobDtoPhoneCountryEnum._(r'HK');
  static const PL = PhoneProvisioningJobDtoPhoneCountryEnum._(r'PL');
  static const PT = PhoneProvisioningJobDtoPhoneCountryEnum._(r'PT');
  static const NL = PhoneProvisioningJobDtoPhoneCountryEnum._(r'NL');
  static const IL = PhoneProvisioningJobDtoPhoneCountryEnum._(r'IL');
  static const FI = PhoneProvisioningJobDtoPhoneCountryEnum._(r'FI');
  static const SE = PhoneProvisioningJobDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneProvisioningJobDtoPhoneCountryEnum].
  static const values = <PhoneProvisioningJobDtoPhoneCountryEnum>[
    US,
    GB,
    AU,
    CA,
    EE,
    HK,
    PL,
    PT,
    NL,
    IL,
    FI,
    SE,
  ];

  static PhoneProvisioningJobDtoPhoneCountryEnum? fromJson(dynamic value) => PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneProvisioningJobDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneProvisioningJobDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneProvisioningJobDtoPhoneCountryEnum].
class PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer {
  factory PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer._();

  const PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhoneProvisioningJobDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneProvisioningJobDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneProvisioningJobDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneProvisioningJobDtoPhoneCountryEnum.US;
        case r'GB': return PhoneProvisioningJobDtoPhoneCountryEnum.GB;
        case r'AU': return PhoneProvisioningJobDtoPhoneCountryEnum.AU;
        case r'CA': return PhoneProvisioningJobDtoPhoneCountryEnum.CA;
        case r'EE': return PhoneProvisioningJobDtoPhoneCountryEnum.EE;
        case r'HK': return PhoneProvisioningJobDtoPhoneCountryEnum.HK;
        case r'PL': return PhoneProvisioningJobDtoPhoneCountryEnum.PL;
        case r'PT': return PhoneProvisioningJobDtoPhoneCountryEnum.PT;
        case r'NL': return PhoneProvisioningJobDtoPhoneCountryEnum.NL;
        case r'IL': return PhoneProvisioningJobDtoPhoneCountryEnum.IL;
        case r'FI': return PhoneProvisioningJobDtoPhoneCountryEnum.FI;
        case r'SE': return PhoneProvisioningJobDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer] instance.
  static PhoneProvisioningJobDtoPhoneCountryEnumTypeTransformer? _instance;
}



class PhoneProvisioningJobDtoPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneProvisioningJobDtoPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = PhoneProvisioningJobDtoPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = PhoneProvisioningJobDtoPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = PhoneProvisioningJobDtoPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][PhoneProvisioningJobDtoPhoneVariantEnum].
  static const values = <PhoneProvisioningJobDtoPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static PhoneProvisioningJobDtoPhoneVariantEnum? fromJson(dynamic value) => PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer().decode(value);

  static List<PhoneProvisioningJobDtoPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobDtoPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobDtoPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneProvisioningJobDtoPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [PhoneProvisioningJobDtoPhoneVariantEnum].
class PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer {
  factory PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer() => _instance ??= const PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer._();

  const PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer._();

  String encode(PhoneProvisioningJobDtoPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneProvisioningJobDtoPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneProvisioningJobDtoPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return PhoneProvisioningJobDtoPhoneVariantEnum.LOCAL;
        case r'MOBILE': return PhoneProvisioningJobDtoPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return PhoneProvisioningJobDtoPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer] instance.
  static PhoneProvisioningJobDtoPhoneVariantEnumTypeTransformer? _instance;
}



class PhoneProvisioningJobDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneProvisioningJobDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = PhoneProvisioningJobDtoStatusEnum._(r'CREATED');
  static const RUNNING = PhoneProvisioningJobDtoStatusEnum._(r'RUNNING');
  static const COMPLETED = PhoneProvisioningJobDtoStatusEnum._(r'COMPLETED');
  static const PARTIAL = PhoneProvisioningJobDtoStatusEnum._(r'PARTIAL');
  static const FAILED = PhoneProvisioningJobDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][PhoneProvisioningJobDtoStatusEnum].
  static const values = <PhoneProvisioningJobDtoStatusEnum>[
    CREATED,
    RUNNING,
    COMPLETED,
    PARTIAL,
    FAILED,
  ];

  static PhoneProvisioningJobDtoStatusEnum? fromJson(dynamic value) => PhoneProvisioningJobDtoStatusEnumTypeTransformer().decode(value);

  static List<PhoneProvisioningJobDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneProvisioningJobDtoStatusEnum] to String,
/// and [decode] dynamic data back to [PhoneProvisioningJobDtoStatusEnum].
class PhoneProvisioningJobDtoStatusEnumTypeTransformer {
  factory PhoneProvisioningJobDtoStatusEnumTypeTransformer() => _instance ??= const PhoneProvisioningJobDtoStatusEnumTypeTransformer._();

  const PhoneProvisioningJobDtoStatusEnumTypeTransformer._();

  String encode(PhoneProvisioningJobDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneProvisioningJobDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneProvisioningJobDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATED': return PhoneProvisioningJobDtoStatusEnum.CREATED;
        case r'RUNNING': return PhoneProvisioningJobDtoStatusEnum.RUNNING;
        case r'COMPLETED': return PhoneProvisioningJobDtoStatusEnum.COMPLETED;
        case r'PARTIAL': return PhoneProvisioningJobDtoStatusEnum.PARTIAL;
        case r'FAILED': return PhoneProvisioningJobDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneProvisioningJobDtoStatusEnumTypeTransformer] instance.
  static PhoneProvisioningJobDtoStatusEnumTypeTransformer? _instance;
}


