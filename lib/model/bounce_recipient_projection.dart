//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceRecipientProjection {
  /// Returns a new [BounceRecipientProjection] instance.
  BounceRecipientProjection({
    this.id,
    this.status,
    @required this.createdAt,
    this.sentEmailId,
    @required this.recipient,
    this.action,
  });

  String id;

  String status;

  DateTime createdAt;

  String sentEmailId;

  String recipient;

  String action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceRecipientProjection &&
     other.id == id &&
     other.status == status &&
     other.createdAt == createdAt &&
     other.sentEmailId == sentEmailId &&
     other.recipient == recipient &&
     other.action == action;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (action == null ? 0 : action.hashCode);

  @override
  String toString() => 'BounceRecipientProjection[id=$id, status=$status, createdAt=$createdAt, sentEmailId=$sentEmailId, recipient=$recipient, action=$action]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
      json[r'recipient'] = recipient;
    if (action != null) {
      json[r'action'] = action;
    }
    return json;
  }

  /// Returns a new [BounceRecipientProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceRecipientProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceRecipientProjection(
        id: json[r'id'],
        status: json[r'status'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        sentEmailId: json[r'sentEmailId'],
        recipient: json[r'recipient'],
        action: json[r'action'],
    );

  static List<BounceRecipientProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BounceRecipientProjection>[]
      : json.map((v) => BounceRecipientProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, BounceRecipientProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BounceRecipientProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BounceRecipientProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BounceRecipientProjection-objects as value to a dart map
  static Map<String, List<BounceRecipientProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BounceRecipientProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BounceRecipientProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

