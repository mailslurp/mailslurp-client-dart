//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateEmergencyAddressOptions {
  /// Returns a new [CreateEmergencyAddressOptions] instance.
  CreateEmergencyAddressOptions({
    required this.customerName,
    required this.address1,
    required this.city,
    required this.region,
    required this.postalCode,
    required this.isoCountryCode,
    this.displayName,
  });

  String customerName;

  String address1;

  String city;

  String region;

  String postalCode;

  CreateEmergencyAddressOptionsIsoCountryCodeEnum isoCountryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

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
    // ignore: unnecessary_parenthesis
    (customerName.hashCode) +
    (address1.hashCode) +
    (city.hashCode) +
    (region.hashCode) +
    (postalCode.hashCode) +
    (isoCountryCode.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode);

  @override
  String toString() => 'CreateEmergencyAddressOptions[customerName=$customerName, address1=$address1, city=$city, region=$region, postalCode=$postalCode, isoCountryCode=$isoCountryCode, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerName'] = this.customerName;
      json[r'address1'] = this.address1;
      json[r'city'] = this.city;
      json[r'region'] = this.region;
      json[r'postalCode'] = this.postalCode;
      json[r'isoCountryCode'] = this.isoCountryCode;
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    return json;
  }

  /// Returns a new [CreateEmergencyAddressOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEmergencyAddressOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEmergencyAddressOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEmergencyAddressOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEmergencyAddressOptions(
        customerName: mapValueOfType<String>(json, r'customerName')!,
        address1: mapValueOfType<String>(json, r'address1')!,
        city: mapValueOfType<String>(json, r'city')!,
        region: mapValueOfType<String>(json, r'region')!,
        postalCode: mapValueOfType<String>(json, r'postalCode')!,
        isoCountryCode: CreateEmergencyAddressOptionsIsoCountryCodeEnum.fromJson(json[r'isoCountryCode'])!,
        displayName: mapValueOfType<String>(json, r'displayName'),
      );
    }
    return null;
  }

  static List<CreateEmergencyAddressOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmergencyAddressOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmergencyAddressOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEmergencyAddressOptions> mapFromJson(dynamic json) {
    final map = <String, CreateEmergencyAddressOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmergencyAddressOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEmergencyAddressOptions-objects as value to a dart map
  static Map<String, List<CreateEmergencyAddressOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEmergencyAddressOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEmergencyAddressOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customerName',
    'address1',
    'city',
    'region',
    'postalCode',
    'isoCountryCode',
  };
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
  static const AU = CreateEmergencyAddressOptionsIsoCountryCodeEnum._(r'AU');

  /// List of all possible values in this [enum][CreateEmergencyAddressOptionsIsoCountryCodeEnum].
  static const values = <CreateEmergencyAddressOptionsIsoCountryCodeEnum>[
    US,
    GB,
    AU,
  ];

  static CreateEmergencyAddressOptionsIsoCountryCodeEnum? fromJson(dynamic value) => CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer().decode(value);

  static List<CreateEmergencyAddressOptionsIsoCountryCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmergencyAddressOptionsIsoCountryCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmergencyAddressOptionsIsoCountryCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateEmergencyAddressOptionsIsoCountryCodeEnum] to String,
/// and [decode] dynamic data back to [CreateEmergencyAddressOptionsIsoCountryCodeEnum].
class CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer {
  factory CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer() => _instance ??= const CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer._();

  const CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer._();

  String encode(CreateEmergencyAddressOptionsIsoCountryCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEmergencyAddressOptionsIsoCountryCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEmergencyAddressOptionsIsoCountryCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return CreateEmergencyAddressOptionsIsoCountryCodeEnum.US;
        case r'GB': return CreateEmergencyAddressOptionsIsoCountryCodeEnum.GB;
        case r'AU': return CreateEmergencyAddressOptionsIsoCountryCodeEnum.AU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer] instance.
  static CreateEmergencyAddressOptionsIsoCountryCodeEnumTypeTransformer? _instance;
}


