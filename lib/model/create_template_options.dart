//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTemplateOptions {
  /// Returns a new [CreateTemplateOptions] instance.
  CreateTemplateOptions({
    @required this.name,
    @required this.content,
  });

  String name;

  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTemplateOptions &&
     other.name == name &&
     other.content == content;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (content == null ? 0 : content.hashCode);

  @override
  String toString() => 'CreateTemplateOptions[name=$name, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'content'] = content;
    return json;
  }

  /// Returns a new [CreateTemplateOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateTemplateOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateTemplateOptions(
        name: json[r'name'],
        content: json[r'content'],
    );

  static List<CreateTemplateOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateTemplateOptions>[]
      : json.map((v) => CreateTemplateOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateTemplateOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateTemplateOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateTemplateOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateTemplateOptions-objects as value to a dart map
  static Map<String, List<CreateTemplateOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateTemplateOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateTemplateOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

