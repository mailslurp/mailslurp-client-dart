//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxIdsResult {
  /// Returns a new [InboxIdsResult] instance.
  InboxIdsResult({
    this.inboxIds = const [],
  });

  List<String> inboxIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxIdsResult &&
     other.inboxIds == inboxIds;

  @override
  int get hashCode =>
    (inboxIds == null ? 0 : inboxIds.hashCode);

  @override
  String toString() => 'InboxIdsResult[inboxIds=$inboxIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxIds'] = inboxIds;
    return json;
  }

  /// Returns a new [InboxIdsResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxIdsResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxIdsResult(
        inboxIds: json[r'inboxIds'] == null
          ? null
          : (json[r'inboxIds'] as List).cast<String>(),
    );

  static List<InboxIdsResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxIdsResult>[]
      : json.map((v) => InboxIdsResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxIdsResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxIdsResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxIdsResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxIdsResult-objects as value to a dart map
  static Map<String, List<InboxIdsResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxIdsResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxIdsResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

