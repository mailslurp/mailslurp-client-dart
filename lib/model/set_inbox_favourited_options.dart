//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetInboxFavouritedOptions {
  /// Returns a new [SetInboxFavouritedOptions] instance.
  SetInboxFavouritedOptions({
    required this.state,
  });

  /// Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  bool state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetInboxFavouritedOptions &&
     other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode);

  @override
  String toString() => 'SetInboxFavouritedOptions[state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [SetInboxFavouritedOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetInboxFavouritedOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetInboxFavouritedOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetInboxFavouritedOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetInboxFavouritedOptions(
        state: mapValueOfType<bool>(json, r'state')!,
      );
    }
    return null;
  }

  static List<SetInboxFavouritedOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetInboxFavouritedOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetInboxFavouritedOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetInboxFavouritedOptions> mapFromJson(dynamic json) {
    final map = <String, SetInboxFavouritedOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetInboxFavouritedOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetInboxFavouritedOptions-objects as value to a dart map
  static Map<String, List<SetInboxFavouritedOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetInboxFavouritedOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetInboxFavouritedOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
  };
}

