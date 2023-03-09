//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxIdItem {
  /// Returns a new [InboxIdItem] instance.
  InboxIdItem({
    @required this.id,
    @required this.emailAddress,
  });

  String id;

  String emailAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxIdItem &&
     other.id == id &&
     other.emailAddress == emailAddress;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode);

  @override
  String toString() => 'InboxIdItem[id=$id, emailAddress=$emailAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'emailAddress'] = emailAddress;
    return json;
  }

  /// Returns a new [InboxIdItem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxIdItem fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxIdItem(
        id: json[r'id'],
        emailAddress: json[r'emailAddress'],
    );

  static List<InboxIdItem> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxIdItem>[]
      : json.map((v) => InboxIdItem.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxIdItem> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxIdItem>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxIdItem.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxIdItem-objects as value to a dart map
  static Map<String, List<InboxIdItem>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxIdItem>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxIdItem.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

