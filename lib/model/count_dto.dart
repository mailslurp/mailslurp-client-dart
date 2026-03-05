//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CountDto {
  /// Returns a new [CountDto] instance.
  CountDto({
    required this.totalElements,
  });

  int totalElements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CountDto &&
     other.totalElements == totalElements;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalElements.hashCode);

  @override
  String toString() => 'CountDto[totalElements=$totalElements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalElements'] = this.totalElements;
    return json;
  }

  /// Returns a new [CountDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CountDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CountDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CountDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CountDto(
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
      );
    }
    return null;
  }

  static List<CountDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CountDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CountDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CountDto> mapFromJson(dynamic json) {
    final map = <String, CountDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CountDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CountDto-objects as value to a dart map
  static Map<String, List<CountDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CountDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CountDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalElements',
  };
}

