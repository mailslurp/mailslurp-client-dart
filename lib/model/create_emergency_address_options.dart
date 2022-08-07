//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateEmergencyAddressOptions {
  /// Returns a new [CreateEmergencyAddressOptions] instance.
  CreateEmergencyAddressOptions({
    @required this.customerName,
    @required this.address1,
    @required this.city,
    @required this.region,
    @required this.postalCode,
    @required this.isoCountryCode,
    this.displayName,
  });

  String customerName;

  String address1;

  String city;

  String region;

  String postalCode;

  CreateEmergencyAddressOptionsIsoCountryCodeEnum isoCountryCode;

  String displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEmergencyAddressOptions &&
     other.customerName == customerName &&
     other.address1 == address1 &&
     other.city == city &&
     other.region == region &&
     other.postalCode == postalCode &&
     other.isoCountryCode == isoCountryCode &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    (customerName == null ? 0 : customerName.hashCode) +
    (address1 == null ? 0 : address1.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (region == null ? 0 : region.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode) +
    (isoCountryCode == null ? 0 : isoCountryCode.hashCode) +
    (displayName == null ? 0 : displayName.hashCode);

  @override
  String toString() => 'CreateEmergencyAddressOptions[customerName=$customerName, address1=$address1, city=$city, region=$region, postalCode=$postalCode, isoCountryCode=$isoCountryCode, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerName'] = customerName;
      json[r'address1'] = address1;
      json[r'city'] = city;
      json[r'region'] = region;
      json[r'postalCode'] = postalCode;
      json[r'isoCountryCode'] = isoCountryCode;
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  /// Returns a new [CreateEmergencyAddressOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateEmergencyAddressOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateEmergencyAddressOptions(
        customerName: json[r'customerName'],
        address1: json[r'address1'],
        city: json[r'city'],
        region: json[r'region'],
        postalCode: json[r'postalCode'],
        isoCountryCode: CreateEmergencyAddressOptionsIsoCountryCodeEnum.fromJson(json[r'isoCountryCode']),
        displayName: json[r'displayName'],
    );

  static List<CreateEmergencyAddressOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateEmergencyAddressOptions>[]
      : json.map((v) => CreateEmergencyAddressOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateEmergencyAddressOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateEmergencyAddressOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateEmergencyAddressOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateEmergencyAddressOptions-objects as value to a dart map
  static Map<String, List<CreateEmergencyAddressOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateEmergencyAddressOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateEmergencyAddressOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class CreateEmergencyAddressOptionsIsoCountryCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateEmergencyAddressOptionsIsoCountryCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = CreateEmergencyAddressOptionsIsoCountryCodeEnum._(r'US');
  static const GB = CreateEmergencyAddressOptionsIsoCountryCodeEnum._(r'GB');

  /// List of all possible values in this [enum][CreateEmergencyAddressOptionsIsoCountryCodeEnum].
  static const values = <CreateEmergencyAddressOptionsIsoCountryCodeEnum>[
    US,
    GB,
  ];

  static CreateEmergencyAddressOptionsIsoCountryCodeEnum fromJson(dynamic value) =>
    CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer().decode(value);

  static List<CreateEmergencyAddressOptionsIsoCountryCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateEmergencyAddressOptionsIsoCountryCodeEnum>[]
      : json
          .map((value) => CreateEmergencyAddressOptionsIsoCountryCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateEmergencyAddressOptionsIsoCountryCodeEnum] to String,
/// and [decode] dynamic data back to [CreateEmergencyAddressOptionsIsoCountryCodeEnum].
class CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer {
  const CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer._();

  factory CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer() => _instance ??= CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer._();

  String encode(CreateEmergencyAddressOptionsIsoCountryCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEmergencyAddressOptionsIsoCountryCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEmergencyAddressOptionsIsoCountryCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return CreateEmergencyAddressOptionsIsoCountryCodeEnum.US;
      case r'GB': return CreateEmergencyAddressOptionsIsoCountryCodeEnum.GB;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer] instance.
  static CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer _instance;
}

