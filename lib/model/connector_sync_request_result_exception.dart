//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResultException {
  /// Returns a new [ConnectorSyncRequestResultException] instance.
  ConnectorSyncRequestResultException({
    this.cause,
    this.stackTrace = const [],
    this.message,
    this.suppressed = const [],
    this.localizedMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectorSyncRequestResultExceptionCause? cause;

  List<ConnectorSyncRequestResultExceptionCauseStackTraceInner> stackTrace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<ConnectorSyncRequestResultExceptionCause> suppressed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localizedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResultException &&
     other.cause == cause &&
     other.stackTrace == stackTrace &&
     other.message == message &&
     other.suppressed == suppressed &&
     other.localizedMessage == localizedMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cause == null ? 0 : cause!.hashCode) +
    (stackTrace.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (suppressed.hashCode) +
    (localizedMessage == null ? 0 : localizedMessage!.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResultException[cause=$cause, stackTrace=$stackTrace, message=$message, suppressed=$suppressed, localizedMessage=$localizedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cause != null) {
      json[r'cause'] = this.cause;
    } else {
      json[r'cause'] = null;
    }
      json[r'stackTrace'] = this.stackTrace;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'suppressed'] = this.suppressed;
    if (this.localizedMessage != null) {
      json[r'localizedMessage'] = this.localizedMessage;
    } else {
      json[r'localizedMessage'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResultException] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncRequestResultException? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncRequestResultException[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncRequestResultException[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncRequestResultException(
        cause: ConnectorSyncRequestResultExceptionCause.fromJson(json[r'cause']),
        stackTrace: ConnectorSyncRequestResultExceptionCauseStackTraceInner.listFromJson(json[r'stackTrace']),
        message: mapValueOfType<String>(json, r'message'),
        suppressed: ConnectorSyncRequestResultExceptionCause.listFromJson(json[r'suppressed']),
        localizedMessage: mapValueOfType<String>(json, r'localizedMessage'),
      );
    }
    return null;
  }

  static List<ConnectorSyncRequestResultException> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncRequestResultException>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncRequestResultException.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncRequestResultException> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncRequestResultException>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncRequestResultException.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResultException-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResultException>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncRequestResultException>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncRequestResultException.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

