//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentEntity {
  /// Returns a new [AttachmentEntity] instance.
  AttachmentEntity({
    this.id,
    @required this.attachmentId,
    @required this.userId,
    this.contentType,
    this.contentLength,
    this.name,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String attachmentId;

  String userId;

  String contentType;

  int contentLength;

  String name;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentEntity &&
     other.id == id &&
     other.attachmentId == attachmentId &&
     other.userId == userId &&
     other.contentType == contentType &&
     other.contentLength == contentLength &&
     other.name == name &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (attachmentId == null ? 0 : attachmentId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (contentLength == null ? 0 : contentLength.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'AttachmentEntity[id=$id, attachmentId=$attachmentId, userId=$userId, contentType=$contentType, contentLength=$contentLength, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'attachmentId'] = attachmentId;
      json[r'userId'] = userId;
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (contentLength != null) {
      json[r'contentLength'] = contentLength;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AttachmentEntity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentEntity fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AttachmentEntity(
        id: json[r'id'],
        attachmentId: json[r'attachmentId'],
        userId: json[r'userId'],
        contentType: json[r'contentType'],
        contentLength: json[r'contentLength'],
        name: json[r'name'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<AttachmentEntity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AttachmentEntity>[]
      : json.map((v) => AttachmentEntity.fromJson(v)).toList(growable: true == growable);

  static Map<String, AttachmentEntity> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AttachmentEntity>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AttachmentEntity.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AttachmentEntity-objects as value to a dart map
  static Map<String, List<AttachmentEntity>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AttachmentEntity>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AttachmentEntity.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

