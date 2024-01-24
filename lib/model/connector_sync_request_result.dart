//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResult {
  /// Returns a new [ConnectorSyncRequestResult] instance.
  ConnectorSyncRequestResult({
    this.syncResult,
    this.exception,
    this.eventId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectorSyncResult? syncResult;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectorSyncRequestResultException? exception;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResult &&
     other.syncResult == syncResult &&
     other.exception == exception &&
     other.eventId == eventId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncResult == null ? 0 : syncResult!.hashCode) +
    (exception == null ? 0 : exception!.hashCode) +
    (eventId == null ? 0 : eventId!.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResult[syncResult=$syncResult, exception=$exception, eventId=$eventId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.syncResult != null) {
      json[r'syncResult'] = this.syncResult;
    } else {
      json[r'syncResult'] = null;
    }
    if (this.exception != null) {
      json[r'exception'] = this.exception;
    } else {
      json[r'exception'] = null;
    }
    if (this.eventId != null) {
      json[r'eventId'] = this.eventId;
    } else {
      json[r'eventId'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncRequestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncRequestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncRequestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncRequestResult(
        syncResult: ConnectorSyncResult.fromJson(json[r'syncResult']),
        exception: ConnectorSyncRequestResultException.fromJson(json[r'exception']),
        eventId: mapValueOfType<String>(json, r'eventId'),
      );
    }
    return null;
  }

  static List<ConnectorSyncRequestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncRequestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncRequestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncRequestResult> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncRequestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncRequestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResult-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncRequestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncRequestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

