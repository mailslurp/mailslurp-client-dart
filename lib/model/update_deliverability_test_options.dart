//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDeliverabilityTestOptions {
  /// Returns a new [UpdateDeliverabilityTestOptions] instance.
  UpdateDeliverabilityTestOptions({
    this.name,
    this.description,
    this.startAt,
    this.maxDurationSeconds,
    this.clearMaxDuration,
    this.successThresholdPercent,
    this.clearSuccessThreshold,
    this.expectations = const [],
  });

  /// Optional updated name
  String? name;

  /// Optional updated description
  String? description;

  /// Optional updated receive-window start time. Only applied while test is not terminal.
  DateTime? startAt;

  /// Optional updated timeout in seconds
  ///
  /// Minimum value: 1
  int? maxDurationSeconds;

  /// Set true to clear timeout. If true, maxDurationSeconds is ignored for this request.
  bool? clearMaxDuration;

  /// Optional updated acceptable success threshold percentage (0,100].
  ///
  /// Minimum value: 0.0
  /// Maximum value: 100.0
  double? successThresholdPercent;

  /// Set true to clear success threshold. If true, successThresholdPercent is ignored for this request.
  bool? clearSuccessThreshold;

  /// Optional replacement expectations
  List<DeliverabilityExpectation>? expectations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDeliverabilityTestOptions &&
     other.name == name &&
     other.description == description &&
     other.startAt == startAt &&
     other.maxDurationSeconds == maxDurationSeconds &&
     other.clearMaxDuration == clearMaxDuration &&
     other.successThresholdPercent == successThresholdPercent &&
     other.clearSuccessThreshold == clearSuccessThreshold &&
     other.expectations == expectations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startAt == null ? 0 : startAt!.hashCode) +
    (maxDurationSeconds == null ? 0 : maxDurationSeconds!.hashCode) +
    (clearMaxDuration == null ? 0 : clearMaxDuration!.hashCode) +
    (successThresholdPercent == null ? 0 : successThresholdPercent!.hashCode) +
    (clearSuccessThreshold == null ? 0 : clearSuccessThreshold!.hashCode) +
    (expectations == null ? 0 : expectations!.hashCode);

  @override
  String toString() => 'UpdateDeliverabilityTestOptions[name=$name, description=$description, startAt=$startAt, maxDurationSeconds=$maxDurationSeconds, clearMaxDuration=$clearMaxDuration, successThresholdPercent=$successThresholdPercent, clearSuccessThreshold=$clearSuccessThreshold, expectations=$expectations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.startAt != null) {
      json[r'startAt'] = this.startAt!.toUtc().toIso8601String();
    } else {
      json[r'startAt'] = null;
    }
    if (this.maxDurationSeconds != null) {
      json[r'maxDurationSeconds'] = this.maxDurationSeconds;
    } else {
      json[r'maxDurationSeconds'] = null;
    }
    if (this.clearMaxDuration != null) {
      json[r'clearMaxDuration'] = this.clearMaxDuration;
    } else {
      json[r'clearMaxDuration'] = null;
    }
    if (this.successThresholdPercent != null) {
      json[r'successThresholdPercent'] = this.successThresholdPercent;
    } else {
      json[r'successThresholdPercent'] = null;
    }
    if (this.clearSuccessThreshold != null) {
      json[r'clearSuccessThreshold'] = this.clearSuccessThreshold;
    } else {
      json[r'clearSuccessThreshold'] = null;
    }
    if (this.expectations != null) {
      json[r'expectations'] = this.expectations;
    } else {
      json[r'expectations'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateDeliverabilityTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDeliverabilityTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDeliverabilityTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDeliverabilityTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDeliverabilityTestOptions(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        startAt: mapDateTime(json, r'startAt', ''),
        maxDurationSeconds: mapValueOfType<int>(json, r'maxDurationSeconds'),
        clearMaxDuration: mapValueOfType<bool>(json, r'clearMaxDuration'),
        successThresholdPercent: mapValueOfType<double>(json, r'successThresholdPercent'),
        clearSuccessThreshold: mapValueOfType<bool>(json, r'clearSuccessThreshold'),
        expectations: DeliverabilityExpectation.listFromJson(json[r'expectations']),
      );
    }
    return null;
  }

  static List<UpdateDeliverabilityTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDeliverabilityTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDeliverabilityTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDeliverabilityTestOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateDeliverabilityTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDeliverabilityTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDeliverabilityTestOptions-objects as value to a dart map
  static Map<String, List<UpdateDeliverabilityTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDeliverabilityTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDeliverabilityTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

