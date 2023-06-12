//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxByEmailAddressResult {
  /// Returns a new [InboxByEmailAddressResult] instance.
  InboxByEmailAddressResult({
    this.inboxId,
    @required this.exists,
  });

  String inboxId;

  bool exists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxByEmailAddressResult &&
     other.inboxId == inboxId &&
     other.exists == exists;

  @override
  int get hashCode =>
    (inboxId == null ? 0 : inboxId.hashCode) +
    (exists == null ? 0 : exists.hashCode);

  @override
  String toString() => 'InboxByEmailAddressResult[inboxId=$inboxId, exists=$exists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'exists'] = exists;
    return json;
  }

  /// Returns a new [InboxByEmailAddressResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxByEmailAddressResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxByEmailAddressResult(
        inboxId: json[r'inboxId'],
        exists: json[r'exists'],
    );

  static List<InboxByEmailAddressResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxByEmailAddressResult>[]
      : json.map((v) => InboxByEmailAddressResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxByEmailAddressResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxByEmailAddressResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxByEmailAddressResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxByEmailAddressResult-objects as value to a dart map
  static Map<String, List<InboxByEmailAddressResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxByEmailAddressResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxByEmailAddressResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

