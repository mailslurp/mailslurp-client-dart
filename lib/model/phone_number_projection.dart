//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberProjection {
  /// Returns a new [PhoneNumberProjection] instance.
  PhoneNumberProjection({
    @required this.id,
    @required this.userId,
    @required this.phoneNumber,
    @required this.phoneCountry,
    @required this.createdAt,
  });

  String id;

  String userId;

  String phoneNumber;

  PhoneNumberProjectionPhoneCountryEnum phoneCountry;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberProjection &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'PhoneNumberProjection[id=$id, userId=$userId, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'phoneNumber'] = phoneNumber;
      json[r'phoneCountry'] = phoneCountry;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhoneNumberProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PhoneNumberProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PhoneNumberProjection(
        id: json[r'id'],
        userId: json[r'userId'],
        phoneNumber: json[r'phoneNumber'],
        phoneCountry: PhoneNumberProjectionPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<PhoneNumberProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhoneNumberProjection>[]
      : json.map((v) => PhoneNumberProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, PhoneNumberProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PhoneNumberProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PhoneNumberProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberProjection-objects as value to a dart map
  static Map<String, List<PhoneNumberProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PhoneNumberProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PhoneNumberProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class PhoneNumberProjectionPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberProjectionPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhoneNumberProjectionPhoneCountryEnum._(r'US');
  static const GB = PhoneNumberProjectionPhoneCountryEnum._(r'GB');

  /// List of all possible values in this [enum][PhoneNumberProjectionPhoneCountryEnum].
  static const values = <PhoneNumberProjectionPhoneCountryEnum>[
    US,
    GB,
  ];

  static PhoneNumberProjectionPhoneCountryEnum fromJson(dynamic value) =>
    PhoneNumberProjectionPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneNumberProjectionPhoneCountryEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhoneNumberProjectionPhoneCountryEnum>[]
      : json
          .map((value) => PhoneNumberProjectionPhoneCountryEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PhoneNumberProjectionPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberProjectionPhoneCountryEnum].
class PhoneNumberProjectionPhoneCountryEnumTypeTransformer {
  const PhoneNumberProjectionPhoneCountryEnumTypeTransformer._();

  factory PhoneNumberProjectionPhoneCountryEnumTypeTransformer() => _instance ??= PhoneNumberProjectionPhoneCountryEnumTypeTransformer._();

  String encode(PhoneNumberProjectionPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberProjectionPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberProjectionPhoneCountryEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return PhoneNumberProjectionPhoneCountryEnum.US;
      case r'GB': return PhoneNumberProjectionPhoneCountryEnum.GB;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PhoneNumberProjectionPhoneCountryEnumTypeTransformer] instance.
  static PhoneNumberProjectionPhoneCountryEnumTypeTransformer _instance;
}

