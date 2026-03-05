//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberReleaseProjection {
  /// Returns a new [PhoneNumberReleaseProjection] instance.
  PhoneNumberReleaseProjection({
    required this.userId,
    required this.createdAt,
    required this.phoneCountry,
    this.phoneNumber,
    this.subscriptionSchedule,
    this.planCurrency,
    this.name,
    required this.id,
  });

  String userId;

  DateTime createdAt;

  PhoneNumberReleaseProjectionPhoneCountryEnum phoneCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  PhoneNumberReleaseProjectionSubscriptionScheduleEnum? subscriptionSchedule;

  PhoneNumberReleaseProjectionPlanCurrencyEnum? planCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberReleaseProjection &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.phoneCountry == phoneCountry &&
     other.phoneNumber == phoneNumber &&
     other.subscriptionSchedule == subscriptionSchedule &&
     other.planCurrency == planCurrency &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (createdAt.hashCode) +
    (phoneCountry.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (subscriptionSchedule == null ? 0 : subscriptionSchedule!.hashCode) +
    (planCurrency == null ? 0 : planCurrency!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'PhoneNumberReleaseProjection[userId=$userId, createdAt=$createdAt, phoneCountry=$phoneCountry, phoneNumber=$phoneNumber, subscriptionSchedule=$subscriptionSchedule, planCurrency=$planCurrency, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    if (this.subscriptionSchedule != null) {
      json[r'subscriptionSchedule'] = this.subscriptionSchedule;
    } else {
      json[r'subscriptionSchedule'] = null;
    }
    if (this.planCurrency != null) {
      json[r'planCurrency'] = this.planCurrency;
    } else {
      json[r'planCurrency'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [PhoneNumberReleaseProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberReleaseProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberReleaseProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberReleaseProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberReleaseProjection(
        userId: mapValueOfType<String>(json, r'userId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        phoneCountry: PhoneNumberReleaseProjectionPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        subscriptionSchedule: PhoneNumberReleaseProjectionSubscriptionScheduleEnum.fromJson(json[r'subscriptionSchedule']),
        planCurrency: PhoneNumberReleaseProjectionPlanCurrencyEnum.fromJson(json[r'planCurrency']),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<PhoneNumberReleaseProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberReleaseProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberReleaseProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberReleaseProjection> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberReleaseProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberReleaseProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberReleaseProjection-objects as value to a dart map
  static Map<String, List<PhoneNumberReleaseProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberReleaseProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberReleaseProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'createdAt',
    'phoneCountry',
    'id',
  };
}


class PhoneNumberReleaseProjectionPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberReleaseProjectionPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'US');
  static const GB = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'GB');
  static const AU = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'AU');
  static const CA = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'CA');
  static const EE = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'EE');
  static const HK = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'HK');
  static const PL = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'PL');
  static const PT = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'PT');
  static const NL = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'NL');
  static const IL = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'IL');
  static const FI = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'FI');
  static const SE = PhoneNumberReleaseProjectionPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneNumberReleaseProjectionPhoneCountryEnum].
  static const values = <PhoneNumberReleaseProjectionPhoneCountryEnum>[
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

  static PhoneNumberReleaseProjectionPhoneCountryEnum? fromJson(dynamic value) => PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneNumberReleaseProjectionPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberReleaseProjectionPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberReleaseProjectionPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberReleaseProjectionPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberReleaseProjectionPhoneCountryEnum].
class PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer {
  factory PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer._();

  const PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer._();

  String encode(PhoneNumberReleaseProjectionPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberReleaseProjectionPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberReleaseProjectionPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneNumberReleaseProjectionPhoneCountryEnum.US;
        case r'GB': return PhoneNumberReleaseProjectionPhoneCountryEnum.GB;
        case r'AU': return PhoneNumberReleaseProjectionPhoneCountryEnum.AU;
        case r'CA': return PhoneNumberReleaseProjectionPhoneCountryEnum.CA;
        case r'EE': return PhoneNumberReleaseProjectionPhoneCountryEnum.EE;
        case r'HK': return PhoneNumberReleaseProjectionPhoneCountryEnum.HK;
        case r'PL': return PhoneNumberReleaseProjectionPhoneCountryEnum.PL;
        case r'PT': return PhoneNumberReleaseProjectionPhoneCountryEnum.PT;
        case r'NL': return PhoneNumberReleaseProjectionPhoneCountryEnum.NL;
        case r'IL': return PhoneNumberReleaseProjectionPhoneCountryEnum.IL;
        case r'FI': return PhoneNumberReleaseProjectionPhoneCountryEnum.FI;
        case r'SE': return PhoneNumberReleaseProjectionPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer] instance.
  static PhoneNumberReleaseProjectionPhoneCountryEnumTypeTransformer? _instance;
}



class PhoneNumberReleaseProjectionSubscriptionScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberReleaseProjectionSubscriptionScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTHLY = PhoneNumberReleaseProjectionSubscriptionScheduleEnum._(r'MONTHLY');
  static const YEARLY = PhoneNumberReleaseProjectionSubscriptionScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][PhoneNumberReleaseProjectionSubscriptionScheduleEnum].
  static const values = <PhoneNumberReleaseProjectionSubscriptionScheduleEnum>[
    MONTHLY,
    YEARLY,
  ];

  static PhoneNumberReleaseProjectionSubscriptionScheduleEnum? fromJson(dynamic value) => PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer().decode(value);

  static List<PhoneNumberReleaseProjectionSubscriptionScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberReleaseProjectionSubscriptionScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberReleaseProjectionSubscriptionScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberReleaseProjectionSubscriptionScheduleEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberReleaseProjectionSubscriptionScheduleEnum].
class PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer {
  factory PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer() => _instance ??= const PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer._();

  const PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer._();

  String encode(PhoneNumberReleaseProjectionSubscriptionScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberReleaseProjectionSubscriptionScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberReleaseProjectionSubscriptionScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTHLY': return PhoneNumberReleaseProjectionSubscriptionScheduleEnum.MONTHLY;
        case r'YEARLY': return PhoneNumberReleaseProjectionSubscriptionScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer] instance.
  static PhoneNumberReleaseProjectionSubscriptionScheduleEnumTypeTransformer? _instance;
}



class PhoneNumberReleaseProjectionPlanCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberReleaseProjectionPlanCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EUR = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'EUR');
  static const USD = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'USD');
  static const JPY = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'JPY');
  static const GBP = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'GBP');
  static const AUD = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'AUD');
  static const CAD = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'CAD');
  static const CHF = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'CHF');
  static const CNY = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'CNY');
  static const INR = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'INR');
  static const NZD = PhoneNumberReleaseProjectionPlanCurrencyEnum._(r'NZD');

  /// List of all possible values in this [enum][PhoneNumberReleaseProjectionPlanCurrencyEnum].
  static const values = <PhoneNumberReleaseProjectionPlanCurrencyEnum>[
    EUR,
    USD,
    JPY,
    GBP,
    AUD,
    CAD,
    CHF,
    CNY,
    INR,
    NZD,
  ];

  static PhoneNumberReleaseProjectionPlanCurrencyEnum? fromJson(dynamic value) => PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer().decode(value);

  static List<PhoneNumberReleaseProjectionPlanCurrencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberReleaseProjectionPlanCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberReleaseProjectionPlanCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberReleaseProjectionPlanCurrencyEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberReleaseProjectionPlanCurrencyEnum].
class PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer {
  factory PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer() => _instance ??= const PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer._();

  const PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer._();

  String encode(PhoneNumberReleaseProjectionPlanCurrencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberReleaseProjectionPlanCurrencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberReleaseProjectionPlanCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EUR': return PhoneNumberReleaseProjectionPlanCurrencyEnum.EUR;
        case r'USD': return PhoneNumberReleaseProjectionPlanCurrencyEnum.USD;
        case r'JPY': return PhoneNumberReleaseProjectionPlanCurrencyEnum.JPY;
        case r'GBP': return PhoneNumberReleaseProjectionPlanCurrencyEnum.GBP;
        case r'AUD': return PhoneNumberReleaseProjectionPlanCurrencyEnum.AUD;
        case r'CAD': return PhoneNumberReleaseProjectionPlanCurrencyEnum.CAD;
        case r'CHF': return PhoneNumberReleaseProjectionPlanCurrencyEnum.CHF;
        case r'CNY': return PhoneNumberReleaseProjectionPlanCurrencyEnum.CNY;
        case r'INR': return PhoneNumberReleaseProjectionPlanCurrencyEnum.INR;
        case r'NZD': return PhoneNumberReleaseProjectionPlanCurrencyEnum.NZD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer] instance.
  static PhoneNumberReleaseProjectionPlanCurrencyEnumTypeTransformer? _instance;
}


