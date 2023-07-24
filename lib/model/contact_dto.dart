//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactDto {
  /// Returns a new [ContactDto] instance.
  ContactDto({
    required this.id,
    this.groupId,
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses = const [],
    this.primaryEmailAddress,
    this.tags = const [],
    this.metaData,
    this.optOut,
    required this.createdAt,
  });

  String id;

  String? groupId;

  String? firstName;

  String? lastName;

  String? company;

  List<String> emailAddresses;

  String? primaryEmailAddress;

  List<String> tags;

  Object? metaData;

  bool? optOut;

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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (emailAddresses.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress!.hashCode) +
    (tags.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (optOut == null ? 0 : optOut!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ContactDto[id=$id, groupId=$groupId, firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, primaryEmailAddress=$primaryEmailAddress, tags=$tags, metaData=$metaData, optOut=$optOut, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
      json[r'emailAddresses'] = this.emailAddresses;
    if (this.primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = this.primaryEmailAddress;
    } else {
      json[r'primaryEmailAddress'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
    if (this.optOut != null) {
      json[r'optOut'] = this.optOut;
    } else {
      json[r'optOut'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ContactDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactDto(
        id: mapValueOfType<String>(json, r'id')!,
        groupId: mapValueOfType<String>(json, r'groupId'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        company: mapValueOfType<String>(json, r'company'),
        emailAddresses: json[r'emailAddresses'] is List
            ? (json[r'emailAddresses'] as List).cast<String>()
            : const [],
        primaryEmailAddress: mapValueOfType<String>(json, r'primaryEmailAddress'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        metaData: mapValueOfType<Object>(json, r'metaData'),
        optOut: mapValueOfType<bool>(json, r'optOut'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<ContactDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactDto> mapFromJson(dynamic json) {
    final map = <String, ContactDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactDto-objects as value to a dart map
  static Map<String, List<ContactDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddresses',
    'tags',
    'createdAt',
  };
}

