//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateContactOptions {
  /// Returns a new [CreateContactOptions] instance.
  CreateContactOptions({
    this.firstName,
    this.lastName,
    this.company,
    this.emailAddresses = const [],
    this.tags = const [],
    this.metaData,
    this.optOut,
    this.groupId,
  });

  String? firstName;

  String? lastName;

  String? company;

  /// Set of email addresses belonging to the contact
  List<String>? emailAddresses;

  /// Tags that can be used to search and group contacts
  List<String>? tags;

  Object? metaData;

  /// Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions.
  bool? optOut;

  /// Group IDs that contact belongs to
  String? groupId;

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
    // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (optOut == null ? 0 : optOut!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode);

  @override
  String toString() => 'CreateContactOptions[firstName=$firstName, lastName=$lastName, company=$company, emailAddresses=$emailAddresses, tags=$tags, metaData=$metaData, optOut=$optOut, groupId=$groupId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
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
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateContactOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateContactOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateContactOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateContactOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateContactOptions(
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        company: mapValueOfType<String>(json, r'company'),
        emailAddresses: json[r'emailAddresses'] is List
            ? (json[r'emailAddresses'] as List).cast<String>()
            : const [],
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        metaData: mapValueOfType<Object>(json, r'metaData'),
        optOut: mapValueOfType<bool>(json, r'optOut'),
        groupId: mapValueOfType<String>(json, r'groupId'),
      );
    }
    return null;
  }

  static List<CreateContactOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateContactOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateContactOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateContactOptions> mapFromJson(dynamic json) {
    final map = <String, CreateContactOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateContactOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateContactOptions-objects as value to a dart map
  static Map<String, List<CreateContactOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateContactOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateContactOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

