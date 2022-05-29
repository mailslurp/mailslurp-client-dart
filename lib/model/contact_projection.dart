//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactProjection {
  /// Returns a new [ContactProjection] instance.
  ContactProjection({
    @required this.id,
    this.groupId,
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses = const [],
    this.optOut,
    @required this.createdAt,
  });

  String id;

  String groupId;

  String firstName;

  String lastName;

  String company;

  List<String> emailAddresses;

  bool optOut;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactProjection &&
     other.id == id &&
     other.groupId == groupId &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.emailAddresses == emailAddresses &&
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
    (optOut == null ? 0 : optOut.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'ContactProjection[id=$id, groupId=$groupId, firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, optOut=$optOut, createdAt=$createdAt]';

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
    if (emailAddresses != null) {
      json[r'emailAddresses'] = emailAddresses;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ContactProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ContactProjection(
        id: json[r'id'],
        groupId: json[r'groupId'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        company: json[r'company'],
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as List).cast<String>(),
        optOut: json[r'optOut'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<ContactProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ContactProjection>[]
      : json.map((v) => ContactProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ContactProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ContactProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ContactProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ContactProjection-objects as value to a dart map
  static Map<String, List<ContactProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContactProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ContactProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

