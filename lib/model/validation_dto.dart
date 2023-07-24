//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationDto {
  /// Returns a new [ValidationDto] instance.
  ValidationDto({
    required this.emailId,
    required this.html,
  });

  /// ID of the email validated
  String emailId;

  HTMLValidationResult html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationDto &&
     other.emailId == emailId &&
     other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailId.hashCode) +
    (html.hashCode);

  @override
  String toString() => 'ValidationDto[emailId=$emailId, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailId'] = this.emailId;
      json[r'html'] = this.html;
    return json;
  }

  /// Returns a new [ValidationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationDto(
        emailId: mapValueOfType<String>(json, r'emailId')!,
        html: HTMLValidationResult.fromJson(json[r'html'])!,
      );
    }
    return null;
  }

  static List<ValidationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationDto> mapFromJson(dynamic json) {
    final map = <String, ValidationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationDto-objects as value to a dart map
  static Map<String, List<ValidationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailId',
    'html',
  };
}

