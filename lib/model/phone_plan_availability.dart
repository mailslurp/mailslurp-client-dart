//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePlanAvailability {
  /// Returns a new [PhonePlanAvailability] instance.
  PhonePlanAvailability({
    this.items = const [],
    this.disabledPhoneCountries = const [],
  });

  List<PhonePlanAvailabilityItem> items;

  List<PhonePlanAvailabilityDisabledPhoneCountriesEnum> disabledPhoneCountries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePlanAvailability &&
     other.items == items &&
     other.disabledPhoneCountries == disabledPhoneCountries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (disabledPhoneCountries.hashCode);

  @override
  String toString() => 'PhonePlanAvailability[items=$items, disabledPhoneCountries=$disabledPhoneCountries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'disabledPhoneCountries'] = this.disabledPhoneCountries;
    return json;
  }

  /// Returns a new [PhonePlanAvailability] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePlanAvailability? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePlanAvailability[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePlanAvailability[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePlanAvailability(
        items: PhonePlanAvailabilityItem.listFromJson(json[r'items']),
        disabledPhoneCountries: PhonePlanAvailabilityDisabledPhoneCountriesEnum.listFromJson(json[r'disabledPhoneCountries']),
      );
    }
    return null;
  }

  static List<PhonePlanAvailability> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePlanAvailability> mapFromJson(dynamic json) {
    final map = <String, PhonePlanAvailability>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePlanAvailability.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePlanAvailability-objects as value to a dart map
  static Map<String, List<PhonePlanAvailability>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePlanAvailability>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhonePlanAvailability.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'disabledPhoneCountries',
  };
}


class PhonePlanAvailabilityDisabledPhoneCountriesEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePlanAvailabilityDisabledPhoneCountriesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'US');
  static const GB = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'GB');
  static const AU = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'AU');
  static const CA = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'CA');
  static const EE = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'EE');
  static const HK = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'HK');
  static const PL = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'PL');
  static const PT = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'PT');
  static const NL = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'NL');
  static const IL = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'IL');
  static const FI = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'FI');
  static const SE = PhonePlanAvailabilityDisabledPhoneCountriesEnum._(r'SE');

  /// List of all possible values in this [enum][PhonePlanAvailabilityDisabledPhoneCountriesEnum].
  static const values = <PhonePlanAvailabilityDisabledPhoneCountriesEnum>[
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

  static PhonePlanAvailabilityDisabledPhoneCountriesEnum? fromJson(dynamic value) => PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer().decode(value);

  static List<PhonePlanAvailabilityDisabledPhoneCountriesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanAvailabilityDisabledPhoneCountriesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanAvailabilityDisabledPhoneCountriesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePlanAvailabilityDisabledPhoneCountriesEnum] to String,
/// and [decode] dynamic data back to [PhonePlanAvailabilityDisabledPhoneCountriesEnum].
class PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer {
  factory PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer() => _instance ??= const PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer._();

  const PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer._();

  String encode(PhonePlanAvailabilityDisabledPhoneCountriesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanAvailabilityDisabledPhoneCountriesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanAvailabilityDisabledPhoneCountriesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.US;
        case r'GB': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.GB;
        case r'AU': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.AU;
        case r'CA': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.CA;
        case r'EE': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.EE;
        case r'HK': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.HK;
        case r'PL': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.PL;
        case r'PT': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.PT;
        case r'NL': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.NL;
        case r'IL': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.IL;
        case r'FI': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.FI;
        case r'SE': return PhonePlanAvailabilityDisabledPhoneCountriesEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer] instance.
  static PhonePlanAvailabilityDisabledPhoneCountriesEnumTypeTransformer? _instance;
}


