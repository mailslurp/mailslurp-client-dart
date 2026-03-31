//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AvailablePhoneNumberDto {
  /// Returns a new [AvailablePhoneNumberDto] instance.
  AvailablePhoneNumberDto({
    required this.phoneNumber,
    required this.phoneCountry,
    this.phoneVariant,
    this.lineType,
    this.carrierName,
    this.mobileCountryCode,
    this.mobileNetworkCode,
    this.providerLabel,
  });

  String phoneNumber;

  AvailablePhoneNumberDtoPhoneCountryEnum phoneCountry;

  AvailablePhoneNumberDtoPhoneVariantEnum? phoneVariant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lineType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileCountryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNetworkCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerLabel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AvailablePhoneNumberDto &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.lineType == lineType &&
     other.carrierName == carrierName &&
     other.mobileCountryCode == mobileCountryCode &&
     other.mobileNetworkCode == mobileNetworkCode &&
     other.providerLabel == providerLabel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneNumber.hashCode) +
    (phoneCountry.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (lineType == null ? 0 : lineType!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (mobileCountryCode == null ? 0 : mobileCountryCode!.hashCode) +
    (mobileNetworkCode == null ? 0 : mobileNetworkCode!.hashCode) +
    (providerLabel == null ? 0 : providerLabel!.hashCode);

  @override
  String toString() => 'AvailablePhoneNumberDto[phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, lineType=$lineType, carrierName=$carrierName, mobileCountryCode=$mobileCountryCode, mobileNetworkCode=$mobileNetworkCode, providerLabel=$providerLabel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.phoneVariant != null) {
      json[r'phoneVariant'] = this.phoneVariant;
    } else {
      json[r'phoneVariant'] = null;
    }
    if (this.lineType != null) {
      json[r'lineType'] = this.lineType;
    } else {
      json[r'lineType'] = null;
    }
    if (this.carrierName != null) {
      json[r'carrierName'] = this.carrierName;
    } else {
      json[r'carrierName'] = null;
    }
    if (this.mobileCountryCode != null) {
      json[r'mobileCountryCode'] = this.mobileCountryCode;
    } else {
      json[r'mobileCountryCode'] = null;
    }
    if (this.mobileNetworkCode != null) {
      json[r'mobileNetworkCode'] = this.mobileNetworkCode;
    } else {
      json[r'mobileNetworkCode'] = null;
    }
    if (this.providerLabel != null) {
      json[r'providerLabel'] = this.providerLabel;
    } else {
      json[r'providerLabel'] = null;
    }
    return json;
  }

  /// Returns a new [AvailablePhoneNumberDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AvailablePhoneNumberDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AvailablePhoneNumberDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AvailablePhoneNumberDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AvailablePhoneNumberDto(
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        phoneCountry: AvailablePhoneNumberDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneVariant: AvailablePhoneNumberDtoPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        lineType: mapValueOfType<String>(json, r'lineType'),
        carrierName: mapValueOfType<String>(json, r'carrierName'),
        mobileCountryCode: mapValueOfType<String>(json, r'mobileCountryCode'),
        mobileNetworkCode: mapValueOfType<String>(json, r'mobileNetworkCode'),
        providerLabel: mapValueOfType<String>(json, r'providerLabel'),
      );
    }
    return null;
  }

  static List<AvailablePhoneNumberDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AvailablePhoneNumberDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AvailablePhoneNumberDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AvailablePhoneNumberDto> mapFromJson(dynamic json) {
    final map = <String, AvailablePhoneNumberDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AvailablePhoneNumberDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AvailablePhoneNumberDto-objects as value to a dart map
  static Map<String, List<AvailablePhoneNumberDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AvailablePhoneNumberDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AvailablePhoneNumberDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
    'phoneCountry',
  };
}


class AvailablePhoneNumberDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const AvailablePhoneNumberDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = AvailablePhoneNumberDtoPhoneCountryEnum._(r'US');
  static const GB = AvailablePhoneNumberDtoPhoneCountryEnum._(r'GB');
  static const AU = AvailablePhoneNumberDtoPhoneCountryEnum._(r'AU');
  static const CA = AvailablePhoneNumberDtoPhoneCountryEnum._(r'CA');
  static const EE = AvailablePhoneNumberDtoPhoneCountryEnum._(r'EE');
  static const HK = AvailablePhoneNumberDtoPhoneCountryEnum._(r'HK');
  static const PL = AvailablePhoneNumberDtoPhoneCountryEnum._(r'PL');
  static const PT = AvailablePhoneNumberDtoPhoneCountryEnum._(r'PT');
  static const NL = AvailablePhoneNumberDtoPhoneCountryEnum._(r'NL');
  static const IL = AvailablePhoneNumberDtoPhoneCountryEnum._(r'IL');
  static const FI = AvailablePhoneNumberDtoPhoneCountryEnum._(r'FI');
  static const SE = AvailablePhoneNumberDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][AvailablePhoneNumberDtoPhoneCountryEnum].
  static const values = <AvailablePhoneNumberDtoPhoneCountryEnum>[
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

  static AvailablePhoneNumberDtoPhoneCountryEnum? fromJson(dynamic value) => AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<AvailablePhoneNumberDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AvailablePhoneNumberDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AvailablePhoneNumberDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AvailablePhoneNumberDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [AvailablePhoneNumberDtoPhoneCountryEnum].
class AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer {
  factory AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer() => _instance ??= const AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  const AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  String encode(AvailablePhoneNumberDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AvailablePhoneNumberDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AvailablePhoneNumberDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return AvailablePhoneNumberDtoPhoneCountryEnum.US;
        case r'GB': return AvailablePhoneNumberDtoPhoneCountryEnum.GB;
        case r'AU': return AvailablePhoneNumberDtoPhoneCountryEnum.AU;
        case r'CA': return AvailablePhoneNumberDtoPhoneCountryEnum.CA;
        case r'EE': return AvailablePhoneNumberDtoPhoneCountryEnum.EE;
        case r'HK': return AvailablePhoneNumberDtoPhoneCountryEnum.HK;
        case r'PL': return AvailablePhoneNumberDtoPhoneCountryEnum.PL;
        case r'PT': return AvailablePhoneNumberDtoPhoneCountryEnum.PT;
        case r'NL': return AvailablePhoneNumberDtoPhoneCountryEnum.NL;
        case r'IL': return AvailablePhoneNumberDtoPhoneCountryEnum.IL;
        case r'FI': return AvailablePhoneNumberDtoPhoneCountryEnum.FI;
        case r'SE': return AvailablePhoneNumberDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer] instance.
  static AvailablePhoneNumberDtoPhoneCountryEnumTypeTransformer? _instance;
}



class AvailablePhoneNumberDtoPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const AvailablePhoneNumberDtoPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = AvailablePhoneNumberDtoPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = AvailablePhoneNumberDtoPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = AvailablePhoneNumberDtoPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][AvailablePhoneNumberDtoPhoneVariantEnum].
  static const values = <AvailablePhoneNumberDtoPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static AvailablePhoneNumberDtoPhoneVariantEnum? fromJson(dynamic value) => AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer().decode(value);

  static List<AvailablePhoneNumberDtoPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AvailablePhoneNumberDtoPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AvailablePhoneNumberDtoPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AvailablePhoneNumberDtoPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [AvailablePhoneNumberDtoPhoneVariantEnum].
class AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer {
  factory AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer() => _instance ??= const AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer._();

  const AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer._();

  String encode(AvailablePhoneNumberDtoPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AvailablePhoneNumberDtoPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AvailablePhoneNumberDtoPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return AvailablePhoneNumberDtoPhoneVariantEnum.LOCAL;
        case r'MOBILE': return AvailablePhoneNumberDtoPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return AvailablePhoneNumberDtoPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer] instance.
  static AvailablePhoneNumberDtoPhoneVariantEnumTypeTransformer? _instance;
}


