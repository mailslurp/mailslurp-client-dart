//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GravatarUrl {
  /// Returns a new [GravatarUrl] instance.
  GravatarUrl({
    @required this.hash,
    @required this.url,
  });

  String hash;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GravatarUrl &&
     other.hash == hash &&
     other.url == url;

  @override
  int get hashCode =>
    (hash == null ? 0 : hash.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'GravatarUrl[hash=$hash, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hash'] = hash;
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [GravatarUrl] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GravatarUrl fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GravatarUrl(
        hash: json[r'hash'],
        url: json[r'url'],
    );

  static List<GravatarUrl> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GravatarUrl>[]
      : json.map((v) => GravatarUrl.fromJson(v)).toList(growable: true == growable);

  static Map<String, GravatarUrl> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GravatarUrl>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GravatarUrl.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GravatarUrl-objects as value to a dart map
  static Map<String, List<GravatarUrl>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GravatarUrl>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GravatarUrl.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

