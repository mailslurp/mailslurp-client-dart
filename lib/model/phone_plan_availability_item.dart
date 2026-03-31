//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePlanAvailabilityItem {
  /// Returns a new [PhonePlanAvailabilityItem] instance.
  PhonePlanAvailabilityItem({
    required this.phoneCountry,
    required this.availabilityStatus,
    this.variants = const [],
  });

  PhonePlanAvailabilityItemPhoneCountryEnum phoneCountry;

  PhonePlanAvailabilityItemAvailabilityStatusEnum availabilityStatus;

  List<PhonePlanAvailabilityItemVariantsEnum> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePlanAvailabilityItem &&
     other.phoneCountry == phoneCountry &&
     other.availabilityStatus == availabilityStatus &&
     other.variants == variants;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountry.hashCode) +
    (availabilityStatus.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'PhonePlanAvailabilityItem[phoneCountry=$phoneCountry, availabilityStatus=$availabilityStatus, variants=$variants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneCountry'] = this.phoneCountry;
      json[r'availabilityStatus'] = this.availabilityStatus;
      json[r'variants'] = this.variants;
    return json;
  }

  /// Returns a new [PhonePlanAvailabilityItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePlanAvailabilityItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePlanAvailabilityItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePlanAvailabilityItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePlanAvailabilityItem(
        phoneCountry: PhonePlanAvailabilityItemPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        availabilityStatus: PhonePlanAvailabilityItemAvailabilityStatusEnum.fromJson(json[r'availabilityStatus'])!,
        variants: PhonePlanAvailabilityItemVariantsEnum.listFromJson(json[r'variants']),
      );
    }
    return null;
  }

  static List<PhonePlanAvailabilityItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailabilityItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailabilityItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePlanAvailabilityItem> mapFromJson(dynamic json) {
    final map = <String, PhonePlanAvailabilityItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePlanAvailabilityItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePlanAvailabilityItem-objects as value to a dart map
  static Map<String, List<PhonePlanAvailabilityItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePlanAvailabilityItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhonePlanAvailabilityItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountry',
    'availabilityStatus',
  };
}


class PhonePlanAvailabilityItemPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePlanAvailabilityItemPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhonePlanAvailabilityItemPhoneCountryEnum._(r'US');
  static const GB = PhonePlanAvailabilityItemPhoneCountryEnum._(r'GB');
  static const AU = PhonePlanAvailabilityItemPhoneCountryEnum._(r'AU');
  static const CA = PhonePlanAvailabilityItemPhoneCountryEnum._(r'CA');
  static const EE = PhonePlanAvailabilityItemPhoneCountryEnum._(r'EE');
  static const HK = PhonePlanAvailabilityItemPhoneCountryEnum._(r'HK');
  static const PL = PhonePlanAvailabilityItemPhoneCountryEnum._(r'PL');
  static const PT = PhonePlanAvailabilityItemPhoneCountryEnum._(r'PT');
  static const NL = PhonePlanAvailabilityItemPhoneCountryEnum._(r'NL');
  static const IL = PhonePlanAvailabilityItemPhoneCountryEnum._(r'IL');
  static const FI = PhonePlanAvailabilityItemPhoneCountryEnum._(r'FI');
  static const SE = PhonePlanAvailabilityItemPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhonePlanAvailabilityItemPhoneCountryEnum].
  static const values = <PhonePlanAvailabilityItemPhoneCountryEnum>[
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

  static PhonePlanAvailabilityItemPhoneCountryEnum? fromJson(dynamic value) => PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhonePlanAvailabilityItemPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailabilityItemPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailabilityItemPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePlanAvailabilityItemPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhonePlanAvailabilityItemPhoneCountryEnum].
class PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer {
  factory PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer() => _instance ??= const PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer._();

  const PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer._();

  String encode(PhonePlanAvailabilityItemPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanAvailabilityItemPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanAvailabilityItemPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhonePlanAvailabilityItemPhoneCountryEnum.US;
        case r'GB': return PhonePlanAvailabilityItemPhoneCountryEnum.GB;
        case r'AU': return PhonePlanAvailabilityItemPhoneCountryEnum.AU;
        case r'CA': return PhonePlanAvailabilityItemPhoneCountryEnum.CA;
        case r'EE': return PhonePlanAvailabilityItemPhoneCountryEnum.EE;
        case r'HK': return PhonePlanAvailabilityItemPhoneCountryEnum.HK;
        case r'PL': return PhonePlanAvailabilityItemPhoneCountryEnum.PL;
        case r'PT': return PhonePlanAvailabilityItemPhoneCountryEnum.PT;
        case r'NL': return PhonePlanAvailabilityItemPhoneCountryEnum.NL;
        case r'IL': return PhonePlanAvailabilityItemPhoneCountryEnum.IL;
        case r'FI': return PhonePlanAvailabilityItemPhoneCountryEnum.FI;
        case r'SE': return PhonePlanAvailabilityItemPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer] instance.
  static PhonePlanAvailabilityItemPhoneCountryEnumTypeTransformer? _instance;
}



class PhonePlanAvailabilityItemAvailabilityStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePlanAvailabilityItemAvailabilityStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = PhonePlanAvailabilityItemAvailabilityStatusEnum._(r'AVAILABLE');
  static const NON_MATCHING_SUBSCRIPTION_CURRENCY = PhonePlanAvailabilityItemAvailabilityStatusEnum._(r'NON_MATCHING_SUBSCRIPTION_CURRENCY');
  static const NON_MATCHING_SUBSCRIPTION_TYPE = PhonePlanAvailabilityItemAvailabilityStatusEnum._(r'NON_MATCHING_SUBSCRIPTION_TYPE');
  static const ALREADY_ASSIGNED = PhonePlanAvailabilityItemAvailabilityStatusEnum._(r'ALREADY_ASSIGNED');

  /// List of all possible values in this [enum][PhonePlanAvailabilityItemAvailabilityStatusEnum].
  static const values = <PhonePlanAvailabilityItemAvailabilityStatusEnum>[
    AVAILABLE,
    NON_MATCHING_SUBSCRIPTION_CURRENCY,
    NON_MATCHING_SUBSCRIPTION_TYPE,
    ALREADY_ASSIGNED,
  ];

  static PhonePlanAvailabilityItemAvailabilityStatusEnum? fromJson(dynamic value) => PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer().decode(value);

  static List<PhonePlanAvailabilityItemAvailabilityStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailabilityItemAvailabilityStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailabilityItemAvailabilityStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePlanAvailabilityItemAvailabilityStatusEnum] to String,
/// and [decode] dynamic data back to [PhonePlanAvailabilityItemAvailabilityStatusEnum].
class PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer {
  factory PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer() => _instance ??= const PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer._();

  const PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer._();

  String encode(PhonePlanAvailabilityItemAvailabilityStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanAvailabilityItemAvailabilityStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanAvailabilityItemAvailabilityStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return PhonePlanAvailabilityItemAvailabilityStatusEnum.AVAILABLE;
        case r'NON_MATCHING_SUBSCRIPTION_CURRENCY': return PhonePlanAvailabilityItemAvailabilityStatusEnum.NON_MATCHING_SUBSCRIPTION_CURRENCY;
        case r'NON_MATCHING_SUBSCRIPTION_TYPE': return PhonePlanAvailabilityItemAvailabilityStatusEnum.NON_MATCHING_SUBSCRIPTION_TYPE;
        case r'ALREADY_ASSIGNED': return PhonePlanAvailabilityItemAvailabilityStatusEnum.ALREADY_ASSIGNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer] instance.
  static PhonePlanAvailabilityItemAvailabilityStatusEnumTypeTransformer? _instance;
}



class PhonePlanAvailabilityItemVariantsEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePlanAvailabilityItemVariantsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = PhonePlanAvailabilityItemVariantsEnum._(r'LOCAL');
  static const MOBILE = PhonePlanAvailabilityItemVariantsEnum._(r'MOBILE');
  static const TOLL_FREE = PhonePlanAvailabilityItemVariantsEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][PhonePlanAvailabilityItemVariantsEnum].
  static const values = <PhonePlanAvailabilityItemVariantsEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static PhonePlanAvailabilityItemVariantsEnum? fromJson(dynamic value) => PhonePlanAvailabilityItemVariantsEnumTypeTransformer().decode(value);

  static List<PhonePlanAvailabilityItemVariantsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailabilityItemVariantsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailabilityItemVariantsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePlanAvailabilityItemVariantsEnum] to String,
/// and [decode] dynamic data back to [PhonePlanAvailabilityItemVariantsEnum].
class PhonePlanAvailabilityItemVariantsEnumTypeTransformer {
  factory PhonePlanAvailabilityItemVariantsEnumTypeTransformer() => _instance ??= const PhonePlanAvailabilityItemVariantsEnumTypeTransformer._();

  const PhonePlanAvailabilityItemVariantsEnumTypeTransformer._();

  String encode(PhonePlanAvailabilityItemVariantsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanAvailabilityItemVariantsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanAvailabilityItemVariantsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return PhonePlanAvailabilityItemVariantsEnum.LOCAL;
        case r'MOBILE': return PhonePlanAvailabilityItemVariantsEnum.MOBILE;
        case r'TOLL_FREE': return PhonePlanAvailabilityItemVariantsEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePlanAvailabilityItemVariantsEnumTypeTransformer] instance.
  static PhonePlanAvailabilityItemVariantsEnumTypeTransformer? _instance;
}


