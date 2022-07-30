//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxByNameResult {
  /// Returns a new [InboxByNameResult] instance.
  InboxByNameResult({
    this.inboxId,
    @required this.exists,
  });

  String inboxId;

  bool exists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxByNameResult &&
     other.inboxId == inboxId &&
     other.exists == exists;

  @override
  int get hashCode =>
    (inboxId == null ? 0 : inboxId.hashCode) +
    (exists == null ? 0 : exists.hashCode);

  @override
  String toString() => 'InboxByNameResult[inboxId=$inboxId, exists=$exists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'exists'] = exists;
    return json;
  }

  /// Returns a new [InboxByNameResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxByNameResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxByNameResult(
        inboxId: json[r'inboxId'],
        exists: json[r'exists'],
    );

  static List<InboxByNameResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxByNameResult>[]
      : json.map((v) => InboxByNameResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxByNameResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxByNameResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxByNameResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxByNameResult-objects as value to a dart map
  static Map<String, List<InboxByNameResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxByNameResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxByNameResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

