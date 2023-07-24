//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainIssuesDto {
  /// Returns a new [DomainIssuesDto] instance.
  DomainIssuesDto({
    required this.hasIssues,
  });

  bool hasIssues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainIssuesDto &&
     other.hasIssues == hasIssues;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hasIssues.hashCode);

  @override
  String toString() => 'DomainIssuesDto[hasIssues=$hasIssues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hasIssues'] = this.hasIssues;
    return json;
  }

  /// Returns a new [DomainIssuesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainIssuesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainIssuesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainIssuesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainIssuesDto(
        hasIssues: mapValueOfType<bool>(json, r'hasIssues')!,
      );
    }
    return null;
  }

  static List<DomainIssuesDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainIssuesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainIssuesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainIssuesDto> mapFromJson(dynamic json) {
    final map = <String, DomainIssuesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainIssuesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainIssuesDto-objects as value to a dart map
  static Map<String, List<DomainIssuesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainIssuesDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainIssuesDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hasIssues',
  };
}

