//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlanSummaryDto {
  /// Returns a new [PlanSummaryDto] instance.
  PlanSummaryDto({
    this.subscriptionSchedule,
    required this.phoneCountry,
  });

  PlanSummaryDtoSubscriptionScheduleEnum? subscriptionSchedule;

  PlanSummaryDtoPhoneCountryEnum phoneCountry;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanSummaryDto &&
     other.subscriptionSchedule == subscriptionSchedule &&
     other.phoneCountry == phoneCountry;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subscriptionSchedule == null ? 0 : subscriptionSchedule!.hashCode) +
    (phoneCountry.hashCode);

  @override
  String toString() => 'PlanSummaryDto[subscriptionSchedule=$subscriptionSchedule, phoneCountry=$phoneCountry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subscriptionSchedule != null) {
      json[r'subscriptionSchedule'] = this.subscriptionSchedule;
    } else {
      json[r'subscriptionSchedule'] = null;
    }
      json[r'phoneCountry'] = this.phoneCountry;
    return json;
  }

  /// Returns a new [PlanSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanSummaryDto(
        subscriptionSchedule: PlanSummaryDtoSubscriptionScheduleEnum.fromJson(json[r'subscriptionSchedule']),
        phoneCountry: PlanSummaryDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
      );
    }
    return null;
  }

  static List<PlanSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanSummaryDto> mapFromJson(dynamic json) {
    final map = <String, PlanSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanSummaryDto-objects as value to a dart map
  static Map<String, List<PlanSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountry',
  };
}


class PlanSummaryDtoSubscriptionScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const PlanSummaryDtoSubscriptionScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTHLY = PlanSummaryDtoSubscriptionScheduleEnum._(r'MONTHLY');
  static const YEARLY = PlanSummaryDtoSubscriptionScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][PlanSummaryDtoSubscriptionScheduleEnum].
  static const values = <PlanSummaryDtoSubscriptionScheduleEnum>[
    MONTHLY,
    YEARLY,
  ];

  static PlanSummaryDtoSubscriptionScheduleEnum? fromJson(dynamic value) => PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer().decode(value);

  static List<PlanSummaryDtoSubscriptionScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanSummaryDtoSubscriptionScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanSummaryDtoSubscriptionScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlanSummaryDtoSubscriptionScheduleEnum] to String,
/// and [decode] dynamic data back to [PlanSummaryDtoSubscriptionScheduleEnum].
class PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer {
  factory PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer() => _instance ??= const PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer._();

  const PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer._();

  String encode(PlanSummaryDtoSubscriptionScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlanSummaryDtoSubscriptionScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlanSummaryDtoSubscriptionScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTHLY': return PlanSummaryDtoSubscriptionScheduleEnum.MONTHLY;
        case r'YEARLY': return PlanSummaryDtoSubscriptionScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer] instance.
  static PlanSummaryDtoSubscriptionScheduleEnumTypeTransformer? _instance;
}



class PlanSummaryDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PlanSummaryDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PlanSummaryDtoPhoneCountryEnum._(r'US');
  static const GB = PlanSummaryDtoPhoneCountryEnum._(r'GB');
  static const AU = PlanSummaryDtoPhoneCountryEnum._(r'AU');
  static const CA = PlanSummaryDtoPhoneCountryEnum._(r'CA');
  static const EE = PlanSummaryDtoPhoneCountryEnum._(r'EE');
  static const HK = PlanSummaryDtoPhoneCountryEnum._(r'HK');
  static const PL = PlanSummaryDtoPhoneCountryEnum._(r'PL');
  static const PT = PlanSummaryDtoPhoneCountryEnum._(r'PT');
  static const NL = PlanSummaryDtoPhoneCountryEnum._(r'NL');
  static const IL = PlanSummaryDtoPhoneCountryEnum._(r'IL');
  static const FI = PlanSummaryDtoPhoneCountryEnum._(r'FI');
  static const SE = PlanSummaryDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PlanSummaryDtoPhoneCountryEnum].
  static const values = <PlanSummaryDtoPhoneCountryEnum>[
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

  static PlanSummaryDtoPhoneCountryEnum? fromJson(dynamic value) => PlanSummaryDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PlanSummaryDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanSummaryDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanSummaryDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlanSummaryDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PlanSummaryDtoPhoneCountryEnum].
class PlanSummaryDtoPhoneCountryEnumTypeTransformer {
  factory PlanSummaryDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PlanSummaryDtoPhoneCountryEnumTypeTransformer._();

  const PlanSummaryDtoPhoneCountryEnumTypeTransformer._();

  String encode(PlanSummaryDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlanSummaryDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlanSummaryDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PlanSummaryDtoPhoneCountryEnum.US;
        case r'GB': return PlanSummaryDtoPhoneCountryEnum.GB;
        case r'AU': return PlanSummaryDtoPhoneCountryEnum.AU;
        case r'CA': return PlanSummaryDtoPhoneCountryEnum.CA;
        case r'EE': return PlanSummaryDtoPhoneCountryEnum.EE;
        case r'HK': return PlanSummaryDtoPhoneCountryEnum.HK;
        case r'PL': return PlanSummaryDtoPhoneCountryEnum.PL;
        case r'PT': return PlanSummaryDtoPhoneCountryEnum.PT;
        case r'NL': return PlanSummaryDtoPhoneCountryEnum.NL;
        case r'IL': return PlanSummaryDtoPhoneCountryEnum.IL;
        case r'FI': return PlanSummaryDtoPhoneCountryEnum.FI;
        case r'SE': return PlanSummaryDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlanSummaryDtoPhoneCountryEnumTypeTransformer] instance.
  static PlanSummaryDtoPhoneCountryEnumTypeTransformer? _instance;
}


