//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResult {
  /// Returns a new [ConnectorSyncRequestResult] instance.
  ConnectorSyncRequestResult({
    this.syncResult,
    this.exception,
    this.eventId,
  });

  ConnectorSyncResult syncResult;

  ConnectorSyncRequestResultException exception;

  String eventId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResult &&
     other.syncResult == syncResult &&
     other.exception == exception &&
     other.eventId == eventId;

  @override
  int get hashCode =>
    (syncResult == null ? 0 : syncResult.hashCode) +
    (exception == null ? 0 : exception.hashCode) +
    (eventId == null ? 0 : eventId.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResult[syncResult=$syncResult, exception=$exception, eventId=$eventId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (syncResult != null) {
      json[r'syncResult'] = syncResult;
    }
    if (exception != null) {
      json[r'exception'] = exception;
    }
    if (eventId != null) {
      json[r'eventId'] = eventId;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncRequestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncRequestResult(
        syncResult: ConnectorSyncResult.fromJson(json[r'syncResult']),
        exception: ConnectorSyncRequestResultException.fromJson(json[r'exception']),
        eventId: json[r'eventId'],
    );

  static List<ConnectorSyncRequestResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncRequestResult>[]
      : json.map((v) => ConnectorSyncRequestResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncRequestResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncRequestResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncRequestResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResult-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncRequestResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncRequestResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

