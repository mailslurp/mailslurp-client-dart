//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineObject {
  /// Returns a new [InlineObject] instance.
  InlineObject({
    this.contentTypeHeader,
    @required this.file,
  });

  /// Optional content type header of attachment
  String contentTypeHeader;

  MultipartFile file;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject &&
     other.contentTypeHeader == contentTypeHeader &&
     other.file == file;

  @override
  int get hashCode =>
    (contentTypeHeader == null ? 0 : contentTypeHeader.hashCode) +
    (file == null ? 0 : file.hashCode);

  @override
  String toString() => 'InlineObject[contentTypeHeader=$contentTypeHeader, file=$file]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (contentTypeHeader != null) {
      json[r'contentTypeHeader'] = contentTypeHeader;
    }
      json[r'file'] = file;
    return json;
  }

  /// Returns a new [InlineObject] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject(
        contentTypeHeader: json[r'contentTypeHeader'],
        file: null, // No support for decoding binary content from JSON
    );

  static List<InlineObject> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject>[]
      : json.map((v) => InlineObject.fromJson(v)).toList(growable: true == growable);

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InlineObject.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InlineObject.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

