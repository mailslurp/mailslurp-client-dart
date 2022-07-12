//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Complaint {
  /// Returns a new [Complaint] instance.
  Complaint({
    @required this.id,
    this.userId,
    this.eventType,
    this.mailSource,
    this.mailMessageId,
    @required this.complaintRecipient,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String eventType;

  String mailSource;

  String mailMessageId;

  String complaintRecipient;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Complaint &&
     other.id == id &&
     other.userId == userId &&
     other.eventType == eventType &&
     other.mailSource == mailSource &&
     other.mailMessageId == mailMessageId &&
     other.complaintRecipient == complaintRecipient &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (eventType == null ? 0 : eventType.hashCode) +
    (mailSource == null ? 0 : mailSource.hashCode) +
    (mailMessageId == null ? 0 : mailMessageId.hashCode) +
    (complaintRecipient == null ? 0 : complaintRecipient.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'Complaint[id=$id, userId=$userId, eventType=$eventType, mailSource=$mailSource, mailMessageId=$mailMessageId, complaintRecipient=$complaintRecipient, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (eventType != null) {
      json[r'eventType'] = eventType;
    }
    if (mailSource != null) {
      json[r'mailSource'] = mailSource;
    }
    if (mailMessageId != null) {
      json[r'mailMessageId'] = mailMessageId;
    }
      json[r'complaintRecipient'] = complaintRecipient;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Complaint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Complaint fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Complaint(
        id: json[r'id'],
        userId: json[r'userId'],
        eventType: json[r'eventType'],
        mailSource: json[r'mailSource'],
        mailMessageId: json[r'mailMessageId'],
        complaintRecipient: json[r'complaintRecipient'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<Complaint> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Complaint>[]
      : json.map((v) => Complaint.fromJson(v)).toList(growable: true == growable);

  static Map<String, Complaint> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Complaint>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Complaint.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Complaint-objects as value to a dart map
  static Map<String, List<Complaint>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Complaint>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Complaint.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

