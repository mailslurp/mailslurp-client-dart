//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobErrorSummaryDto {
  /// Returns a new [DeliverabilitySimulationJobErrorSummaryDto] instance.
  DeliverabilitySimulationJobErrorSummaryDto({
    this.lastError,
    this.topErrors = const [],
  });

  String? lastError;

  List<DeliverabilitySimulationJobTopErrorDto> topErrors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobErrorSummaryDto &&
     other.lastError == lastError &&
     other.topErrors == topErrors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lastError == null ? 0 : lastError!.hashCode) +
    (topErrors.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobErrorSummaryDto[lastError=$lastError, topErrors=$topErrors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lastError != null) {
      json[r'lastError'] = this.lastError;
    } else {
      json[r'lastError'] = null;
    }
      json[r'topErrors'] = this.topErrors;
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobErrorSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobErrorSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobErrorSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobErrorSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobErrorSummaryDto(
        lastError: mapValueOfType<String>(json, r'lastError'),
        topErrors: DeliverabilitySimulationJobTopErrorDto.listFromJson(json[r'topErrors']),
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobErrorSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobErrorSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobErrorSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobErrorSummaryDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobErrorSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobErrorSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobErrorSummaryDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobErrorSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobErrorSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobErrorSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topErrors',
  };
}

