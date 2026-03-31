//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberLineTypeIntelligenceDto {
  /// Returns a new [PhoneNumberLineTypeIntelligenceDto] instance.
  PhoneNumberLineTypeIntelligenceDto({
    this.type,
    this.carrierName,
    this.mobileCountryCode,
    this.mobileNetworkCode,
    this.errorCode,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileCountryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNetworkCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errorCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberLineTypeIntelligenceDto &&
     other.type == type &&
     other.carrierName == carrierName &&
     other.mobileCountryCode == mobileCountryCode &&
     other.mobileNetworkCode == mobileNetworkCode &&
     other.errorCode == errorCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (mobileCountryCode == null ? 0 : mobileCountryCode!.hashCode) +
    (mobileNetworkCode == null ? 0 : mobileNetworkCode!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode);

  @override
  String toString() => 'PhoneNumberLineTypeIntelligenceDto[type=$type, carrierName=$carrierName, mobileCountryCode=$mobileCountryCode, mobileNetworkCode=$mobileNetworkCode, errorCode=$errorCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.carrierName != null) {
      json[r'carrierName'] = this.carrierName;
    } else {
      json[r'carrierName'] = null;
    }
    if (this.mobileCountryCode != null) {
      json[r'mobileCountryCode'] = this.mobileCountryCode;
    } else {
      json[r'mobileCountryCode'] = null;
    }
    if (this.mobileNetworkCode != null) {
      json[r'mobileNetworkCode'] = this.mobileNetworkCode;
    } else {
      json[r'mobileNetworkCode'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    return json;
  }

  /// Returns a new [PhoneNumberLineTypeIntelligenceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberLineTypeIntelligenceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberLineTypeIntelligenceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberLineTypeIntelligenceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberLineTypeIntelligenceDto(
        type: mapValueOfType<String>(json, r'type'),
        carrierName: mapValueOfType<String>(json, r'carrierName'),
        mobileCountryCode: mapValueOfType<String>(json, r'mobileCountryCode'),
        mobileNetworkCode: mapValueOfType<String>(json, r'mobileNetworkCode'),
        errorCode: mapValueOfType<int>(json, r'errorCode'),
      );
    }
    return null;
  }

  static List<PhoneNumberLineTypeIntelligenceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberLineTypeIntelligenceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberLineTypeIntelligenceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberLineTypeIntelligenceDto> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberLineTypeIntelligenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberLineTypeIntelligenceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberLineTypeIntelligenceDto-objects as value to a dart map
  static Map<String, List<PhoneNumberLineTypeIntelligenceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberLineTypeIntelligenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberLineTypeIntelligenceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

