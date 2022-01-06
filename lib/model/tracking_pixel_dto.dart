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
    this.id,
    this.seen,
    this.recipient,
    this.html,
    this.url,
    this.inboxId,
    this.sentEmailId,
    this.seenAt,
    this.createdAt,
  });

  String id;

  bool seen;

  String recipient;

  String html;

  String url;

  String inboxId;

  String sentEmailId;

  DateTime seenAt;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelDto &&
     other.id == id &&
     other.seen == seen &&
     other.recipient == recipient &&
     other.html == html &&
     other.url == url &&
     other.inboxId == inboxId &&
     other.sentEmailId == sentEmailId &&
     other.seenAt == seenAt &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (html == null ? 0 : html.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (seenAt == null ? 0 : seenAt.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'TrackingPixelDto[id=$id, seen=$seen, recipient=$recipient, html=$html, url=$url, inboxId=$inboxId, sentEmailId=$sentEmailId, seenAt=$seenAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (seen != null) {
      json[r'seen'] = seen;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (html != null) {
      json[r'html'] = html;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
    if (seenAt != null) {
      json[r'seenAt'] = seenAt.toUtc().toIso8601String();
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [TrackingPixelDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingPixelDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TrackingPixelDto(
        id: json[r'id'],
        seen: json[r'seen'],
        recipient: json[r'recipient'],
        html: json[r'html'],
        url: json[r'url'],
        inboxId: json[r'inboxId'],
        sentEmailId: json[r'sentEmailId'],
        seenAt: json[r'seenAt'] == null
          ? null
          : DateTime.parse(json[r'seenAt']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
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

