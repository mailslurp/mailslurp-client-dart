//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneProviderCapabilitiesResult {
  /// Returns a new [PhoneProviderCapabilitiesResult] instance.
  PhoneProviderCapabilitiesResult({
    required this.providerLabel,
    required this.phoneCountry,
    this.supportedVariants = const [],
    this.warning,
  });

  String providerLabel;

  PhoneProviderCapabilitiesResultPhoneCountryEnum phoneCountry;

  List<String> supportedVariants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? warning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneProviderCapabilitiesResult &&
     other.providerLabel == providerLabel &&
     other.phoneCountry == phoneCountry &&
     other.supportedVariants == supportedVariants &&
     other.warning == warning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providerLabel.hashCode) +
    (phoneCountry.hashCode) +
    (supportedVariants.hashCode) +
    (warning == null ? 0 : warning!.hashCode);

  @override
  String toString() => 'PhoneProviderCapabilitiesResult[providerLabel=$providerLabel, phoneCountry=$phoneCountry, supportedVariants=$supportedVariants, warning=$warning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providerLabel'] = this.providerLabel;
      json[r'phoneCountry'] = this.phoneCountry;
      json[r'supportedVariants'] = this.supportedVariants;
    if (this.warning != null) {
      json[r'warning'] = this.warning;
    } else {
      json[r'warning'] = null;
    }
    return json;
  }

  /// Returns a new [PhoneProviderCapabilitiesResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneProviderCapabilitiesResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneProviderCapabilitiesResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneProviderCapabilitiesResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneProviderCapabilitiesResult(
        providerLabel: mapValueOfType<String>(json, r'providerLabel')!,
        phoneCountry: PhoneProviderCapabilitiesResultPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        supportedVariants: json[r'supportedVariants'] is List
            ? (json[r'supportedVariants'] as List).cast<String>()
            : const [],
        warning: mapValueOfType<String>(json, r'warning'),
      );
    }
    return null;
  }

  static List<PhoneProviderCapabilitiesResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProviderCapabilitiesResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProviderCapabilitiesResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneProviderCapabilitiesResult> mapFromJson(dynamic json) {
    final map = <String, PhoneProviderCapabilitiesResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneProviderCapabilitiesResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneProviderCapabilitiesResult-objects as value to a dart map
  static Map<String, List<PhoneProviderCapabilitiesResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneProviderCapabilitiesResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneProviderCapabilitiesResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'providerLabel',
    'phoneCountry',
    'supportedVariants',
  };
}


class PhoneProviderCapabilitiesResultPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneProviderCapabilitiesResultPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'US');
  static const GB = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'GB');
  static const AU = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'AU');
  static const CA = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'CA');
  static const EE = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'EE');
  static const HK = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'HK');
  static const PL = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'PL');
  static const PT = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'PT');
  static const NL = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'NL');
  static const IL = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'IL');
  static const FI = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'FI');
  static const SE = PhoneProviderCapabilitiesResultPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneProviderCapabilitiesResultPhoneCountryEnum].
  static const values = <PhoneProviderCapabilitiesResultPhoneCountryEnum>[
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

  static PhoneProviderCapabilitiesResultPhoneCountryEnum? fromJson(dynamic value) => PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneProviderCapabilitiesResultPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProviderCapabilitiesResultPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProviderCapabilitiesResultPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneProviderCapabilitiesResultPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneProviderCapabilitiesResultPhoneCountryEnum].
class PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer {
  factory PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer._();

  const PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer._();

  String encode(PhoneProviderCapabilitiesResultPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneProviderCapabilitiesResultPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneProviderCapabilitiesResultPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneProviderCapabilitiesResultPhoneCountryEnum.US;
        case r'GB': return PhoneProviderCapabilitiesResultPhoneCountryEnum.GB;
        case r'AU': return PhoneProviderCapabilitiesResultPhoneCountryEnum.AU;
        case r'CA': return PhoneProviderCapabilitiesResultPhoneCountryEnum.CA;
        case r'EE': return PhoneProviderCapabilitiesResultPhoneCountryEnum.EE;
        case r'HK': return PhoneProviderCapabilitiesResultPhoneCountryEnum.HK;
        case r'PL': return PhoneProviderCapabilitiesResultPhoneCountryEnum.PL;
        case r'PT': return PhoneProviderCapabilitiesResultPhoneCountryEnum.PT;
        case r'NL': return PhoneProviderCapabilitiesResultPhoneCountryEnum.NL;
        case r'IL': return PhoneProviderCapabilitiesResultPhoneCountryEnum.IL;
        case r'FI': return PhoneProviderCapabilitiesResultPhoneCountryEnum.FI;
        case r'SE': return PhoneProviderCapabilitiesResultPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer] instance.
  static PhoneProviderCapabilitiesResultPhoneCountryEnumTypeTransformer? _instance;
}


