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
    this.company,
    @required this.createdAt,
    this.emailAddresses = const [],
    this.firstName,
    this.groupId,
    @required this.id,
    this.lastName,
    this.metaData,
    this.optOut,
    this.primaryEmailAddress,
    this.tags = const [],
  });

  String company;

  DateTime createdAt;

  List<String> emailAddresses;

  String firstName;

  String groupId;

  String id;

  String lastName;

  Object metaData;

  bool optOut;

  String primaryEmailAddress;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactDto &&
     other.company == company &&
     other.createdAt == createdAt &&
     other.emailAddresses == emailAddresses &&
     other.firstName == firstName &&
     other.groupId == groupId &&
     other.id == id &&
     other.lastName == lastName &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.primaryEmailAddress == primaryEmailAddress &&
     other.tags == tags;

  @override
  int get hashCode =>
    (company == null ? 0 : company.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (metaData == null ? 0 : metaData.hashCode) +
    (optOut == null ? 0 : optOut.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'ContactDto[company=$company, createdAt=$createdAt, emailAddresses=$emailAddresses, firstName=$firstName, groupId=$groupId, id=$id, lastName=$lastName, metaData=$metaData, optOut=$optOut, primaryEmailAddress=$primaryEmailAddress, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (company != null) {
      json[r'company'] = company;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'emailAddresses'] = emailAddresses;
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
      json[r'id'] = id;
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (metaData != null) {
      json[r'metaData'] = metaData;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
    if (primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = primaryEmailAddress;
    }
      json[r'tags'] = tags;
    return json;
  }

  /// Returns a new [ContactDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ContactDto(
        company: json[r'company'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as List).cast<String>(),
        firstName: json[r'firstName'],
        groupId: json[r'groupId'],
        id: json[r'id'],
        lastName: json[r'lastName'],
        metaData: json[r'metaData'],
        optOut: json[r'optOut'],
        primaryEmailAddress: json[r'primaryEmailAddress'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
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

