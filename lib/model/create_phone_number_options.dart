//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePhoneNumberOptions {
  /// Returns a new [CreatePhoneNumberOptions] instance.
  CreatePhoneNumberOptions({
    required this.phoneCountry,
    this.name,
    this.description,
    this.schedule,
  });

  CreatePhoneNumberOptionsPhoneCountryEnum phoneCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  CreatePhoneNumberOptionsScheduleEnum? schedule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePhoneNumberOptions &&
     other.phoneCountry == phoneCountry &&
     other.name == name &&
     other.description == description &&
     other.schedule == schedule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountry.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode);

  @override
  String toString() => 'CreatePhoneNumberOptions[phoneCountry=$phoneCountry, name=$name, description=$description, schedule=$schedule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.schedule != null) {
      json[r'schedule'] = this.schedule;
    } else {
      json[r'schedule'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePhoneNumberOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePhoneNumberOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePhoneNumberOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePhoneNumberOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePhoneNumberOptions(
        phoneCountry: CreatePhoneNumberOptionsPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        schedule: CreatePhoneNumberOptionsScheduleEnum.fromJson(json[r'schedule']),
      );
    }
    return null;
  }

  static List<CreatePhoneNumberOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneNumberOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneNumberOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePhoneNumberOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePhoneNumberOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePhoneNumberOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePhoneNumberOptions-objects as value to a dart map
  static Map<String, List<CreatePhoneNumberOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePhoneNumberOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePhoneNumberOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountry',
  };
}


class CreatePhoneNumberOptionsPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePhoneNumberOptionsPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = CreatePhoneNumberOptionsPhoneCountryEnum._(r'US');
  static const GB = CreatePhoneNumberOptionsPhoneCountryEnum._(r'GB');
  static const AU = CreatePhoneNumberOptionsPhoneCountryEnum._(r'AU');
  static const CA = CreatePhoneNumberOptionsPhoneCountryEnum._(r'CA');
  static const EE = CreatePhoneNumberOptionsPhoneCountryEnum._(r'EE');
  static const HK = CreatePhoneNumberOptionsPhoneCountryEnum._(r'HK');
  static const PL = CreatePhoneNumberOptionsPhoneCountryEnum._(r'PL');
  static const CH = CreatePhoneNumberOptionsPhoneCountryEnum._(r'CH');
  static const PT = CreatePhoneNumberOptionsPhoneCountryEnum._(r'PT');
  static const NL = CreatePhoneNumberOptionsPhoneCountryEnum._(r'NL');
  static const IL = CreatePhoneNumberOptionsPhoneCountryEnum._(r'IL');
  static const SE = CreatePhoneNumberOptionsPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][CreatePhoneNumberOptionsPhoneCountryEnum].
  static const values = <CreatePhoneNumberOptionsPhoneCountryEnum>[
    US,
    GB,
    AU,
    CA,
    EE,
    HK,
    PL,
    CH,
    PT,
    NL,
    IL,
    SE,
  ];

  static CreatePhoneNumberOptionsPhoneCountryEnum? fromJson(dynamic value) => CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer().decode(value);

  static List<CreatePhoneNumberOptionsPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneNumberOptionsPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneNumberOptionsPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePhoneNumberOptionsPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [CreatePhoneNumberOptionsPhoneCountryEnum].
class CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer {
  factory CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer() => _instance ??= const CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer._();

  const CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer._();

  String encode(CreatePhoneNumberOptionsPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePhoneNumberOptionsPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePhoneNumberOptionsPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return CreatePhoneNumberOptionsPhoneCountryEnum.US;
        case r'GB': return CreatePhoneNumberOptionsPhoneCountryEnum.GB;
        case r'AU': return CreatePhoneNumberOptionsPhoneCountryEnum.AU;
        case r'CA': return CreatePhoneNumberOptionsPhoneCountryEnum.CA;
        case r'EE': return CreatePhoneNumberOptionsPhoneCountryEnum.EE;
        case r'HK': return CreatePhoneNumberOptionsPhoneCountryEnum.HK;
        case r'PL': return CreatePhoneNumberOptionsPhoneCountryEnum.PL;
        case r'CH': return CreatePhoneNumberOptionsPhoneCountryEnum.CH;
        case r'PT': return CreatePhoneNumberOptionsPhoneCountryEnum.PT;
        case r'NL': return CreatePhoneNumberOptionsPhoneCountryEnum.NL;
        case r'IL': return CreatePhoneNumberOptionsPhoneCountryEnum.IL;
        case r'SE': return CreatePhoneNumberOptionsPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer] instance.
  static CreatePhoneNumberOptionsPhoneCountryEnumTypeTransformer? _instance;
}



class CreatePhoneNumberOptionsScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePhoneNumberOptionsScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTHLY = CreatePhoneNumberOptionsScheduleEnum._(r'MONTHLY');
  static const YEARLY = CreatePhoneNumberOptionsScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][CreatePhoneNumberOptionsScheduleEnum].
  static const values = <CreatePhoneNumberOptionsScheduleEnum>[
    MONTHLY,
    YEARLY,
  ];

  static CreatePhoneNumberOptionsScheduleEnum? fromJson(dynamic value) => CreatePhoneNumberOptionsScheduleEnumTypeTransformer().decode(value);

  static List<CreatePhoneNumberOptionsScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneNumberOptionsScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneNumberOptionsScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePhoneNumberOptionsScheduleEnum] to String,
/// and [decode] dynamic data back to [CreatePhoneNumberOptionsScheduleEnum].
class CreatePhoneNumberOptionsScheduleEnumTypeTransformer {
  factory CreatePhoneNumberOptionsScheduleEnumTypeTransformer() => _instance ??= const CreatePhoneNumberOptionsScheduleEnumTypeTransformer._();

  const CreatePhoneNumberOptionsScheduleEnumTypeTransformer._();

  String encode(CreatePhoneNumberOptionsScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePhoneNumberOptionsScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePhoneNumberOptionsScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTHLY': return CreatePhoneNumberOptionsScheduleEnum.MONTHLY;
        case r'YEARLY': return CreatePhoneNumberOptionsScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePhoneNumberOptionsScheduleEnumTypeTransformer] instance.
  static CreatePhoneNumberOptionsScheduleEnumTypeTransformer? _instance;
}


