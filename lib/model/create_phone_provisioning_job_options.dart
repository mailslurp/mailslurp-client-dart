//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePhoneProvisioningJobOptions {
  /// Returns a new [CreatePhoneProvisioningJobOptions] instance.
  CreatePhoneProvisioningJobOptions({
    required this.phoneCountry,
    this.phoneVariant,
    this.items = const [],
  });

  CreatePhoneProvisioningJobOptionsPhoneCountryEnum phoneCountry;

  CreatePhoneProvisioningJobOptionsPhoneVariantEnum? phoneVariant;

  List<CreatePhoneProvisioningJobItemOptions> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePhoneProvisioningJobOptions &&
     other.phoneCountry == phoneCountry &&
     other.phoneVariant == phoneVariant &&
     other.items == items;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountry.hashCode) +
    (phoneVariant == null ? 0 : phoneVariant!.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'CreatePhoneProvisioningJobOptions[phoneCountry=$phoneCountry, phoneVariant=$phoneVariant, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.phoneVariant != null) {
      json[r'phoneVariant'] = this.phoneVariant;
    } else {
      json[r'phoneVariant'] = null;
    }
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [CreatePhoneProvisioningJobOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePhoneProvisioningJobOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePhoneProvisioningJobOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePhoneProvisioningJobOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePhoneProvisioningJobOptions(
        phoneCountry: CreatePhoneProvisioningJobOptionsPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneVariant: CreatePhoneProvisioningJobOptionsPhoneVariantEnum.fromJson(json[r'phoneVariant']),
        items: CreatePhoneProvisioningJobItemOptions.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<CreatePhoneProvisioningJobOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneProvisioningJobOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneProvisioningJobOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePhoneProvisioningJobOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePhoneProvisioningJobOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePhoneProvisioningJobOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePhoneProvisioningJobOptions-objects as value to a dart map
  static Map<String, List<CreatePhoneProvisioningJobOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePhoneProvisioningJobOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePhoneProvisioningJobOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountry',
    'items',
  };
}


class CreatePhoneProvisioningJobOptionsPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'US');
  static const GB = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'GB');
  static const AU = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'AU');
  static const CA = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'CA');
  static const EE = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'EE');
  static const HK = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'HK');
  static const PL = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'PL');
  static const PT = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'PT');
  static const NL = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'NL');
  static const IL = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'IL');
  static const FI = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'FI');
  static const SE = CreatePhoneProvisioningJobOptionsPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][CreatePhoneProvisioningJobOptionsPhoneCountryEnum].
  static const values = <CreatePhoneProvisioningJobOptionsPhoneCountryEnum>[
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

  static CreatePhoneProvisioningJobOptionsPhoneCountryEnum? fromJson(dynamic value) => CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer().decode(value);

  static List<CreatePhoneProvisioningJobOptionsPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneProvisioningJobOptionsPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneProvisioningJobOptionsPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePhoneProvisioningJobOptionsPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [CreatePhoneProvisioningJobOptionsPhoneCountryEnum].
class CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer {
  factory CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer() => _instance ??= const CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer._();

  const CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer._();

  String encode(CreatePhoneProvisioningJobOptionsPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePhoneProvisioningJobOptionsPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePhoneProvisioningJobOptionsPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.US;
        case r'GB': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.GB;
        case r'AU': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.AU;
        case r'CA': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.CA;
        case r'EE': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.EE;
        case r'HK': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.HK;
        case r'PL': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.PL;
        case r'PT': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.PT;
        case r'NL': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.NL;
        case r'IL': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.IL;
        case r'FI': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.FI;
        case r'SE': return CreatePhoneProvisioningJobOptionsPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer] instance.
  static CreatePhoneProvisioningJobOptionsPhoneCountryEnumTypeTransformer? _instance;
}



class CreatePhoneProvisioningJobOptionsPhoneVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePhoneProvisioningJobOptionsPhoneVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCAL = CreatePhoneProvisioningJobOptionsPhoneVariantEnum._(r'LOCAL');
  static const MOBILE = CreatePhoneProvisioningJobOptionsPhoneVariantEnum._(r'MOBILE');
  static const TOLL_FREE = CreatePhoneProvisioningJobOptionsPhoneVariantEnum._(r'TOLL_FREE');

  /// List of all possible values in this [enum][CreatePhoneProvisioningJobOptionsPhoneVariantEnum].
  static const values = <CreatePhoneProvisioningJobOptionsPhoneVariantEnum>[
    LOCAL,
    MOBILE,
    TOLL_FREE,
  ];

  static CreatePhoneProvisioningJobOptionsPhoneVariantEnum? fromJson(dynamic value) => CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer().decode(value);

  static List<CreatePhoneProvisioningJobOptionsPhoneVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneProvisioningJobOptionsPhoneVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneProvisioningJobOptionsPhoneVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePhoneProvisioningJobOptionsPhoneVariantEnum] to String,
/// and [decode] dynamic data back to [CreatePhoneProvisioningJobOptionsPhoneVariantEnum].
class CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer {
  factory CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer() => _instance ??= const CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer._();

  const CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer._();

  String encode(CreatePhoneProvisioningJobOptionsPhoneVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePhoneProvisioningJobOptionsPhoneVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePhoneProvisioningJobOptionsPhoneVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCAL': return CreatePhoneProvisioningJobOptionsPhoneVariantEnum.LOCAL;
        case r'MOBILE': return CreatePhoneProvisioningJobOptionsPhoneVariantEnum.MOBILE;
        case r'TOLL_FREE': return CreatePhoneProvisioningJobOptionsPhoneVariantEnum.TOLL_FREE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer] instance.
  static CreatePhoneProvisioningJobOptionsPhoneVariantEnumTypeTransformer? _instance;
}


