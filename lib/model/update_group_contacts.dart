//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateGroupContacts {
  /// Returns a new [UpdateGroupContacts] instance.
  UpdateGroupContacts({
    this.contactIds = const [],
  });

  List<String> contactIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateGroupContacts &&
     other.contactIds == contactIds;

  @override
  int get hashCode =>
    (contactIds == null ? 0 : contactIds.hashCode);

  @override
  String toString() => 'UpdateGroupContacts[contactIds=$contactIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contactIds'] = contactIds;
    return json;
  }

  /// Returns a new [UpdateGroupContacts] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateGroupContacts fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateGroupContacts(
        contactIds: json[r'contactIds'] == null
          ? null
          : (json[r'contactIds'] as List).cast<String>(),
    );

  static List<UpdateGroupContacts> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateGroupContacts>[]
      : json.map((v) => UpdateGroupContacts.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateGroupContacts> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateGroupContacts>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateGroupContacts.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateGroupContacts-objects as value to a dart map
  static Map<String, List<UpdateGroupContacts>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateGroupContacts>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateGroupContacts.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

