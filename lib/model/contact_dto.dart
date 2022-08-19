//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactDto {
  /// Returns a new [ContactDto] instance.
  ContactDto({
    @required this.id,
    this.groupId,
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses = const [],
    this.primaryEmailAddress,
    this.tags = const [],
    this.metaData,
    this.optOut,
    @required this.createdAt,
  });

  String id;

  String groupId;

  String firstName;

  String lastName;

  String company;

  List<String> emailAddresses;

  String primaryEmailAddress;

  List<String> tags;

  Object metaData;

  bool optOut;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactDto &&
     other.id == id &&
     other.groupId == groupId &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.emailAddresses == emailAddresses &&
     other.primaryEmailAddress == primaryEmailAddress &&
     other.tags == tags &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (metaData == null ? 0 : metaData.hashCode) +
    (optOut == null ? 0 : optOut.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'ContactDto[id=$id, groupId=$groupId, firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, primaryEmailAddress=$primaryEmailAddress, tags=$tags, metaData=$metaData, optOut=$optOut, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (company != null) {
      json[r'company'] = company;
    }
      json[r'emailAddresses'] = emailAddresses;
    if (primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = primaryEmailAddress;
    }
      json[r'tags'] = tags;
    if (metaData != null) {
      json[r'metaData'] = metaData;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ContactDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ContactDto(
        id: json[r'id'],
        groupId: json[r'groupId'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        company: json[r'company'],
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as List).cast<String>(),
        primaryEmailAddress: json[r'primaryEmailAddress'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        metaData: json[r'metaData'],
        optOut: json[r'optOut'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<ContactDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ContactDto>[]
      : json.map((v) => ContactDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ContactDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ContactDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ContactDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ContactDto-objects as value to a dart map
  static Map<String, List<ContactDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContactDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ContactDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

