//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResultExceptionCauseSuppressed {
  /// Returns a new [ConnectorSyncRequestResultExceptionCauseSuppressed] instance.
  ConnectorSyncRequestResultExceptionCauseSuppressed({
    this.stackTrace = const [],
    this.message,
    this.localizedMessage,
  });

  List<ConnectorSyncRequestResultExceptionCauseStackTrace> stackTrace;

  String message;

  String localizedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResultExceptionCauseSuppressed &&
     other.stackTrace == stackTrace &&
     other.message == message &&
     other.localizedMessage == localizedMessage;

  @override
  int get hashCode =>
    (stackTrace == null ? 0 : stackTrace.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (localizedMessage == null ? 0 : localizedMessage.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResultExceptionCauseSuppressed[stackTrace=$stackTrace, message=$message, localizedMessage=$localizedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (stackTrace != null) {
      json[r'stackTrace'] = stackTrace;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (localizedMessage != null) {
      json[r'localizedMessage'] = localizedMessage;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResultExceptionCauseSuppressed] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncRequestResultExceptionCauseSuppressed fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncRequestResultExceptionCauseSuppressed(
        stackTrace: ConnectorSyncRequestResultExceptionCauseStackTrace.listFromJson(json[r'stackTrace']),
        message: json[r'message'],
        localizedMessage: json[r'localizedMessage'],
    );

  static List<ConnectorSyncRequestResultExceptionCauseSuppressed> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncRequestResultExceptionCauseSuppressed>[]
      : json.map((v) => ConnectorSyncRequestResultExceptionCauseSuppressed.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncRequestResultExceptionCauseSuppressed> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncRequestResultExceptionCauseSuppressed>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncRequestResultExceptionCauseSuppressed.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResultExceptionCauseSuppressed-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResultExceptionCauseSuppressed>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncRequestResultExceptionCauseSuppressed>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncRequestResultExceptionCauseSuppressed.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

