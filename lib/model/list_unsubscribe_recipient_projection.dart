//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListUnsubscribeRecipientProjection {
  /// Returns a new [ListUnsubscribeRecipientProjection] instance.
  ListUnsubscribeRecipientProjection({
    @required this.id,
    @required this.emailAddress,
    @required this.createdAt,
    this.domainId,
  });

  String id;

  String emailAddress;

  DateTime createdAt;

  String domainId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListUnsubscribeRecipientProjection &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.domainId == domainId;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (domainId == null ? 0 : domainId.hashCode);

  @override
  String toString() => 'ListUnsubscribeRecipientProjection[id=$id, emailAddress=$emailAddress, createdAt=$createdAt, domainId=$domainId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'emailAddress'] = emailAddress;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (domainId != null) {
      json[r'domainId'] = domainId;
    }
    return json;
  }

  /// Returns a new [ListUnsubscribeRecipientProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListUnsubscribeRecipientProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListUnsubscribeRecipientProjection(
        id: json[r'id'],
        emailAddress: json[r'emailAddress'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        domainId: json[r'domainId'],
    );

  static List<ListUnsubscribeRecipientProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListUnsubscribeRecipientProjection>[]
      : json.map((v) => ListUnsubscribeRecipientProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListUnsubscribeRecipientProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListUnsubscribeRecipientProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListUnsubscribeRecipientProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListUnsubscribeRecipientProjection-objects as value to a dart map
  static Map<String, List<ListUnsubscribeRecipientProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListUnsubscribeRecipientProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListUnsubscribeRecipientProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

