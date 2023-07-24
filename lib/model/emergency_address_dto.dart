//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmergencyAddressDto {
  /// Returns a new [EmergencyAddressDto] instance.
  EmergencyAddressDto({
    required this.id,
    required this.address1,
    required this.phoneCountry,
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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (address1.hashCode) +
    (phoneCountry.hashCode);

  @override
  String toString() => 'EmergencyAddressDto[id=$id, address1=$address1, phoneCountry=$phoneCountry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'address1'] = this.address1;
      json[r'phoneCountry'] = this.phoneCountry;
    return json;
  }

  /// Returns a new [EmergencyAddressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmergencyAddressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmergencyAddressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmergencyAddressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmergencyAddressDto(
        id: mapValueOfType<String>(json, r'id')!,
        address1: mapValueOfType<String>(json, r'address1')!,
        phoneCountry: EmergencyAddressDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
      );
    }
    return null;
  }

  static List<EmergencyAddressDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmergencyAddressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmergencyAddressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmergencyAddressDto> mapFromJson(dynamic json) {
    final map = <String, EmergencyAddressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmergencyAddressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmergencyAddressDto-objects as value to a dart map
  static Map<String, List<EmergencyAddressDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmergencyAddressDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmergencyAddressDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'address1',
    'phoneCountry',
  };
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

  static EmergencyAddressDtoPhoneCountryEnum? fromJson(dynamic value) => EmergencyAddressDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<EmergencyAddressDtoPhoneCountryEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmergencyAddressDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmergencyAddressDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmergencyAddressDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [EmergencyAddressDtoPhoneCountryEnum].
class EmergencyAddressDtoPhoneCountryEnumTypeTransformer {
  factory EmergencyAddressDtoPhoneCountryEnumTypeTransformer() => _instance ??= const EmergencyAddressDtoPhoneCountryEnumTypeTransformer._();

  const EmergencyAddressDtoPhoneCountryEnumTypeTransformer._();

  String encode(EmergencyAddressDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmergencyAddressDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmergencyAddressDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return EmergencyAddressDtoPhoneCountryEnum.US;
        case r'GB': return EmergencyAddressDtoPhoneCountryEnum.GB;
        case r'AU': return EmergencyAddressDtoPhoneCountryEnum.AU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmergencyAddressDtoPhoneCountryEnumTypeTransformer] instance.
  static EmergencyAddressDtoPhoneCountryEnumTypeTransformer? _instance;
}


