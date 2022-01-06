//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlushExpiredInboxesResult {
  /// Returns a new [FlushExpiredInboxesResult] instance.
  FlushExpiredInboxesResult({
    this.inboxIds = const [],
    this.expireBefore,
  });

  List<String> inboxIds;

  DateTime expireBefore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlushExpiredInboxesResult &&
     other.inboxIds == inboxIds &&
     other.expireBefore == expireBefore;

  @override
  int get hashCode =>
    (inboxIds == null ? 0 : inboxIds.hashCode) +
    (expireBefore == null ? 0 : expireBefore.hashCode);

  @override
  String toString() => 'FlushExpiredInboxesResult[inboxIds=$inboxIds, expireBefore=$expireBefore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (inboxIds != null) {
      json[r'inboxIds'] = inboxIds;
    }
    if (expireBefore != null) {
      json[r'expireBefore'] = expireBefore.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [FlushExpiredInboxesResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FlushExpiredInboxesResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FlushExpiredInboxesResult(
        inboxIds: json[r'inboxIds'] == null
          ? null
          : (json[r'inboxIds'] as List).cast<String>(),
        expireBefore: json[r'expireBefore'] == null
          ? null
          : DateTime.parse(json[r'expireBefore']),
    );

  static List<FlushExpiredInboxesResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FlushExpiredInboxesResult>[]
      : json.map((v) => FlushExpiredInboxesResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, FlushExpiredInboxesResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FlushExpiredInboxesResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FlushExpiredInboxesResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FlushExpiredInboxesResult-objects as value to a dart map
  static Map<String, List<FlushExpiredInboxesResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FlushExpiredInboxesResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FlushExpiredInboxesResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

