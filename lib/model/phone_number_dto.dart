//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberDto {
  /// Returns a new [PhoneNumberDto] instance.
  PhoneNumberDto({
    required this.id,
    required this.userId,
    this.complianceAddress,
    this.emergencyAddress,
    required this.phoneNumber,
    required this.phoneCountry,
    required this.phonePlan,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? complianceAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emergencyAddress;

  String phoneNumber;

  PhoneNumberDtoPhoneCountryEnum phoneCountry;

  String phonePlan;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberDto &&
     other.id == id &&
     other.userId == userId &&
     other.complianceAddress == complianceAddress &&
     other.emergencyAddress == emergencyAddress &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.phonePlan == phonePlan &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (complianceAddress == null ? 0 : complianceAddress!.hashCode) +
    (emergencyAddress == null ? 0 : emergencyAddress!.hashCode) +
    (phoneNumber.hashCode) +
    (phoneCountry.hashCode) +
    (phonePlan.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PhoneNumberDto[id=$id, userId=$userId, complianceAddress=$complianceAddress, emergencyAddress=$emergencyAddress, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, phonePlan=$phonePlan, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.complianceAddress != null) {
      json[r'complianceAddress'] = this.complianceAddress;
    } else {
      json[r'complianceAddress'] = null;
    }
    if (this.emergencyAddress != null) {
      json[r'emergencyAddress'] = this.emergencyAddress;
    } else {
      json[r'emergencyAddress'] = null;
    }
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'phoneCountry'] = this.phoneCountry;
      json[r'phonePlan'] = this.phonePlan;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhoneNumberDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        complianceAddress: mapValueOfType<String>(json, r'complianceAddress'),
        emergencyAddress: mapValueOfType<String>(json, r'emergencyAddress'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        phoneCountry: PhoneNumberDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phonePlan: mapValueOfType<String>(json, r'phonePlan')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<PhoneNumberDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberDto> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberDto-objects as value to a dart map
  static Map<String, List<PhoneNumberDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'phoneNumber',
    'phoneCountry',
    'phonePlan',
    'createdAt',
    'updatedAt',
  };
}


class PhoneNumberDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneNumberDtoPhoneCountryEnum._(r'US');
  static const GB = PhoneNumberDtoPhoneCountryEnum._(r'GB');
  static const AU = PhoneNumberDtoPhoneCountryEnum._(r'AU');

  /// List of all possible values in this [enum][PhoneNumberDtoPhoneCountryEnum].
  static const values = <PhoneNumberDtoPhoneCountryEnum>[
    US,
    GB,
    AU,
  ];

  static PhoneNumberDtoPhoneCountryEnum? fromJson(dynamic value) => PhoneNumberDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneNumberDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberDtoPhoneCountryEnum].
class PhoneNumberDtoPhoneCountryEnumTypeTransformer {
  factory PhoneNumberDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  const PhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhoneNumberDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneNumberDtoPhoneCountryEnum.US;
        case r'GB': return PhoneNumberDtoPhoneCountryEnum.GB;
        case r'AU': return PhoneNumberDtoPhoneCountryEnum.AU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberDtoPhoneCountryEnumTypeTransformer] instance.
  static PhoneNumberDtoPhoneCountryEnumTypeTransformer? _instance;
}


