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
    @required this.id,
    @required this.emailAddress,
    this.maskedEmailAddress,
    @required this.userId,
    @required this.inboxId,
    this.name,
    this.useThreads,
    @required this.isVerified,
    this.createdAt,
    this.updatedAt,
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

  /// Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account
  bool isVerified;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.maskedEmailAddress == maskedEmailAddress &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.useThreads == useThreads &&
     other.isVerified == isVerified &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (maskedEmailAddress == null ? 0 : maskedEmailAddress.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (isVerified == null ? 0 : isVerified.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'AliasDto[id=$id, emailAddress=$emailAddress, maskedEmailAddress=$maskedEmailAddress, userId=$userId, inboxId=$inboxId, name=$name, useThreads=$useThreads, isVerified=$isVerified, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'emailAddress'] = emailAddress;
    if (maskedEmailAddress != null) {
      json[r'maskedEmailAddress'] = maskedEmailAddress;
    }
      json[r'userId'] = userId;
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
      json[r'isVerified'] = isVerified;
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
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
        isVerified: json[r'isVerified'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
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

