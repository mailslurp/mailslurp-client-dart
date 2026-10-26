//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePostmasterConnectionResult {
  /// Returns a new [CreatePostmasterConnectionResult] instance.
  CreatePostmasterConnectionResult({
    required this.url,
    required this.state,
    required this.scope,
    required this.redirectUri,
  });

  String url;

  String state;

  String scope;

  String redirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePostmasterConnectionResult &&
     other.url == url &&
     other.state == state &&
     other.scope == scope &&
     other.redirectUri == redirectUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (state.hashCode) +
    (scope.hashCode) +
    (redirectUri.hashCode);

  @override
  String toString() => 'CreatePostmasterConnectionResult[url=$url, state=$state, scope=$scope, redirectUri=$redirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'state'] = this.state;
      json[r'scope'] = this.scope;
      json[r'redirectUri'] = this.redirectUri;
    return json;
  }

  /// Returns a new [CreatePostmasterConnectionResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePostmasterConnectionResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePostmasterConnectionResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePostmasterConnectionResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePostmasterConnectionResult(
        url: mapValueOfType<String>(json, r'url')!,
        state: mapValueOfType<String>(json, r'state')!,
        scope: mapValueOfType<String>(json, r'scope')!,
        redirectUri: mapValueOfType<String>(json, r'redirectUri')!,
      );
    }
    return null;
  }

  static List<CreatePostmasterConnectionResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePostmasterConnectionResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePostmasterConnectionResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePostmasterConnectionResult> mapFromJson(dynamic json) {
    final map = <String, CreatePostmasterConnectionResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePostmasterConnectionResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePostmasterConnectionResult-objects as value to a dart map
  static Map<String, List<CreatePostmasterConnectionResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePostmasterConnectionResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePostmasterConnectionResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'state',
    'scope',
    'redirectUri',
  };
}

