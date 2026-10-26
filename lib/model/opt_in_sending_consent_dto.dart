//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OptInSendingConsentDto {
  /// Returns a new [OptInSendingConsentDto] instance.
  OptInSendingConsentDto({
    required this.verificationCodeSent,
    required this.userHasConsented,
    required this.canSend,
  });

  bool verificationCodeSent;

  bool userHasConsented;

  bool canSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptInSendingConsentDto &&
     other.verificationCodeSent == verificationCodeSent &&
     other.userHasConsented == userHasConsented &&
     other.canSend == canSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (verificationCodeSent.hashCode) +
    (userHasConsented.hashCode) +
    (canSend.hashCode);

  @override
  String toString() => 'OptInSendingConsentDto[verificationCodeSent=$verificationCodeSent, userHasConsented=$userHasConsented, canSend=$canSend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'verificationCodeSent'] = this.verificationCodeSent;
      json[r'userHasConsented'] = this.userHasConsented;
      json[r'canSend'] = this.canSend;
    return json;
  }

  /// Returns a new [OptInSendingConsentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptInSendingConsentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptInSendingConsentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptInSendingConsentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptInSendingConsentDto(
        verificationCodeSent: mapValueOfType<bool>(json, r'verificationCodeSent')!,
        userHasConsented: mapValueOfType<bool>(json, r'userHasConsented')!,
        canSend: mapValueOfType<bool>(json, r'canSend')!,
      );
    }
    return null;
  }

  static List<OptInSendingConsentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptInSendingConsentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptInSendingConsentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptInSendingConsentDto> mapFromJson(dynamic json) {
    final map = <String, OptInSendingConsentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptInSendingConsentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptInSendingConsentDto-objects as value to a dart map
  static Map<String, List<OptInSendingConsentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptInSendingConsentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptInSendingConsentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'verificationCodeSent',
    'userHasConsented',
    'canSend',
  };
}

