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
    required this.createdAt,
    this.emailAddress,
    this.emailAddresses = const [],
    this.optOut,
    this.firstName,
    this.lastName,
    this.company,
  });

  String id;

  String? groupId;

  DateTime createdAt;

  String? emailAddress;

  List<String>? emailAddresses;

  bool? optOut;

  String? firstName;

  String? lastName;

  String? company;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactProjection &&
     other.id == id &&
     other.groupId == groupId &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.emailAddresses == emailAddresses &&
     other.optOut == optOut &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses!.hashCode) +
    (optOut == null ? 0 : optOut!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (company == null ? 0 : company!.hashCode);

  @override
  String toString() => 'ContactProjection[id=$id, groupId=$groupId, createdAt=$createdAt, emailAddress=$emailAddress, emailAddresses=$emailAddresses, optOut=$optOut, firstName=$firstName, lastName=$lastName, company=$company]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.emailAddresses != null) {
      json[r'emailAddresses'] = this.emailAddresses;
    } else {
      json[r'emailAddresses'] = null;
    }
    if (this.optOut != null) {
      json[r'optOut'] = this.optOut;
    } else {
      json[r'optOut'] = null;
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
        createdAt: mapDateTime(json, r'createdAt', '')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        emailAddresses: json[r'emailAddresses'] is List
            ? (json[r'emailAddresses'] as List).cast<String>()
            : const [],
        optOut: mapValueOfType<bool>(json, r'optOut'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        company: mapValueOfType<String>(json, r'company'),
      );
    }
    return null;
  }

  static List<ContactProjection> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'createdAt',
  };
}

