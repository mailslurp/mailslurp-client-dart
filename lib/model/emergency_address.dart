//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmergencyAddress {
  /// Returns a new [EmergencyAddress] instance.
  EmergencyAddress({
    this.id,
    @required this.sid,
    @required this.userId,
    @required this.displayName,
    @required this.customerName,
    @required this.address1,
    @required this.city,
    @required this.region,
    @required this.postalCode,
    @required this.phoneCountry,
    @required this.accountSid,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String sid;

  String userId;

  String displayName;

  String customerName;

  String address1;

  String city;

  String region;

  String postalCode;

  EmergencyAddressPhoneCountryEnum phoneCountry;

  String accountSid;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmergencyAddress &&
     other.id == id &&
     other.sid == sid &&
     other.userId == userId &&
     other.displayName == displayName &&
     other.customerName == customerName &&
     other.address1 == address1 &&
     other.city == city &&
     other.region == region &&
     other.postalCode == postalCode &&
     other.phoneCountry == phoneCountry &&
     other.accountSid == accountSid &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (sid == null ? 0 : sid.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (customerName == null ? 0 : customerName.hashCode) +
    (address1 == null ? 0 : address1.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (region == null ? 0 : region.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry.hashCode) +
    (accountSid == null ? 0 : accountSid.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'EmergencyAddress[id=$id, sid=$sid, userId=$userId, displayName=$displayName, customerName=$customerName, address1=$address1, city=$city, region=$region, postalCode=$postalCode, phoneCountry=$phoneCountry, accountSid=$accountSid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'sid'] = sid;
      json[r'userId'] = userId;
      json[r'displayName'] = displayName;
      json[r'customerName'] = customerName;
      json[r'address1'] = address1;
      json[r'city'] = city;
      json[r'region'] = region;
      json[r'postalCode'] = postalCode;
      json[r'phoneCountry'] = phoneCountry;
      json[r'accountSid'] = accountSid;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmergencyAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmergencyAddress fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmergencyAddress(
        id: json[r'id'],
        sid: json[r'sid'],
        userId: json[r'userId'],
        displayName: json[r'displayName'],
        customerName: json[r'customerName'],
        address1: json[r'address1'],
        city: json[r'city'],
        region: json[r'region'],
        postalCode: json[r'postalCode'],
        phoneCountry: EmergencyAddressPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        accountSid: json[r'accountSid'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<EmergencyAddress> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmergencyAddress>[]
      : json.map((v) => EmergencyAddress.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmergencyAddress> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmergencyAddress>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmergencyAddress.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmergencyAddress-objects as value to a dart map
  static Map<String, List<EmergencyAddress>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmergencyAddress>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmergencyAddress.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class EmergencyAddressPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const EmergencyAddressPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = EmergencyAddressPhoneCountryEnum._(r'US');
  static const GB = EmergencyAddressPhoneCountryEnum._(r'GB');
  static const AU = EmergencyAddressPhoneCountryEnum._(r'AU');

  /// List of all possible values in this [enum][EmergencyAddressPhoneCountryEnum].
  static const values = <EmergencyAddressPhoneCountryEnum>[
    US,
    GB,
    AU,
  ];

  static EmergencyAddressPhoneCountryEnum fromJson(dynamic value) =>
    EmergencyAddressPhoneCountryEnumTypeTransformer().decode(value);

  static List<EmergencyAddressPhoneCountryEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmergencyAddressPhoneCountryEnum>[]
      : json
          .map((value) => EmergencyAddressPhoneCountryEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EmergencyAddressPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [EmergencyAddressPhoneCountryEnum].
class EmergencyAddressPhoneCountryEnumTypeTransformer {
  const EmergencyAddressPhoneCountryEnumTypeTransformer._();

  factory EmergencyAddressPhoneCountryEnumTypeTransformer() => _instance ??= EmergencyAddressPhoneCountryEnumTypeTransformer._();

  String encode(EmergencyAddressPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmergencyAddressPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmergencyAddressPhoneCountryEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'US': return EmergencyAddressPhoneCountryEnum.US;
      case r'GB': return EmergencyAddressPhoneCountryEnum.GB;
      case r'AU': return EmergencyAddressPhoneCountryEnum.AU;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EmergencyAddressPhoneCountryEnumTypeTransformer] instance.
  static EmergencyAddressPhoneCountryEnumTypeTransformer _instance;
}

