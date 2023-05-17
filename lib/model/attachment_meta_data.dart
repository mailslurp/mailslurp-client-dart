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
    @required this.name,
    @required this.contentType,
    @required this.contentLength,
    @required this.id,
  });

  /// Name of attachment if given
  String name;

  /// Content type of attachment such as `image/png`
  String contentType;

  /// Size of attachment in bytes
  int contentLength;

  /// ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email.
  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentMetaData &&
     other.name == name &&
     other.contentType == contentType &&
     other.contentLength == contentLength &&
     other.id == id;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (contentLength == null ? 0 : contentLength.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'AttachmentMetaData[name=$name, contentType=$contentType, contentLength=$contentLength, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'contentType'] = contentType;
      json[r'contentLength'] = contentLength;
      json[r'id'] = id;
    return json;
  }

  /// Returns a new [AttachmentMetaData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentMetaData fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AttachmentMetaData(
        name: json[r'name'],
        contentType: json[r'contentType'],
        contentLength: json[r'contentLength'],
        id: json[r'id'],
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

