//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UploadAttachmentOptions {
  /// Returns a new [UploadAttachmentOptions] instance.
  UploadAttachmentOptions({
    @required this.base64Contents,
    this.contentType,
    this.filename,
  });

  /// Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/
  String base64Contents;

  /// Optional contentType for file. For instance `application/pdf`
  String contentType;

  /// Optional filename to save upload with. Will be the name that is shown in email clients
  String filename;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadAttachmentOptions &&
     other.base64Contents == base64Contents &&
     other.contentType == contentType &&
     other.filename == filename;

  @override
  int get hashCode =>
    (base64Contents == null ? 0 : base64Contents.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (filename == null ? 0 : filename.hashCode);

  @override
  String toString() => 'UploadAttachmentOptions[base64Contents=$base64Contents, contentType=$contentType, filename=$filename]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'base64Contents'] = base64Contents;
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (filename != null) {
      json[r'filename'] = filename;
    }
    return json;
  }

  /// Returns a new [UploadAttachmentOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UploadAttachmentOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UploadAttachmentOptions(
        base64Contents: json[r'base64Contents'],
        contentType: json[r'contentType'],
        filename: json[r'filename'],
    );

  static List<UploadAttachmentOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UploadAttachmentOptions>[]
      : json.map((v) => UploadAttachmentOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, UploadAttachmentOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UploadAttachmentOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UploadAttachmentOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UploadAttachmentOptions-objects as value to a dart map
  static Map<String, List<UploadAttachmentOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UploadAttachmentOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UploadAttachmentOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

