//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateAliasOptions {
  /// Returns a new [UpdateAliasOptions] instance.
  UpdateAliasOptions({
    this.name,
  });

  /// Optional name for alias
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAliasOptions &&
     other.name == name;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'UpdateAliasOptions[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [UpdateAliasOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateAliasOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateAliasOptions(
        name: json[r'name'],
    );

  static List<UpdateAliasOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateAliasOptions>[]
      : json.map((v) => UpdateAliasOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateAliasOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateAliasOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateAliasOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateAliasOptions-objects as value to a dart map
  static Map<String, List<UpdateAliasOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateAliasOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateAliasOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

