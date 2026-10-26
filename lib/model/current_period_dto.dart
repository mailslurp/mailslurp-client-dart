//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurrentPeriodDto {
  /// Returns a new [CurrentPeriodDto] instance.
  CurrentPeriodDto({
    required this.currentPeriodStart,
    required this.currentPeriodEnd,
  });

  DateTime currentPeriodStart;

  DateTime currentPeriodEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurrentPeriodDto &&
     other.currentPeriodStart == currentPeriodStart &&
     other.currentPeriodEnd == currentPeriodEnd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentPeriodStart.hashCode) +
    (currentPeriodEnd.hashCode);

  @override
  String toString() => 'CurrentPeriodDto[currentPeriodStart=$currentPeriodStart, currentPeriodEnd=$currentPeriodEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'currentPeriodStart'] = this.currentPeriodStart.toUtc().toIso8601String();
      json[r'currentPeriodEnd'] = this.currentPeriodEnd.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CurrentPeriodDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurrentPeriodDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurrentPeriodDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurrentPeriodDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurrentPeriodDto(
        currentPeriodStart: mapDateTime(json, r'currentPeriodStart', '')!,
        currentPeriodEnd: mapDateTime(json, r'currentPeriodEnd', '')!,
      );
    }
    return null;
  }

  static List<CurrentPeriodDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurrentPeriodDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurrentPeriodDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurrentPeriodDto> mapFromJson(dynamic json) {
    final map = <String, CurrentPeriodDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurrentPeriodDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurrentPeriodDto-objects as value to a dart map
  static Map<String, List<CurrentPeriodDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurrentPeriodDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurrentPeriodDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'currentPeriodStart',
    'currentPeriodEnd',
  };
}

