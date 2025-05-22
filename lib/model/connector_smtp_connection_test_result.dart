//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSmtpConnectionTestResult {
  /// Returns a new [ConnectorSmtpConnectionTestResult] instance.
  ConnectorSmtpConnectionTestResult({
    this.error,
    required this.success,
    this.message,
    this.logs = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  bool success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<String> logs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSmtpConnectionTestResult &&
     other.error == error &&
     other.success == success &&
     other.message == message &&
     other.logs == logs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (success.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (logs.hashCode);

  @override
  String toString() => 'ConnectorSmtpConnectionTestResult[error=$error, success=$success, message=$message, logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'success'] = this.success;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'logs'] = this.logs;
    return json;
  }

  /// Returns a new [ConnectorSmtpConnectionTestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSmtpConnectionTestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSmtpConnectionTestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSmtpConnectionTestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSmtpConnectionTestResult(
        error: mapValueOfType<String>(json, r'error'),
        success: mapValueOfType<bool>(json, r'success')!,
        message: mapValueOfType<String>(json, r'message'),
        logs: json[r'logs'] is List
            ? (json[r'logs'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ConnectorSmtpConnectionTestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSmtpConnectionTestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSmtpConnectionTestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSmtpConnectionTestResult> mapFromJson(dynamic json) {
    final map = <String, ConnectorSmtpConnectionTestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSmtpConnectionTestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSmtpConnectionTestResult-objects as value to a dart map
  static Map<String, List<ConnectorSmtpConnectionTestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSmtpConnectionTestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSmtpConnectionTestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

