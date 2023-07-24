//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmergencyAddress {
  /// Returns a new [EmergencyAddress] instance.
  EmergencyAddress({
    this.id,
    required this.sid,
    required this.userId,
    required this.displayName,
    required this.customerName,
    required this.address1,
    required this.city,
    required this.region,
    required this.postalCode,
    required this.phoneCountry,
    required this.accountSid,
    required this.createdAt,
    required this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (sid.hashCode) +
    (userId.hashCode) +
    (displayName.hashCode) +
    (customerName.hashCode) +
    (address1.hashCode) +
    (city.hashCode) +
    (region.hashCode) +
    (postalCode.hashCode) +
    (phoneCountry.hashCode) +
    (accountSid.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmergencyAddress[id=$id, sid=$sid, userId=$userId, displayName=$displayName, customerName=$customerName, address1=$address1, city=$city, region=$region, postalCode=$postalCode, phoneCountry=$phoneCountry, accountSid=$accountSid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'sid'] = this.sid;
      json[r'userId'] = this.userId;
      json[r'displayName'] = this.displayName;
      json[r'customerName'] = this.customerName;
      json[r'address1'] = this.address1;
      json[r'city'] = this.city;
      json[r'region'] = this.region;
      json[r'postalCode'] = this.postalCode;
      json[r'phoneCountry'] = this.phoneCountry;
      json[r'accountSid'] = this.accountSid;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmergencyAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmergencyAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmergencyAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmergencyAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmergencyAddress(
        id: mapValueOfType<String>(json, r'id'),
        sid: mapValueOfType<String>(json, r'sid')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        displayName: mapValueOfType<String>(json, r'displayName')!,
        customerName: mapValueOfType<String>(json, r'customerName')!,
        address1: mapValueOfType<String>(json, r'address1')!,
        city: mapValueOfType<String>(json, r'city')!,
        region: mapValueOfType<String>(json, r'region')!,
        postalCode: mapValueOfType<String>(json, r'postalCode')!,
        phoneCountry: EmergencyAddressPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        accountSid: mapValueOfType<String>(json, r'accountSid')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmergencyAddress>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmergencyAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmergencyAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmergencyAddress> mapFromJson(dynamic json) {
    final map = <String, EmergencyAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmergencyAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmergencyAddress-objects as value to a dart map
  static Map<String, List<EmergencyAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmergencyAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmergencyAddress.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sid',
    'userId',
    'displayName',
    'customerName',
    'address1',
    'city',
    'region',
    'postalCode',
    'phoneCountry',
    'accountSid',
    'createdAt',
    'updatedAt',
  };
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

  static EmergencyAddressPhoneCountryEnum? fromJson(dynamic value) => EmergencyAddressPhoneCountryEnumTypeTransformer().decode(value);

  static List<EmergencyAddressPhoneCountryEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmergencyAddressPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmergencyAddressPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmergencyAddressPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [EmergencyAddressPhoneCountryEnum].
class EmergencyAddressPhoneCountryEnumTypeTransformer {
  factory EmergencyAddressPhoneCountryEnumTypeTransformer() => _instance ??= const EmergencyAddressPhoneCountryEnumTypeTransformer._();

  const EmergencyAddressPhoneCountryEnumTypeTransformer._();

  String encode(EmergencyAddressPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmergencyAddressPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmergencyAddressPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return EmergencyAddressPhoneCountryEnum.US;
        case r'GB': return EmergencyAddressPhoneCountryEnum.GB;
        case r'AU': return EmergencyAddressPhoneCountryEnum.AU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmergencyAddressPhoneCountryEnumTypeTransformer] instance.
  static EmergencyAddressPhoneCountryEnumTypeTransformer? _instance;
}


