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
    @required this.userId,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.attachmentId,
    this.contentType,
  });

  String name;

  /// Content length of attachment in bytes
  int contentLength;

  String userId;

  DateTime createdAt;

  DateTime updatedAt;

  /// Attachment ID
  String attachmentId;

  /// Content type of attachment.
  String contentType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentProjection &&
     other.name == name &&
     other.contentLength == contentLength &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.attachmentId == attachmentId &&
     other.contentType == contentType;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (contentLength == null ? 0 : contentLength.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (attachmentId == null ? 0 : attachmentId.hashCode) +
    (contentType == null ? 0 : contentType.hashCode);

  @override
  String toString() => 'AttachmentProjection[name=$name, contentLength=$contentLength, userId=$userId, createdAt=$createdAt, updatedAt=$updatedAt, attachmentId=$attachmentId, contentType=$contentType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (contentLength != null) {
      json[r'contentLength'] = contentLength;
    }
      json[r'userId'] = userId;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'attachmentId'] = attachmentId;
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    return json;
  }

  /// Returns a new [AttachmentProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AttachmentProjection(
        name: json[r'name'],
        contentLength: json[r'contentLength'],
        userId: json[r'userId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        attachmentId: json[r'attachmentId'],
        contentType: json[r'contentType'],
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

