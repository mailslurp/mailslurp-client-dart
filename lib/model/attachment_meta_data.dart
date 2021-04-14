//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentMetaData {
  /// Returns a new [AttachmentMetaData] instance.
  AttachmentMetaData({
    this.contentLength,
    this.contentType,
    this.id,
    this.name,
  });

  /// Size of attachment in bytes
  int contentLength;

  /// Content type of attachment
  String contentType;

  /// ID of attachment
  String id;

  /// Name of attachment
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentMetaData &&
     other.contentLength == contentLength &&
     other.contentType == contentType &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (contentLength == null ? 0 : contentLength.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'AttachmentMetaData[contentLength=$contentLength, contentType=$contentType, id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (contentLength != null) {
      json[r'contentLength'] = contentLength;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [AttachmentMetaData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentMetaData fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AttachmentMetaData(
        contentLength: json[r'contentLength'],
        contentType: json[r'contentType'],
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<AttachmentMetaData> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AttachmentMetaData>[]
      : json.map((v) => AttachmentMetaData.fromJson(v)).toList(growable: true == growable);

  static Map<String, AttachmentMetaData> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AttachmentMetaData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AttachmentMetaData.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AttachmentMetaData-objects as value to a dart map
  static Map<String, List<AttachmentMetaData>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AttachmentMetaData>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AttachmentMetaData.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

