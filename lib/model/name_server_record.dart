//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NameServerRecord {
  /// Returns a new [NameServerRecord] instance.
  NameServerRecord({
    required this.raw,
    required this.recordType,
    required this.priority,
    required this.value,
  });

  String raw;

  String recordType;

  String priority;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NameServerRecord &&
     other.raw == raw &&
     other.recordType == recordType &&
     other.priority == priority &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (raw.hashCode) +
    (recordType.hashCode) +
    (priority.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'NameServerRecord[raw=$raw, recordType=$recordType, priority=$priority, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'raw'] = this.raw;
      json[r'recordType'] = this.recordType;
      json[r'priority'] = this.priority;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [NameServerRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NameServerRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NameServerRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NameServerRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NameServerRecord(
        raw: mapValueOfType<String>(json, r'raw')!,
        recordType: mapValueOfType<String>(json, r'recordType')!,
        priority: mapValueOfType<String>(json, r'priority')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<NameServerRecord>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NameServerRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NameServerRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NameServerRecord> mapFromJson(dynamic json) {
    final map = <String, NameServerRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NameServerRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NameServerRecord-objects as value to a dart map
  static Map<String, List<NameServerRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NameServerRecord>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NameServerRecord.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'raw',
    'recordType',
    'priority',
    'value',
  };
}

