//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentProjection {
  /// Returns a new [AttachmentProjection] instance.
  AttachmentProjection({
    this.name,
    this.contentLength,
    this.contentType,
    @required this.createdAt,
    @required this.userId,
    @required this.attachmentId,
    @required this.updatedAt,
  });

  String name;

  /// Content length of attachment in bytes
  int contentLength;

  /// Content type of attachment.
  String contentType;

  DateTime createdAt;

  String userId;

  /// Attachment ID
  String attachmentId;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentProjection &&
     other.name == name &&
     other.contentLength == contentLength &&
     other.contentType == contentType &&
     other.createdAt == createdAt &&
     other.userId == userId &&
     other.attachmentId == attachmentId &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (contentLength == null ? 0 : contentLength.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (attachmentId == null ? 0 : attachmentId.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'AttachmentProjection[name=$name, contentLength=$contentLength, contentType=$contentType, createdAt=$createdAt, userId=$userId, attachmentId=$attachmentId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (contentLength != null) {
      json[r'contentLength'] = contentLength;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
      json[r'attachmentId'] = attachmentId;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AttachmentProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AttachmentProjection(
        name: json[r'name'],
        contentLength: json[r'contentLength'],
        contentType: json[r'contentType'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        userId: json[r'userId'],
        attachmentId: json[r'attachmentId'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<AttachmentProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AttachmentProjection>[]
      : json.map((v) => AttachmentProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, AttachmentProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AttachmentProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AttachmentProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AttachmentProjection-objects as value to a dart map
  static Map<String, List<AttachmentProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AttachmentProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AttachmentProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

