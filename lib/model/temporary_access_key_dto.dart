//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemporaryAccessKeyDto {
  /// Returns a new [TemporaryAccessKeyDto] instance.
  TemporaryAccessKeyDto({
    required this.key,
    required this.expiresAt,
  });

  String key;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemporaryAccessKeyDto &&
     other.key == key &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'TemporaryAccessKeyDto[key=$key, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TemporaryAccessKeyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemporaryAccessKeyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemporaryAccessKeyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemporaryAccessKeyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemporaryAccessKeyDto(
        key: mapValueOfType<String>(json, r'key')!,
        expiresAt: mapDateTime(json, r'expiresAt', '')!,
      );
    }
    return null;
  }

  static List<TemporaryAccessKeyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemporaryAccessKeyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemporaryAccessKeyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemporaryAccessKeyDto> mapFromJson(dynamic json) {
    final map = <String, TemporaryAccessKeyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemporaryAccessKeyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemporaryAccessKeyDto-objects as value to a dart map
  static Map<String, List<TemporaryAccessKeyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemporaryAccessKeyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemporaryAccessKeyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'expiresAt',
  };
}

