//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AliasDto {
  /// Returns a new [AliasDto] instance.
  AliasDto({
    this.id,
    this.emailAddress,
    this.maskedEmailAddress,
    this.userId,
    this.inboxId,
    this.name,
    this.useThreads,
    this.createdAt,
    this.updatedAt,
    this.verified,
  });

  String id;

  /// The alias's email address for receiving email
  String emailAddress;

  /// The underlying email address that is hidden and will received forwarded email
  String maskedEmailAddress;

  String userId;

  /// Inbox that is associated with the alias
  String inboxId;

  String name;

  /// If alias will generate response threads or not when email are received by it
  bool useThreads;

  DateTime createdAt;

  DateTime updatedAt;

  bool verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.maskedEmailAddress == maskedEmailAddress &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.useThreads == useThreads &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.verified == verified;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (maskedEmailAddress == null ? 0 : maskedEmailAddress.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (verified == null ? 0 : verified.hashCode);

  @override
  String toString() => 'AliasDto[id=$id, emailAddress=$emailAddress, maskedEmailAddress=$maskedEmailAddress, userId=$userId, inboxId=$inboxId, name=$name, useThreads=$useThreads, createdAt=$createdAt, updatedAt=$updatedAt, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (maskedEmailAddress != null) {
      json[r'maskedEmailAddress'] = maskedEmailAddress;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (verified != null) {
      json[r'verified'] = verified;
    }
    return json;
  }

  /// Returns a new [AliasDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AliasDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AliasDto(
        id: json[r'id'],
        emailAddress: json[r'emailAddress'],
        maskedEmailAddress: json[r'maskedEmailAddress'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        useThreads: json[r'useThreads'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        verified: json[r'verified'],
    );

  static List<AliasDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AliasDto>[]
      : json.map((v) => AliasDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, AliasDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AliasDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AliasDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AliasDto-objects as value to a dart map
  static Map<String, List<AliasDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AliasDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AliasDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

