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
    @required this.url,
    @required this.hash,
  });

  String url;

  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GravatarUrl &&
     other.url == url &&
     other.hash == hash;

  @override
  int get hashCode =>
    (url == null ? 0 : url.hashCode) +
    (hash == null ? 0 : hash.hashCode);

  @override
  String toString() => 'GravatarUrl[url=$url, hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = url;
      json[r'hash'] = hash;
    return json;
  }

  /// Returns a new [GravatarUrl] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GravatarUrl fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GravatarUrl(
        url: json[r'url'],
        hash: json[r'hash'],
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

