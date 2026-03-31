//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneSmsPrepaidCreditDto {
  /// Returns a new [PhoneSmsPrepaidCreditDto] instance.
  PhoneSmsPrepaidCreditDto({
    required this.id,
    this.phoneCountry,
    required this.global,
    required this.remainingCredits,
    required this.initialCredits,
    required this.sentMultiplier,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  /// Null means the balance is global for the account rather than country-specific.
  PhoneSmsPrepaidCreditDtoPhoneCountryEnum? phoneCountry;

  bool global;

  int remainingCredits;

  int initialCredits;

  int sentMultiplier;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneSmsPrepaidCreditDto &&
     other.id == id &&
     other.phoneCountry == phoneCountry &&
     other.global == global &&
     other.remainingCredits == remainingCredits &&
     other.initialCredits == initialCredits &&
     other.sentMultiplier == sentMultiplier &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry!.hashCode) +
    (global.hashCode) +
    (remainingCredits.hashCode) +
    (initialCredits.hashCode) +
    (sentMultiplier.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PhoneSmsPrepaidCreditDto[id=$id, phoneCountry=$phoneCountry, global=$global, remainingCredits=$remainingCredits, initialCredits=$initialCredits, sentMultiplier=$sentMultiplier, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.phoneCountry != null) {
      json[r'phoneCountry'] = this.phoneCountry;
    } else {
      json[r'phoneCountry'] = null;
    }
      json[r'global'] = this.global;
      json[r'remainingCredits'] = this.remainingCredits;
      json[r'initialCredits'] = this.initialCredits;
      json[r'sentMultiplier'] = this.sentMultiplier;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhoneSmsPrepaidCreditDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneSmsPrepaidCreditDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneSmsPrepaidCreditDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneSmsPrepaidCreditDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneSmsPrepaidCreditDto(
        id: mapValueOfType<String>(json, r'id')!,
        phoneCountry: PhoneSmsPrepaidCreditDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        global: mapValueOfType<bool>(json, r'global')!,
        remainingCredits: mapValueOfType<int>(json, r'remainingCredits')!,
        initialCredits: mapValueOfType<int>(json, r'initialCredits')!,
        sentMultiplier: mapValueOfType<int>(json, r'sentMultiplier')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<PhoneSmsPrepaidCreditDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSmsPrepaidCreditDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSmsPrepaidCreditDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneSmsPrepaidCreditDto> mapFromJson(dynamic json) {
    final map = <String, PhoneSmsPrepaidCreditDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneSmsPrepaidCreditDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneSmsPrepaidCreditDto-objects as value to a dart map
  static Map<String, List<PhoneSmsPrepaidCreditDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneSmsPrepaidCreditDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneSmsPrepaidCreditDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'global',
    'remainingCredits',
    'initialCredits',
    'sentMultiplier',
    'createdAt',
    'updatedAt',
  };
}

/// Null means the balance is global for the account rather than country-specific.
class PhoneSmsPrepaidCreditDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'US');
  static const GB = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'GB');
  static const AU = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'AU');
  static const CA = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'CA');
  static const EE = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'EE');
  static const HK = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'HK');
  static const PL = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'PL');
  static const PT = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'PT');
  static const NL = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'NL');
  static const IL = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'IL');
  static const FI = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'FI');
  static const SE = PhoneSmsPrepaidCreditDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneSmsPrepaidCreditDtoPhoneCountryEnum].
  static const values = <PhoneSmsPrepaidCreditDtoPhoneCountryEnum>[
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

  static PhoneSmsPrepaidCreditDtoPhoneCountryEnum? fromJson(dynamic value) => PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneSmsPrepaidCreditDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSmsPrepaidCreditDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSmsPrepaidCreditDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneSmsPrepaidCreditDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneSmsPrepaidCreditDtoPhoneCountryEnum].
class PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer {
  factory PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer._();

  const PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhoneSmsPrepaidCreditDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneSmsPrepaidCreditDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneSmsPrepaidCreditDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.US;
        case r'GB': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.GB;
        case r'AU': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.AU;
        case r'CA': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.CA;
        case r'EE': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.EE;
        case r'HK': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.HK;
        case r'PL': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.PL;
        case r'PT': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.PT;
        case r'NL': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.NL;
        case r'IL': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.IL;
        case r'FI': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.FI;
        case r'SE': return PhoneSmsPrepaidCreditDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer] instance.
  static PhoneSmsPrepaidCreditDtoPhoneCountryEnumTypeTransformer? _instance;
}


