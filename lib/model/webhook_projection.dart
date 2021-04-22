//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookProjection {
  /// Returns a new [WebhookProjection] instance.
  WebhookProjection({
    @required this.createdAt,
    @required this.id,
    @required this.inboxId,
    this.name,
    @required this.updatedAt,
    @required this.url,
  });

  DateTime createdAt;

  String id;

  String inboxId;

  String name;

  DateTime updatedAt;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookProjection &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.updatedAt == updatedAt &&
     other.url == url;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'WebhookProjection[createdAt=$createdAt, id=$id, inboxId=$inboxId, name=$name, updatedAt=$updatedAt, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [WebhookProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        url: json[r'url'],
    );

  static List<WebhookProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookProjection>[]
      : json.map((v) => WebhookProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookProjection-objects as value to a dart map
  static Map<String, List<WebhookProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

