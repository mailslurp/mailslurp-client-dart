//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePortalOptions {
  /// Returns a new [CreatePortalOptions] instance.
  CreatePortalOptions({
    this.name,
    this.domainId,
    this.description,
    this.linkHelp,
  });

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
  String? domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkHelp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePortalOptions &&
     other.name == name &&
     other.domainId == domainId &&
     other.description == description &&
     other.linkHelp == linkHelp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (linkHelp == null ? 0 : linkHelp!.hashCode);

  @override
  String toString() => 'CreatePortalOptions[name=$name, domainId=$domainId, description=$description, linkHelp=$linkHelp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.linkHelp != null) {
      json[r'linkHelp'] = this.linkHelp;
    } else {
      json[r'linkHelp'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePortalOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePortalOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePortalOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePortalOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePortalOptions(
        name: mapValueOfType<String>(json, r'name'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        description: mapValueOfType<String>(json, r'description'),
        linkHelp: mapValueOfType<String>(json, r'linkHelp'),
      );
    }
    return null;
  }

  static List<CreatePortalOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePortalOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePortalOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePortalOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePortalOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePortalOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePortalOptions-objects as value to a dart map
  static Map<String, List<CreatePortalOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePortalOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePortalOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

