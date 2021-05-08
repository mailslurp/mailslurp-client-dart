//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DownloadAttachmentDto {
  /// Returns a new [DownloadAttachmentDto] instance.
  DownloadAttachmentDto({
    this.base64FileContents,
    this.contentType,
    this.sizeBytes,
  });

  /// Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as `text/html` you can read the contents directly by converting it to string using `utf-8` encoding.
  String base64FileContents;

  /// Content type of attachment. Examples are `image/png`, `application/msword`, `text/csv` etc.
  String contentType;

  /// Size in bytes of attachment content
  int sizeBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DownloadAttachmentDto &&
     other.base64FileContents == base64FileContents &&
     other.contentType == contentType &&
     other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    (base64FileContents == null ? 0 : base64FileContents.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes.hashCode);

  @override
  String toString() => 'DownloadAttachmentDto[base64FileContents=$base64FileContents, contentType=$contentType, sizeBytes=$sizeBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (base64FileContents != null) {
      json[r'base64FileContents'] = base64FileContents;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (sizeBytes != null) {
      json[r'sizeBytes'] = sizeBytes;
    }
    return json;
  }

  /// Returns a new [DownloadAttachmentDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DownloadAttachmentDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DownloadAttachmentDto(
        base64FileContents: json[r'base64FileContents'],
        contentType: json[r'contentType'],
        sizeBytes: json[r'sizeBytes'],
    );

  static List<DownloadAttachmentDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DownloadAttachmentDto>[]
      : json.map((v) => DownloadAttachmentDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, DownloadAttachmentDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DownloadAttachmentDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DownloadAttachmentDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DownloadAttachmentDto-objects as value to a dart map
  static Map<String, List<DownloadAttachmentDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DownloadAttachmentDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DownloadAttachmentDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

