//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConsentStatusDto {
  /// Returns a new [ConsentStatusDto] instance.
  ConsentStatusDto({
    required this.consented,
  });

  bool consented;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsentStatusDto &&
     other.consented == consented;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consented.hashCode);

  @override
  String toString() => 'ConsentStatusDto[consented=$consented]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'consented'] = this.consented;
    return json;
  }

  /// Returns a new [ConsentStatusDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsentStatusDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsentStatusDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsentStatusDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsentStatusDto(
        consented: mapValueOfType<bool>(json, r'consented')!,
      );
    }
    return null;
  }

  static List<ConsentStatusDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsentStatusDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsentStatusDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsentStatusDto> mapFromJson(dynamic json) {
    final map = <String, ConsentStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsentStatusDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsentStatusDto-objects as value to a dart map
  static Map<String, List<ConsentStatusDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsentStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsentStatusDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'consented',
  };
}

