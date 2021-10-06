//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpiredInboxDto {
  /// Returns a new [ExpiredInboxDto] instance.
  ExpiredInboxDto({
    @required this.emailAddress,
    @required this.id,
    @required this.inboxId,
  });

  String emailAddress;

  String id;

  String inboxId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpiredInboxDto &&
     other.emailAddress == emailAddress &&
     other.id == id &&
     other.inboxId == inboxId;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode);

  @override
  String toString() => 'ExpiredInboxDto[emailAddress=$emailAddress, id=$id, inboxId=$inboxId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = emailAddress;
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    return json;
  }

  /// Returns a new [ExpiredInboxDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExpiredInboxDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExpiredInboxDto(
        emailAddress: json[r'emailAddress'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
    );

  static List<ExpiredInboxDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExpiredInboxDto>[]
      : json.map((v) => ExpiredInboxDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExpiredInboxDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExpiredInboxDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExpiredInboxDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExpiredInboxDto-objects as value to a dart map
  static Map<String, List<ExpiredInboxDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExpiredInboxDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExpiredInboxDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

