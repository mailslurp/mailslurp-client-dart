//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplatePreview {
  /// Returns a new [TemplatePreview] instance.
  TemplatePreview({
    @required this.preview,
  });

  String preview;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplatePreview &&
     other.preview == preview;

  @override
  int get hashCode =>
    (preview == null ? 0 : preview.hashCode);

  @override
  String toString() => 'TemplatePreview[preview=$preview]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'preview'] = preview;
    return json;
  }

  /// Returns a new [TemplatePreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplatePreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplatePreview(
        preview: json[r'preview'],
    );

  static List<TemplatePreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TemplatePreview>[]
      : json.map((v) => TemplatePreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, TemplatePreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TemplatePreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TemplatePreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TemplatePreview-objects as value to a dart map
  static Map<String, List<TemplatePreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TemplatePreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TemplatePreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

