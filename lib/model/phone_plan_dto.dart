//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePlanDto {
  /// Returns a new [PhonePlanDto] instance.
  PhonePlanDto({
    @required this.id,
    @required this.userId,
    @required this.phoneCountry,
    @required this.createdAt,
  });

  String id;

  String userId;

  PhonePlanDtoPhoneCountryEnum phoneCountry;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePlanDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneCountry == phoneCountry &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'PhonePlanDto[id=$id, userId=$userId, phoneCountry=$phoneCountry, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'phoneCountry'] = phoneCountry;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhonePlanDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PhonePlanDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PhonePlanDto(
        id: json[r'id'],
        userId: json[r'userId'],
        phoneCountry: PhonePlanDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<PhonePlanDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhonePlanDto>[]
      : json.map((v) => PhonePlanDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, PhonePlanDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PhonePlanDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PhonePlanDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PhonePlanDto-objects as value to a dart map
  static Map<String, List<PhonePlanDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PhonePlanDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PhonePlanDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class PhonePlanDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const PhonePlanDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = PhonePlanDtoPhoneCountryEnum._(r'US');
  static const GB = PhonePlanDtoPhoneCountryEnum._(r'GB');
  static const AU = PhonePlanDtoPhoneCountryEnum._(r'AU');

  /// List of all possible values in this [enum][PhonePlanDtoPhoneCountryEnum].
  static const values = <PhonePlanDtoPhoneCountryEnum>[
    US,
    GB,
    AU,
  ];

  static PhonePlanDtoPhoneCountryEnum fromJson(dynamic value) =>
    PhonePlanDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhonePlanDtoPhoneCountryEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PhonePlanDtoPhoneCountryEnum>[]
      : json
          .map((value) => PhonePlanDtoPhoneCountryEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PhonePlanDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhonePlanDtoPhoneCountryEnum].
class PhonePlanDtoPhoneCountryEnumTypeTransformer {
  const PhonePlanDtoPhoneCountryEnumTypeTransformer._();

  factory PhonePlanDtoPhoneCountryEnumTypeTransformer() => _instance ??= PhonePlanDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhonePlanDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanDtoPhoneCountryEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return PhonePlanDtoPhoneCountryEnum.US;
      case r'GB': return PhonePlanDtoPhoneCountryEnum.GB;
      case r'AU': return PhonePlanDtoPhoneCountryEnum.AU;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PhonePlanDtoPhoneCountryEnumTypeTransformer] instance.
  static PhonePlanDtoPhoneCountryEnumTypeTransformer _instance;
}

