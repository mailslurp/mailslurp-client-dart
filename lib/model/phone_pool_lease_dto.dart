//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePoolLeaseDto {
  /// Returns a new [PhonePoolLeaseDto] instance.
  PhonePoolLeaseDto({
    required this.id,
    required this.poolId,
    required this.phoneNumberId,
    required this.phoneNumber,
    required this.phoneCountry,
    this.phoneName,
    this.leaseName,
    this.leaseOwner,
    required this.leasedAt,
    this.expiresAt,
  });

  String id;

  String poolId;

  String phoneNumberId;

  String phoneNumber;

  PhonePoolLeaseDtoPhoneCountryEnum phoneCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leaseName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leaseOwner;

  DateTime leasedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePoolLeaseDto &&
     other.id == id &&
     other.poolId == poolId &&
     other.phoneNumberId == phoneNumberId &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.phoneName == phoneName &&
     other.leaseName == leaseName &&
     other.leaseOwner == leaseOwner &&
     other.leasedAt == leasedAt &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (poolId.hashCode) +
    (phoneNumberId.hashCode) +
    (phoneNumber.hashCode) +
    (phoneCountry.hashCode) +
    (phoneName == null ? 0 : phoneName!.hashCode) +
    (leaseName == null ? 0 : leaseName!.hashCode) +
    (leaseOwner == null ? 0 : leaseOwner!.hashCode) +
    (leasedAt.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'PhonePoolLeaseDto[id=$id, poolId=$poolId, phoneNumberId=$phoneNumberId, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, phoneName=$phoneName, leaseName=$leaseName, leaseOwner=$leaseOwner, leasedAt=$leasedAt, expiresAt=$expiresAt]';

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
    if (this.leaseName != null) {
      json[r'leaseName'] = this.leaseName;
    } else {
      json[r'leaseName'] = null;
    }
    if (this.leaseOwner != null) {
      json[r'leaseOwner'] = this.leaseOwner;
    } else {
      json[r'leaseOwner'] = null;
    }
      json[r'leasedAt'] = this.leasedAt.toUtc().toIso8601String();
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [PhonePoolLeaseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePoolLeaseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePoolLeaseDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePoolLeaseDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePoolLeaseDto(
        id: mapValueOfType<String>(json, r'id')!,
        poolId: mapValueOfType<String>(json, r'poolId')!,
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        phoneCountry: PhonePoolLeaseDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        phoneName: mapValueOfType<String>(json, r'phoneName'),
        leaseName: mapValueOfType<String>(json, r'leaseName'),
        leaseOwner: mapValueOfType<String>(json, r'leaseOwner'),
        leasedAt: mapDateTime(json, r'leasedAt', '')!,
        expiresAt: mapDateTime(json, r'expiresAt', ''),
      );
    }
    return null;
  }

  static List<PhonePoolLeaseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePoolLeaseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePoolLeaseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePoolLeaseDto> mapFromJson(dynamic json) {
    final map = <String, PhonePoolLeaseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePoolLeaseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePoolLeaseDto-objects as value to a dart map
  static Map<String, List<PhonePoolLeaseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePoolLeaseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhonePoolLeaseDto.listFromJson(entry.value, growable: growable,);
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
    'leasedAt',
  };
}


class PhonePoolLeaseDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePoolLeaseDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhonePoolLeaseDtoPhoneCountryEnum._(r'US');
  static const GB = PhonePoolLeaseDtoPhoneCountryEnum._(r'GB');
  static const AU = PhonePoolLeaseDtoPhoneCountryEnum._(r'AU');
  static const CA = PhonePoolLeaseDtoPhoneCountryEnum._(r'CA');
  static const EE = PhonePoolLeaseDtoPhoneCountryEnum._(r'EE');
  static const HK = PhonePoolLeaseDtoPhoneCountryEnum._(r'HK');
  static const PL = PhonePoolLeaseDtoPhoneCountryEnum._(r'PL');
  static const PT = PhonePoolLeaseDtoPhoneCountryEnum._(r'PT');
  static const NL = PhonePoolLeaseDtoPhoneCountryEnum._(r'NL');
  static const IL = PhonePoolLeaseDtoPhoneCountryEnum._(r'IL');
  static const FI = PhonePoolLeaseDtoPhoneCountryEnum._(r'FI');
  static const SE = PhonePoolLeaseDtoPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhonePoolLeaseDtoPhoneCountryEnum].
  static const values = <PhonePoolLeaseDtoPhoneCountryEnum>[
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

  static PhonePoolLeaseDtoPhoneCountryEnum? fromJson(dynamic value) => PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhonePoolLeaseDtoPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePoolLeaseDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePoolLeaseDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePoolLeaseDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhonePoolLeaseDtoPhoneCountryEnum].
class PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer {
  factory PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer._();

  const PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhonePoolLeaseDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePoolLeaseDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePoolLeaseDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhonePoolLeaseDtoPhoneCountryEnum.US;
        case r'GB': return PhonePoolLeaseDtoPhoneCountryEnum.GB;
        case r'AU': return PhonePoolLeaseDtoPhoneCountryEnum.AU;
        case r'CA': return PhonePoolLeaseDtoPhoneCountryEnum.CA;
        case r'EE': return PhonePoolLeaseDtoPhoneCountryEnum.EE;
        case r'HK': return PhonePoolLeaseDtoPhoneCountryEnum.HK;
        case r'PL': return PhonePoolLeaseDtoPhoneCountryEnum.PL;
        case r'PT': return PhonePoolLeaseDtoPhoneCountryEnum.PT;
        case r'NL': return PhonePoolLeaseDtoPhoneCountryEnum.NL;
        case r'IL': return PhonePoolLeaseDtoPhoneCountryEnum.IL;
        case r'FI': return PhonePoolLeaseDtoPhoneCountryEnum.FI;
        case r'SE': return PhonePoolLeaseDtoPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer] instance.
  static PhonePoolLeaseDtoPhoneCountryEnumTypeTransformer? _instance;
}


