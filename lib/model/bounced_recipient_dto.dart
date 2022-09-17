//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BouncedRecipientDto {
  /// Returns a new [BouncedRecipientDto] instance.
  BouncedRecipientDto({
    @required this.id,
    this.userId,
    this.sentEmailId,
    @required this.recipient,
    this.diagnosticCode,
    this.action,
    this.status,
    @required this.createdAt,
  });

  String id;

  String userId;

  String sentEmailId;

  String recipient;

  String diagnosticCode;

  String action;

  String status;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BouncedRecipientDto &&
     other.id == id &&
     other.userId == userId &&
     other.sentEmailId == sentEmailId &&
     other.recipient == recipient &&
     other.diagnosticCode == diagnosticCode &&
     other.action == action &&
     other.status == status &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (diagnosticCode == null ? 0 : diagnosticCode.hashCode) +
    (action == null ? 0 : action.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'BouncedRecipientDto[id=$id, userId=$userId, sentEmailId=$sentEmailId, recipient=$recipient, diagnosticCode=$diagnosticCode, action=$action, status=$status, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
      json[r'recipient'] = recipient;
    if (diagnosticCode != null) {
      json[r'diagnosticCode'] = diagnosticCode;
    }
    if (action != null) {
      json[r'action'] = action;
    }
    if (status != null) {
      json[r'status'] = status;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BouncedRecipientDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BouncedRecipientDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BouncedRecipientDto(
        id: json[r'id'],
        userId: json[r'userId'],
        sentEmailId: json[r'sentEmailId'],
        recipient: json[r'recipient'],
        diagnosticCode: json[r'diagnosticCode'],
        action: json[r'action'],
        status: json[r'status'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<BouncedRecipientDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BouncedRecipientDto>[]
      : json.map((v) => BouncedRecipientDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, BouncedRecipientDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BouncedRecipientDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BouncedRecipientDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BouncedRecipientDto-objects as value to a dart map
  static Map<String, List<BouncedRecipientDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BouncedRecipientDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BouncedRecipientDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

