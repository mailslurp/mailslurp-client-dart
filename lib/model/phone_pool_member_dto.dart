//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePoolMemberDto {
  /// Returns a new [PhonePoolMemberDto] instance.
  PhonePoolMemberDto({
    required this.id,
    required this.poolId,
    required this.phoneNumberId,
    required this.phoneNumber,
    required this.phoneCountry,
    this.phoneName,
    required this.createdAt,
    this.activeLease,
  });

  String id;

  String poolId;

  String phoneNumberId;

  String phoneNumber;

  PhonePoolMemberDtoPhoneCountryEnum phoneCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneName;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PhonePoolLeaseDto? activeLease;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePoolMemberDto &&
     other.id == id &&
     other.poolId == poolId &&
     other.phoneNumberId == phoneNumberId &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.phoneName == phoneName &&
     other.createdAt == createdAt &&
     other.activeLease == activeLease;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (poolId.hashCode) +
    (phoneNumberId.hashCode) +
    (phoneNumber.hashCode) +
    (phoneCountry.hashCode) +
    (phoneName == null ? 0 : phoneName!.hashCode) +
    (createdAt.hashCode) +
    (activeLease == null ? 0 : activeLease!.hashCode);

  @override
  String toString() => 'PhonePoolMemberDto[id=$id, poolId=$poolId, phoneNumberId=$phoneNumberId, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, phoneName=$phoneName, createdAt=$createdAt, activeLease=$activeLease]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'poolId'] = this.poolId;
      json[r'phoneNumberId'] = this.phoneNumberId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.phoneName != null) {
      json[r'phoneName'] = this.phoneName;
    } else {
      json[r'phoneName'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.activeLease != null) {
      json[r'activeLease'] = this.activeLease;
    } else {
      json[r'activeLease'] = null;
    }
    return json;
  }

  /// Returns a new [PhonePoolMemberDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePoolMemberDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePoolMemberDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePoolMemberDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePoolMemberDto(
        id: mapValueOfType<String>(json, r'id')!,
        poolId: mapValueOfType<String>(json, r'poolId')!,
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        phoneCountry: PhonePoolMemberDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneName: mapValueOfType<String>(json, r'phoneName'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        activeLease: PhonePoolLeaseDto.fromJson(json[r'activeLease']),
      );
    }
    return null;
  }

  static List<PhonePoolMemberDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePoolMemberDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePoolMemberDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePoolMemberDto> mapFromJson(dynamic json) {
    final map = <String, PhonePoolMemberDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePoolMemberDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePoolMemberDto-objects as value to a dart map
  static Map<String, List<PhonePoolMemberDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePoolMemberDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhonePoolMemberDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'poolId',
    'phoneNumberId',
    'phoneNumber',
    'phoneCountry',
    'createdAt',
  };
}


class PhonePoolMemberDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePoolMemberDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhonePoolMemberDtoPhoneCountryEnum._(r'US');
  static const GB = PhonePoolMemberDtoPhoneCountryEnum._(r'GB');
  static const AU = PhonePoolMemberDtoPhoneCountryEnum._(r'AU');
  static const CA = PhonePoolMemberDtoPhoneCountryEnum._(r'CA');
  static const EE = PhonePoolMemberDtoPhoneCountryEnum._(r'EE');
  static const HK = PhonePoolMemberDtoPhoneCountryEnum._(r'HK');
  static const PL = PhonePoolMemberDtoPhoneCountryEnum._(r'PL');
  static const PT = PhonePoolMemberDtoPhoneCountryEnum._(r'PT');
  static const NL = PhonePoolMemberDtoPhoneCountryEnum._(r'NL');
  static const IL = PhonePoolMemberDtoPhoneCountryEnum._(r'IL');
  static const FI = PhonePoolMemberDtoPhoneCountryEnum._(r'FI');
  static const SE = PhonePoolMemberDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhonePoolMemberDtoPhoneCountryEnum].
  static const values = <PhonePoolMemberDtoPhoneCountryEnum>[
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

  static PhonePoolMemberDtoPhoneCountryEnum? fromJson(dynamic value) => PhonePoolMemberDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhonePoolMemberDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePoolMemberDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePoolMemberDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePoolMemberDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhonePoolMemberDtoPhoneCountryEnum].
class PhonePoolMemberDtoPhoneCountryEnumTypeTransformer {
  factory PhonePoolMemberDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhonePoolMemberDtoPhoneCountryEnumTypeTransformer._();

  const PhonePoolMemberDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhonePoolMemberDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePoolMemberDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePoolMemberDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhonePoolMemberDtoPhoneCountryEnum.US;
        case r'GB': return PhonePoolMemberDtoPhoneCountryEnum.GB;
        case r'AU': return PhonePoolMemberDtoPhoneCountryEnum.AU;
        case r'CA': return PhonePoolMemberDtoPhoneCountryEnum.CA;
        case r'EE': return PhonePoolMemberDtoPhoneCountryEnum.EE;
        case r'HK': return PhonePoolMemberDtoPhoneCountryEnum.HK;
        case r'PL': return PhonePoolMemberDtoPhoneCountryEnum.PL;
        case r'PT': return PhonePoolMemberDtoPhoneCountryEnum.PT;
        case r'NL': return PhonePoolMemberDtoPhoneCountryEnum.NL;
        case r'IL': return PhonePoolMemberDtoPhoneCountryEnum.IL;
        case r'FI': return PhonePoolMemberDtoPhoneCountryEnum.FI;
        case r'SE': return PhonePoolMemberDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePoolMemberDtoPhoneCountryEnumTypeTransformer] instance.
  static PhonePoolMemberDtoPhoneCountryEnumTypeTransformer? _instance;
}


