//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmergencyAddressDto {
  /// Returns a new [EmergencyAddressDto] instance.
  EmergencyAddressDto({
    @required this.id,
    @required this.address1,
    @required this.phoneCountry,
  });

  String id;

  String address1;

  EmergencyAddressDtoPhoneCountryEnum phoneCountry;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmergencyAddressDto &&
     other.id == id &&
     other.address1 == address1 &&
     other.phoneCountry == phoneCountry;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (address1 == null ? 0 : address1.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry.hashCode);

  @override
  String toString() => 'EmergencyAddressDto[id=$id, address1=$address1, phoneCountry=$phoneCountry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'address1'] = address1;
      json[r'phoneCountry'] = phoneCountry;
    return json;
  }

  /// Returns a new [EmergencyAddressDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmergencyAddressDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmergencyAddressDto(
        id: json[r'id'],
        address1: json[r'address1'],
        phoneCountry: EmergencyAddressDtoPhoneCountryEnum.fromJson(json[r'phoneCountry']),
    );

  static List<EmergencyAddressDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmergencyAddressDto>[]
      : json.map((v) => EmergencyAddressDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmergencyAddressDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmergencyAddressDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmergencyAddressDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmergencyAddressDto-objects as value to a dart map
  static Map<String, List<EmergencyAddressDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmergencyAddressDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmergencyAddressDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class EmergencyAddressDtoPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const EmergencyAddressDtoPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = EmergencyAddressDtoPhoneCountryEnum._(r'US');
  static const GB = EmergencyAddressDtoPhoneCountryEnum._(r'GB');
  static const AU = EmergencyAddressDtoPhoneCountryEnum._(r'AU');

  /// List of all possible values in this [enum][EmergencyAddressDtoPhoneCountryEnum].
  static const values = <EmergencyAddressDtoPhoneCountryEnum>[
    US,
    GB,
    AU,
  ];

  static EmergencyAddressDtoPhoneCountryEnum fromJson(dynamic value) =>
    EmergencyAddressDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<EmergencyAddressDtoPhoneCountryEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmergencyAddressDtoPhoneCountryEnum>[]
      : json
          .map((value) => EmergencyAddressDtoPhoneCountryEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EmergencyAddressDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [EmergencyAddressDtoPhoneCountryEnum].
class EmergencyAddressDtoPhoneCountryEnumTypeTransformer {
  const EmergencyAddressDtoPhoneCountryEnumTypeTransformer._();

  factory EmergencyAddressDtoPhoneCountryEnumTypeTransformer() => _instance ??= EmergencyAddressDtoPhoneCountryEnumTypeTransformer._();

  String encode(EmergencyAddressDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmergencyAddressDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmergencyAddressDtoPhoneCountryEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return EmergencyAddressDtoPhoneCountryEnum.US;
      case r'GB': return EmergencyAddressDtoPhoneCountryEnum.GB;
      case r'AU': return EmergencyAddressDtoPhoneCountryEnum.AU;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EmergencyAddressDtoPhoneCountryEnumTypeTransformer] instance.
  static EmergencyAddressDtoPhoneCountryEnumTypeTransformer _instance;
}

