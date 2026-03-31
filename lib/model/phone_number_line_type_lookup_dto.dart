//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberLineTypeLookupDto {
  /// Returns a new [PhoneNumberLineTypeLookupDto] instance.
  PhoneNumberLineTypeLookupDto({
    required this.phoneNumber,
    this.nationalFormat,
    this.countryCode,
    this.countryPrefix,
    required this.isValid,
    this.validationErrors = const [],
    this.lineTypeIntelligence,
    required this.mailslurpPhoneNumber,
  });

  String phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nationalFormat;

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

  bool isValid;

  List<String> validationErrors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PhoneNumberLineTypeIntelligenceDto? lineTypeIntelligence;

  bool mailslurpPhoneNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberLineTypeLookupDto &&
     other.phoneNumber == phoneNumber &&
     other.nationalFormat == nationalFormat &&
     other.countryCode == countryCode &&
     other.countryPrefix == countryPrefix &&
     other.isValid == isValid &&
     other.validationErrors == validationErrors &&
     other.lineTypeIntelligence == lineTypeIntelligence &&
     other.mailslurpPhoneNumber == mailslurpPhoneNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneNumber.hashCode) +
    (nationalFormat == null ? 0 : nationalFormat!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (countryPrefix == null ? 0 : countryPrefix!.hashCode) +
    (isValid.hashCode) +
    (validationErrors.hashCode) +
    (lineTypeIntelligence == null ? 0 : lineTypeIntelligence!.hashCode) +
    (mailslurpPhoneNumber.hashCode);

  @override
  String toString() => 'PhoneNumberLineTypeLookupDto[phoneNumber=$phoneNumber, nationalFormat=$nationalFormat, countryCode=$countryCode, countryPrefix=$countryPrefix, isValid=$isValid, validationErrors=$validationErrors, lineTypeIntelligence=$lineTypeIntelligence, mailslurpPhoneNumber=$mailslurpPhoneNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumber'] = this.phoneNumber;
    if (this.nationalFormat != null) {
      json[r'nationalFormat'] = this.nationalFormat;
    } else {
      json[r'nationalFormat'] = null;
    }
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
      json[r'isValid'] = this.isValid;
      json[r'validationErrors'] = this.validationErrors;
    if (this.lineTypeIntelligence != null) {
      json[r'lineTypeIntelligence'] = this.lineTypeIntelligence;
    } else {
      json[r'lineTypeIntelligence'] = null;
    }
      json[r'mailslurpPhoneNumber'] = this.mailslurpPhoneNumber;
    return json;
  }

  /// Returns a new [PhoneNumberLineTypeLookupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberLineTypeLookupDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberLineTypeLookupDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberLineTypeLookupDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberLineTypeLookupDto(
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        nationalFormat: mapValueOfType<String>(json, r'nationalFormat'),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        countryPrefix: mapValueOfType<String>(json, r'countryPrefix'),
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        validationErrors: json[r'validationErrors'] is List
            ? (json[r'validationErrors'] as List).cast<String>()
            : const [],
        lineTypeIntelligence: PhoneNumberLineTypeIntelligenceDto.fromJson(json[r'lineTypeIntelligence']),
        mailslurpPhoneNumber: mapValueOfType<bool>(json, r'mailslurpPhoneNumber')!,
      );
    }
    return null;
  }

  static List<PhoneNumberLineTypeLookupDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberLineTypeLookupDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberLineTypeLookupDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberLineTypeLookupDto> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberLineTypeLookupDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberLineTypeLookupDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberLineTypeLookupDto-objects as value to a dart map
  static Map<String, List<PhoneNumberLineTypeLookupDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberLineTypeLookupDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberLineTypeLookupDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
    'isValid',
    'mailslurpPhoneNumber',
  };
}

