//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberProjection {
  /// Returns a new [PhoneNumberProjection] instance.
  PhoneNumberProjection({
    required this.userId,
    required this.createdAt,
    required this.phoneNumber,
    required this.phoneCountry,
    this.name,
    required this.id,
  });

  String userId;

  DateTime createdAt;

  String phoneNumber;

  PhoneNumberProjectionPhoneCountryEnum phoneCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberProjection &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.phoneNumber == phoneNumber &&
     other.phoneCountry == phoneCountry &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (createdAt.hashCode) +
    (phoneNumber.hashCode) +
    (phoneCountry.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'PhoneNumberProjection[userId=$userId, createdAt=$createdAt, phoneNumber=$phoneNumber, phoneCountry=$phoneCountry, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'phoneCountry'] = this.phoneCountry;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [PhoneNumberProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberProjection(
        userId: mapValueOfType<String>(json, r'userId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        phoneCountry: PhoneNumberProjectionPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<PhoneNumberProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberProjection> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberProjection-objects as value to a dart map
  static Map<String, List<PhoneNumberProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'createdAt',
    'phoneNumber',
    'phoneCountry',
    'id',
  };
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
  static const AU = PhoneNumberProjectionPhoneCountryEnum._(r'AU');
  static const CA = PhoneNumberProjectionPhoneCountryEnum._(r'CA');
  static const EE = PhoneNumberProjectionPhoneCountryEnum._(r'EE');
  static const HK = PhoneNumberProjectionPhoneCountryEnum._(r'HK');
  static const PL = PhoneNumberProjectionPhoneCountryEnum._(r'PL');
  static const CH = PhoneNumberProjectionPhoneCountryEnum._(r'CH');
  static const PT = PhoneNumberProjectionPhoneCountryEnum._(r'PT');
  static const NL = PhoneNumberProjectionPhoneCountryEnum._(r'NL');
  static const IL = PhoneNumberProjectionPhoneCountryEnum._(r'IL');
  static const SE = PhoneNumberProjectionPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][PhoneNumberProjectionPhoneCountryEnum].
  static const values = <PhoneNumberProjectionPhoneCountryEnum>[
    US,
    GB,
    AU,
    CA,
    EE,
    HK,
    PL,
    CH,
    PT,
    NL,
    IL,
    SE,
  ];

  static PhoneNumberProjectionPhoneCountryEnum? fromJson(dynamic value) => PhoneNumberProjectionPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhoneNumberProjectionPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberProjectionPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberProjectionPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberProjectionPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberProjectionPhoneCountryEnum].
class PhoneNumberProjectionPhoneCountryEnumTypeTransformer {
  factory PhoneNumberProjectionPhoneCountryEnumTypeTransformer() => _instance ??= const PhoneNumberProjectionPhoneCountryEnumTypeTransformer._();

  const PhoneNumberProjectionPhoneCountryEnumTypeTransformer._();

  String encode(PhoneNumberProjectionPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberProjectionPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberProjectionPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhoneNumberProjectionPhoneCountryEnum.US;
        case r'GB': return PhoneNumberProjectionPhoneCountryEnum.GB;
        case r'AU': return PhoneNumberProjectionPhoneCountryEnum.AU;
        case r'CA': return PhoneNumberProjectionPhoneCountryEnum.CA;
        case r'EE': return PhoneNumberProjectionPhoneCountryEnum.EE;
        case r'HK': return PhoneNumberProjectionPhoneCountryEnum.HK;
        case r'PL': return PhoneNumberProjectionPhoneCountryEnum.PL;
        case r'CH': return PhoneNumberProjectionPhoneCountryEnum.CH;
        case r'PT': return PhoneNumberProjectionPhoneCountryEnum.PT;
        case r'NL': return PhoneNumberProjectionPhoneCountryEnum.NL;
        case r'IL': return PhoneNumberProjectionPhoneCountryEnum.IL;
        case r'SE': return PhoneNumberProjectionPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberProjectionPhoneCountryEnumTypeTransformer] instance.
  static PhoneNumberProjectionPhoneCountryEnumTypeTransformer? _instance;
}


