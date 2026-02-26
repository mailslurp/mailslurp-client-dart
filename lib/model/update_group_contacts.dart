//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateGroupContacts {
  /// Returns a new [UpdateGroupContacts] instance.
  UpdateGroupContacts({
    this.contactIds = const [],
  });

  List<String> contactIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateGroupContacts &&
     other.contactIds == contactIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contactIds.hashCode);

  @override
  String toString() => 'UpdateGroupContacts[contactIds=$contactIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contactIds'] = this.contactIds;
    return json;
  }

  /// Returns a new [UpdateGroupContacts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateGroupContacts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateGroupContacts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateGroupContacts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateGroupContacts(
        contactIds: json[r'contactIds'] is List
            ? (json[r'contactIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<UpdateGroupContacts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateGroupContacts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateGroupContacts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateGroupContacts> mapFromJson(dynamic json) {
    final map = <String, UpdateGroupContacts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateGroupContacts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateGroupContacts-objects as value to a dart map
  static Map<String, List<UpdateGroupContacts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateGroupContacts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateGroupContacts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contactIds',
  };
}

