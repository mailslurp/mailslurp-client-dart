//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StructuredContentResultDto {
  /// Returns a new [StructuredContentResultDto] instance.
  StructuredContentResultDto({
    required this.result,
  });

  Object result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StructuredContentResultDto &&
     other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (result.hashCode);

  @override
  String toString() => 'StructuredContentResultDto[result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'result'] = this.result;
    return json;
  }

  /// Returns a new [StructuredContentResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StructuredContentResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StructuredContentResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StructuredContentResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StructuredContentResultDto(
        result: mapValueOfType<Object>(json, r'result')!,
      );
    }
    return null;
  }

  static List<StructuredContentResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StructuredContentResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StructuredContentResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StructuredContentResultDto> mapFromJson(dynamic json) {
    final map = <String, StructuredContentResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StructuredContentResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StructuredContentResultDto-objects as value to a dart map
  static Map<String, List<StructuredContentResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StructuredContentResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StructuredContentResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'result',
  };
}

