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
    this.company,
    @required this.createdAt,
    this.emailAddresses = const [],
    this.firstName,
    this.groupId,
    @required this.id,
    this.lastName,
    this.optOut,
  });

  String company;

  DateTime createdAt;

  List<String> emailAddresses;

  String firstName;

  String groupId;

  String id;

  String lastName;

  bool optOut;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactProjection &&
     other.company == company &&
     other.createdAt == createdAt &&
     other.emailAddresses == emailAddresses &&
     other.firstName == firstName &&
     other.groupId == groupId &&
     other.id == id &&
     other.lastName == lastName &&
     other.optOut == optOut;

  @override
  int get hashCode =>
    (company == null ? 0 : company.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (optOut == null ? 0 : optOut.hashCode);

  @override
  String toString() => 'ContactProjection[company=$company, createdAt=$createdAt, emailAddresses=$emailAddresses, firstName=$firstName, groupId=$groupId, id=$id, lastName=$lastName, optOut=$optOut]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (company != null) {
      json[r'company'] = company;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (emailAddresses != null) {
      json[r'emailAddresses'] = emailAddresses;
    }
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
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
    return json;
  }

  /// Returns a new [ContactProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ContactProjection(
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
        optOut: json[r'optOut'],
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

