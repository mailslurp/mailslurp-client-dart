//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePlanDto {
  /// Returns a new [PhonePlanDto] instance.
  PhonePlanDto({
    required this.id,
    required this.userId,
    required this.phoneCountry,
    required this.createdAt,
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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (phoneCountry.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'PhonePlanDto[id=$id, userId=$userId, phoneCountry=$phoneCountry, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'phoneCountry'] = this.phoneCountry;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PhonePlanDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePlanDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePlanDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePlanDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePlanDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneCountry: PhonePlanDtoPhoneCountryEnum.fromJson(json[r'phoneCountry'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<PhonePlanDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePlanDto> mapFromJson(dynamic json) {
    final map = <String, PhonePlanDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePlanDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePlanDto-objects as value to a dart map
  static Map<String, List<PhonePlanDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePlanDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePlanDto.listFromJson(entry.value, growable: growable,);
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
    'userId',
    'phoneCountry',
    'createdAt',
  };
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

  static PhonePlanDtoPhoneCountryEnum? fromJson(dynamic value) => PhonePlanDtoPhoneCountryEnumTypeTransformer().decode(value);

  static List<PhonePlanDtoPhoneCountryEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePlanDtoPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePlanDtoPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhonePlanDtoPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [PhonePlanDtoPhoneCountryEnum].
class PhonePlanDtoPhoneCountryEnumTypeTransformer {
  factory PhonePlanDtoPhoneCountryEnumTypeTransformer() => _instance ??= const PhonePlanDtoPhoneCountryEnumTypeTransformer._();

  const PhonePlanDtoPhoneCountryEnumTypeTransformer._();

  String encode(PhonePlanDtoPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhonePlanDtoPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhonePlanDtoPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return PhonePlanDtoPhoneCountryEnum.US;
        case r'GB': return PhonePlanDtoPhoneCountryEnum.GB;
        case r'AU': return PhonePlanDtoPhoneCountryEnum.AU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhonePlanDtoPhoneCountryEnumTypeTransformer] instance.
  static PhonePlanDtoPhoneCountryEnumTypeTransformer? _instance;
}


