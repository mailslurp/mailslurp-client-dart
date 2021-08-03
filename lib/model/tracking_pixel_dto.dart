//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingPixelDto {
  /// Returns a new [TrackingPixelDto] instance.
  TrackingPixelDto({
    @required this.createdAt,
    @required this.html,
    @required this.id,
    this.inboxId,
    this.recipient,
    @required this.seen,
    this.seenAt,
    this.sentEmailId,
    @required this.url,
  });

  DateTime createdAt;

  String html;

  String id;

  String inboxId;

  String recipient;

  bool seen;

  DateTime seenAt;

  String sentEmailId;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelDto &&
     other.createdAt == createdAt &&
     other.html == html &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.recipient == recipient &&
     other.seen == seen &&
     other.seenAt == seenAt &&
     other.sentEmailId == sentEmailId &&
     other.url == url;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (html == null ? 0 : html.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (seenAt == null ? 0 : seenAt.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'TrackingPixelDto[createdAt=$createdAt, html=$html, id=$id, inboxId=$inboxId, recipient=$recipient, seen=$seen, seenAt=$seenAt, sentEmailId=$sentEmailId, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'html'] = html;
      json[r'id'] = id;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
      json[r'seen'] = seen;
    if (seenAt != null) {
      json[r'seenAt'] = seenAt.toUtc().toIso8601String();
    }
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [TrackingPixelDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingPixelDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TrackingPixelDto(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        html: json[r'html'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        recipient: json[r'recipient'],
        seen: json[r'seen'],
        seenAt: json[r'seenAt'] == null
          ? null
          : DateTime.parse(json[r'seenAt']),
        sentEmailId: json[r'sentEmailId'],
        url: json[r'url'],
    );

  static List<TrackingPixelDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TrackingPixelDto>[]
      : json.map((v) => TrackingPixelDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, TrackingPixelDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TrackingPixelDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TrackingPixelDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TrackingPixelDto-objects as value to a dart map
  static Map<String, List<TrackingPixelDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TrackingPixelDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TrackingPixelDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

