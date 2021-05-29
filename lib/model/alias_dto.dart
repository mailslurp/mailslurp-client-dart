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
    this.createdAt,
    this.emailAddress,
    @required this.id,
    this.inboxId,
    this.isVerified,
    this.maskedEmailAddress,
    this.name,
    this.updatedAt,
    this.useThreads,
    @required this.userId,
  });

  DateTime createdAt;

  /// The alias's email address for receiving email
  String emailAddress;

  String id;

  /// Inbox that is associated with the alias
  String inboxId;

  /// Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account
  bool isVerified;

  /// The underlying email address that is hidden and will received forwarded email
  String maskedEmailAddress;

  String name;

  DateTime updatedAt;

  /// If alias will generate response threads or not when email are received by it
  bool useThreads;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasDto &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.isVerified == isVerified &&
     other.maskedEmailAddress == maskedEmailAddress &&
     other.name == name &&
     other.updatedAt == updatedAt &&
     other.useThreads == useThreads &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (isVerified == null ? 0 : isVerified.hashCode) +
    (maskedEmailAddress == null ? 0 : maskedEmailAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'AliasDto[createdAt=$createdAt, emailAddress=$emailAddress, id=$id, inboxId=$inboxId, isVerified=$isVerified, maskedEmailAddress=$maskedEmailAddress, name=$name, updatedAt=$updatedAt, useThreads=$useThreads, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
      json[r'id'] = id;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (isVerified != null) {
      json[r'isVerified'] = isVerified;
    }
    if (maskedEmailAddress != null) {
      json[r'maskedEmailAddress'] = maskedEmailAddress;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [AliasDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AliasDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AliasDto(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddress: json[r'emailAddress'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        isVerified: json[r'isVerified'],
        maskedEmailAddress: json[r'maskedEmailAddress'],
        name: json[r'name'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        useThreads: json[r'useThreads'],
        userId: json[r'userId'],
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

