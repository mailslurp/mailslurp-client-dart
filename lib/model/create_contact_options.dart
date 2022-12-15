//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateContactOptions {
  /// Returns a new [CreateContactOptions] instance.
  CreateContactOptions({
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses,
    this.tags,
    this.metaData,
    this.optOut,
    this.groupId,
  });

  String firstName;

  String lastName;

  String company;

  /// Set of email addresses belonging to the contact
  List<String> emailAddresses;

  /// Tags that can be used to search and group contacts
  List<String> tags;

  Object metaData;

  /// Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions.
  bool optOut;

  /// Group IDs that contact belongs to
  String groupId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateContactOptions &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.emailAddresses == emailAddresses &&
     other.tags == tags &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.groupId == groupId;

  @override
  int get hashCode =>
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (metaData == null ? 0 : metaData.hashCode) +
    (optOut == null ? 0 : optOut.hashCode) +
    (groupId == null ? 0 : groupId.hashCode);

  @override
  String toString() => 'CreateContactOptions[firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, tags=$tags, metaData=$metaData, optOut=$optOut, groupId=$groupId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (metaData != null) {
      json[r'metaData'] = metaData;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    return json;
  }

  /// Returns a new [CreateContactOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateContactOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateContactOptions(
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        company: json[r'company'],
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as List).cast<String>(),
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        metaData: json[r'metaData'],
        optOut: json[r'optOut'],
        groupId: json[r'groupId'],
    );

  static List<CreateContactOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateContactOptions>[]
      : json.map((v) => CreateContactOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateContactOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateContactOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateContactOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateContactOptions-objects as value to a dart map
  static Map<String, List<CreateContactOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateContactOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateContactOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

