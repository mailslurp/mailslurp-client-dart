//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePostmasterConnectionOptions {
  /// Returns a new [CreatePostmasterConnectionOptions] instance.
  CreatePostmasterConnectionOptions({
    this.redirectBase,
    this.redirectUri,
    this.emailAddress,
    this.state,
  });

  String? redirectBase;

  String? redirectUri;

  String? emailAddress;

  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePostmasterConnectionOptions &&
     other.redirectBase == redirectBase &&
     other.redirectUri == redirectUri &&
     other.emailAddress == emailAddress &&
     other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (redirectBase == null ? 0 : redirectBase!.hashCode) +
    (redirectUri == null ? 0 : redirectUri!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'CreatePostmasterConnectionOptions[redirectBase=$redirectBase, redirectUri=$redirectUri, emailAddress=$emailAddress, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.redirectBase != null) {
      json[r'redirectBase'] = this.redirectBase;
    } else {
      json[r'redirectBase'] = null;
    }
    if (this.redirectUri != null) {
      json[r'redirectUri'] = this.redirectUri;
    } else {
      json[r'redirectUri'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePostmasterConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePostmasterConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePostmasterConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePostmasterConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePostmasterConnectionOptions(
        redirectBase: mapValueOfType<String>(json, r'redirectBase'),
        redirectUri: mapValueOfType<String>(json, r'redirectUri'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<CreatePostmasterConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePostmasterConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePostmasterConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePostmasterConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePostmasterConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePostmasterConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePostmasterConnectionOptions-objects as value to a dart map
  static Map<String, List<CreatePostmasterConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePostmasterConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePostmasterConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

