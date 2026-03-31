//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobTopErrorDto {
  /// Returns a new [DeliverabilitySimulationJobTopErrorDto] instance.
  DeliverabilitySimulationJobTopErrorDto({
    required this.message,
    required this.count,
  });

  String message;

  int count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobTopErrorDto &&
     other.message == message &&
     other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (count.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobTopErrorDto[message=$message, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'count'] = this.count;
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobTopErrorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobTopErrorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobTopErrorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobTopErrorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobTopErrorDto(
        message: mapValueOfType<String>(json, r'message')!,
        count: mapValueOfType<int>(json, r'count')!,
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobTopErrorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobTopErrorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobTopErrorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobTopErrorDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobTopErrorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobTopErrorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobTopErrorDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobTopErrorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobTopErrorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobTopErrorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'count',
  };
}

