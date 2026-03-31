//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneSummaryCountryDto {
  /// Returns a new [PhoneSummaryCountryDto] instance.
  PhoneSummaryCountryDto({
    required this.phoneCountryCode,
    required this.totalCount,
    required this.hasPlan,
  });

  PhoneSummaryCountryDtoPhoneCountryCodeEnum phoneCountryCode;

  int totalCount;

  bool hasPlan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneSummaryCountryDto &&
     other.phoneCountryCode == phoneCountryCode &&
     other.totalCount == totalCount &&
     other.hasPlan == hasPlan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountryCode.hashCode) +
    (totalCount.hashCode) +
    (hasPlan.hashCode);

  @override
  String toString() => 'PhoneSummaryCountryDto[phoneCountryCode=$phoneCountryCode, totalCount=$totalCount, hasPlan=$hasPlan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneCountryCode'] = this.phoneCountryCode;
      json[r'totalCount'] = this.totalCount;
      json[r'hasPlan'] = this.hasPlan;
    return json;
  }

  /// Returns a new [PhoneSummaryCountryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneSummaryCountryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneSummaryCountryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneSummaryCountryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneSummaryCountryDto(
        phoneCountryCode: PhoneSummaryCountryDtoPhoneCountryCodeEnum.fromJson(json[r'phoneCountryCode'])!,
        totalCount: mapValueOfType<int>(json, r'totalCount')!,
        hasPlan: mapValueOfType<bool>(json, r'hasPlan')!,
      );
    }
    return null;
  }

  static List<PhoneSummaryCountryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSummaryCountryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSummaryCountryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneSummaryCountryDto> mapFromJson(dynamic json) {
    final map = <String, PhoneSummaryCountryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneSummaryCountryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneSummaryCountryDto-objects as value to a dart map
  static Map<String, List<PhoneSummaryCountryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneSummaryCountryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneSummaryCountryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountryCode',
    'totalCount',
    'hasPlan',
  };
}


class PhoneSummaryCountryDtoPhoneCountryCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneSummaryCountryDtoPhoneCountryCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'US');
  static const GB = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'GB');
  static const AU = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'AU');
  static const CA = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'CA');
  static const EE = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'EE');
  static const HK = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'HK');
  static const PL = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'PL');
  static const PT = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'PT');
  static const NL = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'NL');
  static const IL = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'IL');
  static const FI = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'FI');
  static const SE = PhoneSummaryCountryDtoPhoneCountryCodeEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneSummaryCountryDtoPhoneCountryCodeEnum].
  static const values = <PhoneSummaryCountryDtoPhoneCountryCodeEnum>[
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

  static PhoneSummaryCountryDtoPhoneCountryCodeEnum? fromJson(dynamic value) => PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer().decode(value);

  static List<PhoneSummaryCountryDtoPhoneCountryCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSummaryCountryDtoPhoneCountryCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSummaryCountryDtoPhoneCountryCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneSummaryCountryDtoPhoneCountryCodeEnum] to String,
/// and [decode] dynamic data back to [PhoneSummaryCountryDtoPhoneCountryCodeEnum].
class PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer {
  factory PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer() => _instance ??= const PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer._();

  const PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer._();

  String encode(PhoneSummaryCountryDtoPhoneCountryCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneSummaryCountryDtoPhoneCountryCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneSummaryCountryDtoPhoneCountryCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.US;
        case r'GB': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.GB;
        case r'AU': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.AU;
        case r'CA': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.CA;
        case r'EE': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.EE;
        case r'HK': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.HK;
        case r'PL': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.PL;
        case r'PT': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.PT;
        case r'NL': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.NL;
        case r'IL': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.IL;
        case r'FI': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.FI;
        case r'SE': return PhoneSummaryCountryDtoPhoneCountryCodeEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer] instance.
  static PhoneSummaryCountryDtoPhoneCountryCodeEnumTypeTransformer? _instance;
}


