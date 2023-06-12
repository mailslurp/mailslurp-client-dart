//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncResult {
  /// Returns a new [ConnectorSyncResult] instance.
  ConnectorSyncResult({
    @required this.emailSyncCount,
    this.logLines = const [],
  });

  int emailSyncCount;

  List<String> logLines;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncResult &&
     other.emailSyncCount == emailSyncCount &&
     other.logLines == logLines;

  @override
  int get hashCode =>
    (emailSyncCount == null ? 0 : emailSyncCount.hashCode) +
    (logLines == null ? 0 : logLines.hashCode);

  @override
  String toString() => 'ConnectorSyncResult[emailSyncCount=$emailSyncCount, logLines=$logLines]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailSyncCount'] = emailSyncCount;
    if (logLines != null) {
      json[r'logLines'] = logLines;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncResult(
        emailSyncCount: json[r'emailSyncCount'],
        logLines: json[r'logLines'] == null
          ? null
          : (json[r'logLines'] as List).cast<String>(),
    );

  static List<ConnectorSyncResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncResult>[]
      : json.map((v) => ConnectorSyncResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncResult-objects as value to a dart map
  static Map<String, List<ConnectorSyncResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

