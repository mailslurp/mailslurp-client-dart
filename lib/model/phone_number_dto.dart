//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberDto {
  /// Returns a new [PhoneNumberDto] instance.
  PhoneNumberDto({
    @required this.id,
    @required this.userId,
    this.complianceAddress,
    this.emergencyAddress,
    @required this.phoneNumber,
    @required this.phoneCountry,
    @required this.phonePlan,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String complianceAddress;

  String emergencyAddress;

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
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (complianceAddress == null ? 0 : complianceAddress.hashCode) +
    (emergencyAddress == null ? 0 : emergencyAddress.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry.hashCode) +
    (phonePlan == null ? 0 : phonePlan.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'PhoneNumberDto[id=$id, userId=$userId, complianceAddress=$complianceAddress, emergencyAddress=$emergencyAddress, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, phonePlan=$phonePlan, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
    if (complianceAddress != null) {
      json[r'complianceAddress'] = complianceAddress;
    }
    if (emergencyAddress != null) {
      json[r'emergencyAddress'] = emergencyAddress;
    }
      json[r'phoneNumber'] = phoneNumber;
      json[r'phoneCountry'] = phoneCountry;
      json[r'phonePlan'] = phonePlan;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhoneNumberDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PhoneNumberDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PhoneNumberDto(
        id: json[r'id'],
        userId: json[r'userId'],
        complianceAddress: json[r'complianceAddress'],
        emergencyAddress: json[r'emergencyAddress'],
        phoneNumber: json[r'phoneNumber'],
        phoneCountry: PhoneNumberDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        phonePlan: json[r'phonePlan'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<PhoneNumberDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhoneNumberDto>[]
      : json.map((v) => PhoneNumberDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, PhoneNumberDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PhoneNumberDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PhoneNumberDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberDto-objects as value to a dart map
  static Map<String, List<PhoneNumberDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PhoneNumberDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PhoneNumberDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static PhoneNumberDtoPhoneCountryEnum fromJson(dynamic value) =>
    PhoneNumberDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneNumberDtoPhoneCountryEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhoneNumberDtoPhoneCountryEnum>[]
      : json
          .map((value) => PhoneNumberDtoPhoneCountryEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PhoneNumberDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberDtoPhoneCountryEnum].
class PhoneNumberDtoPhoneCountryEnumTypeTransformer {
  const PhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  factory PhoneNumberDtoPhoneCountryEnumTypeTransformer() => _instance ??= PhoneNumberDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhoneNumberDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberDtoPhoneCountryEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return PhoneNumberDtoPhoneCountryEnum.US;
      case r'GB': return PhoneNumberDtoPhoneCountryEnum.GB;
      case r'AU': return PhoneNumberDtoPhoneCountryEnum.AU;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PhoneNumberDtoPhoneCountryEnumTypeTransformer] instance.
  static PhoneNumberDtoPhoneCountryEnumTypeTransformer _instance;
}

