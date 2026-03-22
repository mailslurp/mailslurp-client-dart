//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityFailurePhoneDimensionHotspotDto {
  /// Returns a new [DeliverabilityFailurePhoneDimensionHotspotDto] instance.
  DeliverabilityFailurePhoneDimensionHotspotDto({
    this.phoneCountry,
    this.phoneVariant,
    required this.failedRunCount,
    required this.totalRunCount,
    required this.failureRatePercentage,
  });

  DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum? phoneCountry;

  DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum? phoneVariant;

  int failedRunCount;

  int totalRunCount;

  double failureRatePercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityFailurePhoneDimensionHotspotDto &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.failedRunCount == failedRunCount &&
     other.totalRunCount == totalRunCount &&
     other.failureRatePercentage == failureRatePercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountry == null ? 0 : phoneCountry!.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (failedRunCount.hashCode) +
    (totalRunCount.hashCode) +
    (failureRatePercentage.hashCode);

  @override
  String toString() => 'DeliverabilityFailurePhoneDimensionHotspotDto[phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, failedRunCount=$failedRunCount, totalRunCount=$totalRunCount, failureRatePercentage=$failureRatePercentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.phoneCountry != null) {
      json[r'phoneCountry'] = this.phoneCountry;
    } else {
      json[r'phoneCountry'] = null;
    }
    if (this.phoneVariant != null) {
      json[r'phoneVariant'] = this.phoneVariant;
    } else {
      json[r'phoneVariant'] = null;
    }
      json[r'failedRunCount'] = this.failedRunCount;
      json[r'totalRunCount'] = this.totalRunCount;
      json[r'failureRatePercentage'] = this.failureRatePercentage;
    return json;
  }

  /// Returns a new [DeliverabilityFailurePhoneDimensionHotspotDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityFailurePhoneDimensionHotspotDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityFailurePhoneDimensionHotspotDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityFailurePhoneDimensionHotspotDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityFailurePhoneDimensionHotspotDto(
        phoneCountry: DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        phoneVariant: DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        failedRunCount: mapValueOfType<int>(json, r'failedRunCount')!,
        totalRunCount: mapValueOfType<int>(json, r'totalRunCount')!,
        failureRatePercentage: mapValueOfType<double>(json, r'failureRatePercentage')!,
      );
    }
    return null;
  }

  static List<DeliverabilityFailurePhoneDimensionHotspotDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailurePhoneDimensionHotspotDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailurePhoneDimensionHotspotDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityFailurePhoneDimensionHotspotDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityFailurePhoneDimensionHotspotDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityFailurePhoneDimensionHotspotDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityFailurePhoneDimensionHotspotDto-objects as value to a dart map
  static Map<String, List<DeliverabilityFailurePhoneDimensionHotspotDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityFailurePhoneDimensionHotspotDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityFailurePhoneDimensionHotspotDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'failedRunCount',
    'totalRunCount',
    'failureRatePercentage',
  };
}


class DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'US');
  static const GB = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'GB');
  static const AU = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'AU');
  static const CA = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'CA');
  static const EE = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'EE');
  static const HK = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'HK');
  static const PL = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'PL');
  static const PT = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'PT');
  static const NL = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'NL');
  static const IL = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'IL');
  static const FI = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'FI');
  static const SE = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum].
  static const values = <DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum>[
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

  static DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum? fromJson(dynamic value) => DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum].
class DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer {
  factory DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer() => _instance ??= const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer._();

  const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer._();

  String encode(DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.US;
        case r'GB': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.GB;
        case r'AU': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.AU;
        case r'CA': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.CA;
        case r'EE': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.EE;
        case r'HK': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.HK;
        case r'PL': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.PL;
        case r'PT': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.PT;
        case r'NL': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.NL;
        case r'IL': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.IL;
        case r'FI': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.FI;
        case r'SE': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer] instance.
  static DeliverabilityFailurePhoneDimensionHotspotDtoPhoneCountryEnumTypeTransformer? _instance;
}



class DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum].
  static const values = <DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum? fromJson(dynamic value) => DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum].
class DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer {
  factory DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer() => _instance ??= const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer._();

  const DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer._();

  String encode(DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.LOCAL;
        case r'MOBILE': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer] instance.
  static DeliverabilityFailurePhoneDimensionHotspotDtoPhoneVariantEnumTypeTransformer? _instance;
}


