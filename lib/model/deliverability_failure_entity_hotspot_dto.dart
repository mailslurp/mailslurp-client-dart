//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityFailureEntityHotspotDto {
  /// Returns a new [DeliverabilityFailureEntityHotspotDto] instance.
  DeliverabilityFailureEntityHotspotDto({
    required this.entityId,
    required this.entityLabel,
    required this.scope,
    this.phoneCountry,
    this.phoneVariant,
    required this.failedRunCount,
    required this.totalRunCount,
    required this.failureRatePercentage,
  });

  String entityId;

  String entityLabel;

  DeliverabilityFailureEntityHotspotDtoScopeEnum scope;

  DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum? phoneCountry;

  DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum? phoneVariant;

  int failedRunCount;

  int totalRunCount;

  double failureRatePercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityFailureEntityHotspotDto &&
     other.entityId == entityId &&
     other.entityLabel == entityLabel &&
     other.scope == scope &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.failedRunCount == failedRunCount &&
     other.totalRunCount == totalRunCount &&
     other.failureRatePercentage == failureRatePercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId.hashCode) +
    (entityLabel.hashCode) +
    (scope.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry!.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (failedRunCount.hashCode) +
    (totalRunCount.hashCode) +
    (failureRatePercentage.hashCode);

  @override
  String toString() => 'DeliverabilityFailureEntityHotspotDto[entityId=$entityId, entityLabel=$entityLabel, scope=$scope, phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, failedRunCount=$failedRunCount, totalRunCount=$totalRunCount, failureRatePercentage=$failureRatePercentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityId'] = this.entityId;
      json[r'entityLabel'] = this.entityLabel;
      json[r'scope'] = this.scope;
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

  /// Returns a new [DeliverabilityFailureEntityHotspotDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityFailureEntityHotspotDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityFailureEntityHotspotDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityFailureEntityHotspotDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityFailureEntityHotspotDto(
        entityId: mapValueOfType<String>(json, r'entityId')!,
        entityLabel: mapValueOfType<String>(json, r'entityLabel')!,
        scope: DeliverabilityFailureEntityHotspotDtoScopeEnum.fromJson(json[r'scope'])!,
        phoneCountry: DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        phoneVariant: DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        failedRunCount: mapValueOfType<int>(json, r'failedRunCount')!,
        totalRunCount: mapValueOfType<int>(json, r'totalRunCount')!,
        failureRatePercentage: mapValueOfType<double>(json, r'failureRatePercentage')!,
      );
    }
    return null;
  }

  static List<DeliverabilityFailureEntityHotspotDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureEntityHotspotDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureEntityHotspotDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityFailureEntityHotspotDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityFailureEntityHotspotDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityFailureEntityHotspotDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityFailureEntityHotspotDto-objects as value to a dart map
  static Map<String, List<DeliverabilityFailureEntityHotspotDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityFailureEntityHotspotDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityFailureEntityHotspotDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entityId',
    'entityLabel',
    'scope',
    'failedRunCount',
    'totalRunCount',
    'failureRatePercentage',
  };
}


class DeliverabilityFailureEntityHotspotDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailureEntityHotspotDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilityFailureEntityHotspotDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilityFailureEntityHotspotDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilityFailureEntityHotspotDtoScopeEnum].
  static const values = <DeliverabilityFailureEntityHotspotDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilityFailureEntityHotspotDtoScopeEnum? fromJson(dynamic value) => DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailureEntityHotspotDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureEntityHotspotDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureEntityHotspotDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailureEntityHotspotDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailureEntityHotspotDtoScopeEnum].
class DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer {
  factory DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer._();

  const DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilityFailureEntityHotspotDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailureEntityHotspotDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailureEntityHotspotDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilityFailureEntityHotspotDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilityFailureEntityHotspotDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer] instance.
  static DeliverabilityFailureEntityHotspotDtoScopeEnumTypeTransformer? _instance;
}



class DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'US');
  static const GB = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'GB');
  static const AU = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'AU');
  static const CA = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'CA');
  static const EE = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'EE');
  static const HK = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'HK');
  static const PL = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'PL');
  static const PT = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'PT');
  static const NL = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'NL');
  static const IL = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'IL');
  static const FI = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'FI');
  static const SE = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum].
  static const values = <DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum>[
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

  static DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum? fromJson(dynamic value) => DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum].
class DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer {
  factory DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer() => _instance ??= const DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer._();

  const DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer._();

  String encode(DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.US;
        case r'GB': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.GB;
        case r'AU': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.AU;
        case r'CA': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.CA;
        case r'EE': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.EE;
        case r'HK': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.HK;
        case r'PL': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.PL;
        case r'PT': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.PT;
        case r'NL': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.NL;
        case r'IL': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.IL;
        case r'FI': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.FI;
        case r'SE': return DeliverabilityFailureEntityHotspotDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer] instance.
  static DeliverabilityFailureEntityHotspotDtoPhoneCountryEnumTypeTransformer? _instance;
}



class DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum].
  static const values = <DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum? fromJson(dynamic value) => DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum].
class DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer {
  factory DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer() => _instance ??= const DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer._();

  const DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer._();

  String encode(DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.LOCAL;
        case r'MOBILE': return DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return DeliverabilityFailureEntityHotspotDtoPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer] instance.
  static DeliverabilityFailureEntityHotspotDtoPhoneVariantEnumTypeTransformer? _instance;
}


