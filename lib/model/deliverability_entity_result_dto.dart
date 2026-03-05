//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityEntityResultDto {
  /// Returns a new [DeliverabilityEntityResultDto] instance.
  DeliverabilityEntityResultDto({
    required this.entityId,
    required this.entityLabel,
    required this.matched,
    required this.matchedExpectationCount,
    required this.totalExpectationCount,
    this.phoneCountry,
    this.phoneVariant,
    this.evaluatedAt,
    this.expectationResults = const [],
  });

  String entityId;

  String entityLabel;

  bool matched;

  int matchedExpectationCount;

  int totalExpectationCount;

  DeliverabilityEntityResultDtoPhoneCountryEnum? phoneCountry;

  DeliverabilityEntityResultDtoPhoneVariantEnum? phoneVariant;

  DateTime? evaluatedAt;

  List<DeliverabilityExpectationResultDto> expectationResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityEntityResultDto &&
     other.entityId == entityId &&
     other.entityLabel == entityLabel &&
     other.matched == matched &&
     other.matchedExpectationCount == matchedExpectationCount &&
     other.totalExpectationCount == totalExpectationCount &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.evaluatedAt == evaluatedAt &&
     other.expectationResults == expectationResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId.hashCode) +
    (entityLabel.hashCode) +
    (matched.hashCode) +
    (matchedExpectationCount.hashCode) +
    (totalExpectationCount.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry!.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (evaluatedAt == null ? 0 : evaluatedAt!.hashCode) +
    (expectationResults.hashCode);

  @override
  String toString() => 'DeliverabilityEntityResultDto[entityId=$entityId, entityLabel=$entityLabel, matched=$matched, matchedExpectationCount=$matchedExpectationCount, totalExpectationCount=$totalExpectationCount, phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, evaluatedAt=$evaluatedAt, expectationResults=$expectationResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityId'] = this.entityId;
      json[r'entityLabel'] = this.entityLabel;
      json[r'matched'] = this.matched;
      json[r'matchedExpectationCount'] = this.matchedExpectationCount;
      json[r'totalExpectationCount'] = this.totalExpectationCount;
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
    if (this.evaluatedAt != null) {
      json[r'evaluatedAt'] = this.evaluatedAt!.toUtc().toIso8601String();
    } else {
      json[r'evaluatedAt'] = null;
    }
      json[r'expectationResults'] = this.expectationResults;
    return json;
  }

  /// Returns a new [DeliverabilityEntityResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityEntityResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityEntityResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityEntityResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityEntityResultDto(
        entityId: mapValueOfType<String>(json, r'entityId')!,
        entityLabel: mapValueOfType<String>(json, r'entityLabel')!,
        matched: mapValueOfType<bool>(json, r'matched')!,
        matchedExpectationCount: mapValueOfType<int>(json, r'matchedExpectationCount')!,
        totalExpectationCount: mapValueOfType<int>(json, r'totalExpectationCount')!,
        phoneCountry: DeliverabilityEntityResultDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        phoneVariant: DeliverabilityEntityResultDtoPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        evaluatedAt: mapDateTime(json, r'evaluatedAt', ''),
        expectationResults: DeliverabilityExpectationResultDto.listFromJson(json[r'expectationResults']),
      );
    }
    return null;
  }

  static List<DeliverabilityEntityResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityEntityResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityEntityResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityEntityResultDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityEntityResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityEntityResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityEntityResultDto-objects as value to a dart map
  static Map<String, List<DeliverabilityEntityResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityEntityResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityEntityResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entityId',
    'entityLabel',
    'matched',
    'matchedExpectationCount',
    'totalExpectationCount',
    'expectationResults',
  };
}


class DeliverabilityEntityResultDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityEntityResultDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'US');
  static const GB = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'GB');
  static const AU = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'AU');
  static const CA = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'CA');
  static const EE = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'EE');
  static const HK = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'HK');
  static const PL = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'PL');
  static const PT = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'PT');
  static const NL = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'NL');
  static const IL = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'IL');
  static const FI = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'FI');
  static const SE = DeliverabilityEntityResultDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][DeliverabilityEntityResultDtoPhoneCountryEnum].
  static const values = <DeliverabilityEntityResultDtoPhoneCountryEnum>[
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

  static DeliverabilityEntityResultDtoPhoneCountryEnum? fromJson(dynamic value) => DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<DeliverabilityEntityResultDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityEntityResultDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityEntityResultDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityEntityResultDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityEntityResultDtoPhoneCountryEnum].
class DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer {
  factory DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer() => _instance ??= const DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer._();

  const DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer._();

  String encode(DeliverabilityEntityResultDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityEntityResultDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityEntityResultDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return DeliverabilityEntityResultDtoPhoneCountryEnum.US;
        case r'GB': return DeliverabilityEntityResultDtoPhoneCountryEnum.GB;
        case r'AU': return DeliverabilityEntityResultDtoPhoneCountryEnum.AU;
        case r'CA': return DeliverabilityEntityResultDtoPhoneCountryEnum.CA;
        case r'EE': return DeliverabilityEntityResultDtoPhoneCountryEnum.EE;
        case r'HK': return DeliverabilityEntityResultDtoPhoneCountryEnum.HK;
        case r'PL': return DeliverabilityEntityResultDtoPhoneCountryEnum.PL;
        case r'PT': return DeliverabilityEntityResultDtoPhoneCountryEnum.PT;
        case r'NL': return DeliverabilityEntityResultDtoPhoneCountryEnum.NL;
        case r'IL': return DeliverabilityEntityResultDtoPhoneCountryEnum.IL;
        case r'FI': return DeliverabilityEntityResultDtoPhoneCountryEnum.FI;
        case r'SE': return DeliverabilityEntityResultDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer] instance.
  static DeliverabilityEntityResultDtoPhoneCountryEnumTypeTransformer? _instance;
}



class DeliverabilityEntityResultDtoPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityEntityResultDtoPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = DeliverabilityEntityResultDtoPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = DeliverabilityEntityResultDtoPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = DeliverabilityEntityResultDtoPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][DeliverabilityEntityResultDtoPhoneVariantEnum].
  static const values = <DeliverabilityEntityResultDtoPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static DeliverabilityEntityResultDtoPhoneVariantEnum? fromJson(dynamic value) => DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer().decode(value);

  static List<DeliverabilityEntityResultDtoPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityEntityResultDtoPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityEntityResultDtoPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityEntityResultDtoPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityEntityResultDtoPhoneVariantEnum].
class DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer {
  factory DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer() => _instance ??= const DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer._();

  const DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer._();

  String encode(DeliverabilityEntityResultDtoPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityEntityResultDtoPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityEntityResultDtoPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return DeliverabilityEntityResultDtoPhoneVariantEnum.LOCAL;
        case r'MOBILE': return DeliverabilityEntityResultDtoPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return DeliverabilityEntityResultDtoPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer] instance.
  static DeliverabilityEntityResultDtoPhoneVariantEnumTypeTransformer? _instance;
}


