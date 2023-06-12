//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResultExceptionCause {
  /// Returns a new [ConnectorSyncRequestResultExceptionCause] instance.
  ConnectorSyncRequestResultExceptionCause({
    this.stackTrace = const [],
    this.message,
    this.suppressed = const [],
    this.localizedMessage,
  });

  List<ConnectorSyncRequestResultExceptionCauseStackTrace> stackTrace;

  String message;

  List<ConnectorSyncRequestResultExceptionCauseSuppressed> suppressed;

  String localizedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResultExceptionCause &&
     other.stackTrace == stackTrace &&
     other.message == message &&
     other.suppressed == suppressed &&
     other.localizedMessage == localizedMessage;

  @override
  int get hashCode =>
    (stackTrace == null ? 0 : stackTrace.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (suppressed == null ? 0 : suppressed.hashCode) +
    (localizedMessage == null ? 0 : localizedMessage.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResultExceptionCause[stackTrace=$stackTrace, message=$message, suppressed=$suppressed, localizedMessage=$localizedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (stackTrace != null) {
      json[r'stackTrace'] = stackTrace;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (suppressed != null) {
      json[r'suppressed'] = suppressed;
    }
    if (localizedMessage != null) {
      json[r'localizedMessage'] = localizedMessage;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResultExceptionCause] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncRequestResultExceptionCause fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncRequestResultExceptionCause(
        stackTrace: ConnectorSyncRequestResultExceptionCauseStackTrace.listFromJson(json[r'stackTrace']),
        message: json[r'message'],
        suppressed: ConnectorSyncRequestResultExceptionCauseSuppressed.listFromJson(json[r'suppressed']),
        localizedMessage: json[r'localizedMessage'],
    );

  static List<ConnectorSyncRequestResultExceptionCause> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncRequestResultExceptionCause>[]
      : json.map((v) => ConnectorSyncRequestResultExceptionCause.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncRequestResultExceptionCause> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncRequestResultExceptionCause>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncRequestResultExceptionCause.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResultExceptionCause-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResultExceptionCause>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncRequestResultExceptionCause>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncRequestResultExceptionCause.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

