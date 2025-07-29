//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncResult {
  /// Returns a new [ConnectorSyncResult] instance.
  ConnectorSyncResult({
    required this.emailSyncCount,
    this.logs = const [],
    this.emailIds = const [],
  });

  int emailSyncCount;

  List<String> logs;

  List<String> emailIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncResult &&
     other.emailSyncCount == emailSyncCount &&
     other.logs == logs &&
     other.emailIds == emailIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailSyncCount.hashCode) +
    (logs.hashCode) +
    (emailIds.hashCode);

  @override
  String toString() => 'ConnectorSyncResult[emailSyncCount=$emailSyncCount, logs=$logs, emailIds=$emailIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailSyncCount'] = this.emailSyncCount;
      json[r'logs'] = this.logs;
      json[r'emailIds'] = this.emailIds;
    return json;
  }

  /// Returns a new [ConnectorSyncResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncResult(
        emailSyncCount: mapValueOfType<int>(json, r'emailSyncCount')!,
        logs: json[r'logs'] is List
            ? (json[r'logs'] as List).cast<String>()
            : const [],
        emailIds: json[r'emailIds'] is List
            ? (json[r'emailIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ConnectorSyncResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncResult> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncResult-objects as value to a dart map
  static Map<String, List<ConnectorSyncResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailSyncCount',
  };
}

