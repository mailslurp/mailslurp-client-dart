//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainPreview {
  /// Returns a new [DomainPreview] instance.
  DomainPreview({
    this.catchAllInboxId,
    @required this.createdAt,
    @required this.domain,
    @required this.id,
  });

  String catchAllInboxId;

  DateTime createdAt;

  String domain;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainPreview &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.domain == domain &&
     other.id == id;

  @override
  int get hashCode =>
    (catchAllInboxId == null ? 0 : catchAllInboxId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'DomainPreview[catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, domain=$domain, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (catchAllInboxId != null) {
      json[r'catchAllInboxId'] = catchAllInboxId;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'domain'] = domain;
      json[r'id'] = id;
    return json;
  }

  /// Returns a new [DomainPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DomainPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DomainPreview(
        catchAllInboxId: json[r'catchAllInboxId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        domain: json[r'domain'],
        id: json[r'id'],
    );

  static List<DomainPreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainPreview>[]
      : json.map((v) => DomainPreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, DomainPreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DomainPreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DomainPreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DomainPreview-objects as value to a dart map
  static Map<String, List<DomainPreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DomainPreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DomainPreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

