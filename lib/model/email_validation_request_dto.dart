//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailValidationRequestDto {
  /// Returns a new [EmailValidationRequestDto] instance.
  EmailValidationRequestDto({
    required this.id,
    required this.userId,
    required this.emailAddress,
    required this.isValid,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String emailAddress;

  bool isValid;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailValidationRequestDto &&
     other.id == id &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.isValid == isValid &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (emailAddress.hashCode) +
    (isValid.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailValidationRequestDto[id=$id, userId=$userId, emailAddress=$emailAddress, isValid=$isValid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'emailAddress'] = this.emailAddress;
      json[r'isValid'] = this.isValid;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailValidationRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailValidationRequestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailValidationRequestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailValidationRequestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailValidationRequestDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailValidationRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailValidationRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailValidationRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailValidationRequestDto> mapFromJson(dynamic json) {
    final map = <String, EmailValidationRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailValidationRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailValidationRequestDto-objects as value to a dart map
  static Map<String, List<EmailValidationRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailValidationRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailValidationRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'emailAddress',
    'isValid',
    'createdAt',
    'updatedAt',
  };
}

