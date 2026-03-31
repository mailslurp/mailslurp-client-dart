//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberValidationDto {
  /// Returns a new [PhoneNumberValidationDto] instance.
  PhoneNumberValidationDto({
    this.countryCode,
    this.countryPrefix,
    required this.phoneNumber,
    required this.isValid,
    this.validationErrors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryPrefix;

  String phoneNumber;

  bool isValid;

  List<String> validationErrors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberValidationDto &&
     other.countryCode == countryCode &&
     other.countryPrefix == countryPrefix &&
     other.phoneNumber == phoneNumber &&
     other.isValid == isValid &&
     other.validationErrors == validationErrors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (countryPrefix == null ? 0 : countryPrefix!.hashCode) +
    (phoneNumber.hashCode) +
    (isValid.hashCode) +
    (validationErrors.hashCode);

  @override
  String toString() => 'PhoneNumberValidationDto[countryCode=$countryCode, countryPrefix=$countryPrefix, phoneNumber=$phoneNumber, isValid=$isValid, validationErrors=$validationErrors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.countryCode != null) {
      json[r'countryCode'] = this.countryCode;
    } else {
      json[r'countryCode'] = null;
    }
    if (this.countryPrefix != null) {
      json[r'countryPrefix'] = this.countryPrefix;
    } else {
      json[r'countryPrefix'] = null;
    }
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'isValid'] = this.isValid;
      json[r'validationErrors'] = this.validationErrors;
    return json;
  }

  /// Returns a new [PhoneNumberValidationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberValidationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberValidationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberValidationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberValidationDto(
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        countryPrefix: mapValueOfType<String>(json, r'countryPrefix'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        validationErrors: json[r'validationErrors'] is List
            ? (json[r'validationErrors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<PhoneNumberValidationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberValidationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberValidationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberValidationDto> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberValidationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberValidationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberValidationDto-objects as value to a dart map
  static Map<String, List<PhoneNumberValidationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberValidationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberValidationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
    'isValid',
  };
}

