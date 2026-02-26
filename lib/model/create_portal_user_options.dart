//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePortalUserOptions {
  /// Returns a new [CreatePortalUserOptions] instance.
  CreatePortalUserOptions({
    this.password,
    this.name,
    this.username,
    this.skipInboxCreation,
    this.inboxId,
    this.createInboxOptions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? skipInboxCreation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateInboxDto? createInboxOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePortalUserOptions &&
     other.password == password &&
     other.name == name &&
     other.username == username &&
     other.skipInboxCreation == skipInboxCreation &&
     other.inboxId == inboxId &&
     other.createInboxOptions == createInboxOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password == null ? 0 : password!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (skipInboxCreation == null ? 0 : skipInboxCreation!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (createInboxOptions == null ? 0 : createInboxOptions!.hashCode);

  @override
  String toString() => 'CreatePortalUserOptions[password=$password, name=$name, username=$username, skipInboxCreation=$skipInboxCreation, inboxId=$inboxId, createInboxOptions=$createInboxOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.skipInboxCreation != null) {
      json[r'skipInboxCreation'] = this.skipInboxCreation;
    } else {
      json[r'skipInboxCreation'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.createInboxOptions != null) {
      json[r'createInboxOptions'] = this.createInboxOptions;
    } else {
      json[r'createInboxOptions'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePortalUserOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePortalUserOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePortalUserOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePortalUserOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePortalUserOptions(
        password: mapValueOfType<String>(json, r'password'),
        name: mapValueOfType<String>(json, r'name'),
        username: mapValueOfType<String>(json, r'username'),
        skipInboxCreation: mapValueOfType<bool>(json, r'skipInboxCreation'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        createInboxOptions: CreateInboxDto.fromJson(json[r'createInboxOptions']),
      );
    }
    return null;
  }

  static List<CreatePortalUserOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePortalUserOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePortalUserOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePortalUserOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePortalUserOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePortalUserOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePortalUserOptions-objects as value to a dart map
  static Map<String, List<CreatePortalUserOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePortalUserOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePortalUserOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

