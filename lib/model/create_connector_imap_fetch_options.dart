//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorImapFetchOptions {
  /// Returns a new [CreateConnectorImapFetchOptions] instance.
  CreateConnectorImapFetchOptions({
    this.selectFolder,
    this.searchTerms,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selectFolder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchTerms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorImapFetchOptions &&
     other.selectFolder == selectFolder &&
     other.searchTerms == searchTerms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (selectFolder == null ? 0 : selectFolder!.hashCode) +
    (searchTerms == null ? 0 : searchTerms!.hashCode);

  @override
  String toString() => 'CreateConnectorImapFetchOptions[selectFolder=$selectFolder, searchTerms=$searchTerms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.selectFolder != null) {
      json[r'selectFolder'] = this.selectFolder;
    } else {
      json[r'selectFolder'] = null;
    }
    if (this.searchTerms != null) {
      json[r'searchTerms'] = this.searchTerms;
    } else {
      json[r'searchTerms'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorImapFetchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorImapFetchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorImapFetchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorImapFetchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorImapFetchOptions(
        selectFolder: mapValueOfType<String>(json, r'selectFolder'),
        searchTerms: mapValueOfType<String>(json, r'searchTerms'),
      );
    }
    return null;
  }

  static List<CreateConnectorImapFetchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorImapFetchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorImapFetchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorImapFetchOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorImapFetchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorImapFetchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorImapFetchOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorImapFetchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorImapFetchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorImapFetchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

