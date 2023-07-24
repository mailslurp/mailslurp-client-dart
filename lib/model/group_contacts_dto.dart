//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupContactsDto {
  /// Returns a new [GroupContactsDto] instance.
  GroupContactsDto({
    required this.group,
    this.contacts = const [],
  });

  GroupDto group;

  List<ContactDto> contacts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupContactsDto &&
     other.group == group &&
     other.contacts == contacts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (group.hashCode) +
    (contacts.hashCode);

  @override
  String toString() => 'GroupContactsDto[group=$group, contacts=$contacts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'group'] = this.group;
      json[r'contacts'] = this.contacts;
    return json;
  }

  /// Returns a new [GroupContactsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupContactsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupContactsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupContactsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupContactsDto(
        group: GroupDto.fromJson(json[r'group'])!,
        contacts: ContactDto.listFromJson(json[r'contacts'])!,
      );
    }
    return null;
  }

  static List<GroupContactsDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupContactsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupContactsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupContactsDto> mapFromJson(dynamic json) {
    final map = <String, GroupContactsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupContactsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupContactsDto-objects as value to a dart map
  static Map<String, List<GroupContactsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupContactsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupContactsDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'group',
    'contacts',
  };
}

