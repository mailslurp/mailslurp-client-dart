//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactProjection {
  /// Returns a new [ContactProjection] instance.
  ContactProjection({
    required this.id,
    this.groupId,
    this.emailAddress,
    required this.createdAt,
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses = const [],
    required this.optOut,
  });

  String id;

  String? groupId;

  String? emailAddress;

  DateTime createdAt;

  String? firstName;

  String? lastName;

  String? company;

  List<String>? emailAddresses;

  bool optOut;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactProjection &&
     other.id == id &&
     other.groupId == groupId &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.emailAddresses == emailAddresses &&
     other.optOut == optOut;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (createdAt.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses!.hashCode) +
    (optOut.hashCode);

  @override
  String toString() => 'ContactProjection[id=$id, groupId=$groupId, emailAddress=$emailAddress, createdAt=$createdAt, firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, optOut=$optOut]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
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
    if (this.emailAddresses != null) {
      json[r'emailAddresses'] = this.emailAddresses;
    } else {
      json[r'emailAddresses'] = null;
    }
      json[r'optOut'] = this.optOut;
    return json;
  }

  /// Returns a new [ContactProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactProjection(
        id: mapValueOfType<String>(json, r'id')!,
        groupId: mapValueOfType<String>(json, r'groupId'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        company: mapValueOfType<String>(json, r'company'),
        emailAddresses: json[r'emailAddresses'] is List
            ? (json[r'emailAddresses'] as List).cast<String>()
            : const [],
        optOut: mapValueOfType<bool>(json, r'optOut')!,
      );
    }
    return null;
  }

  static List<ContactProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactProjection> mapFromJson(dynamic json) {
    final map = <String, ContactProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactProjection-objects as value to a dart map
  static Map<String, List<ContactProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactProjection.listFromJson(entry.value, growable: growable,);
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
    'createdAt',
    'optOut',
  };
}

