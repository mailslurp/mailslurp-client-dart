//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapServerListOptions {
  /// Returns a new [ImapServerListOptions] instance.
  ImapServerListOptions({
    this.uidSet,
    this.seqSet,
  });

  String? uidSet;

  String? seqSet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapServerListOptions &&
     other.uidSet == uidSet &&
     other.seqSet == seqSet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uidSet == null ? 0 : uidSet!.hashCode) +
    (seqSet == null ? 0 : seqSet!.hashCode);

  @override
  String toString() => 'ImapServerListOptions[uidSet=$uidSet, seqSet=$seqSet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uidSet != null) {
      json[r'uidSet'] = this.uidSet;
    } else {
      json[r'uidSet'] = null;
    }
    if (this.seqSet != null) {
      json[r'seqSet'] = this.seqSet;
    } else {
      json[r'seqSet'] = null;
    }
    return json;
  }

  /// Returns a new [ImapServerListOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapServerListOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapServerListOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapServerListOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapServerListOptions(
        uidSet: mapValueOfType<String>(json, r'uidSet'),
        seqSet: mapValueOfType<String>(json, r'seqSet'),
      );
    }
    return null;
  }

  static List<ImapServerListOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerListOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerListOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapServerListOptions> mapFromJson(dynamic json) {
    final map = <String, ImapServerListOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapServerListOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapServerListOptions-objects as value to a dart map
  static Map<String, List<ImapServerListOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapServerListOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapServerListOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

