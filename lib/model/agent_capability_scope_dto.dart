//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentCapabilityScopeDto {
  /// Returns a new [AgentCapabilityScopeDto] instance.
  AgentCapabilityScopeDto({
    required this.accountWide,
    this.inboxIds = const {},
    this.inboxTags = const {},
    this.phoneNumberIds = const {},
  });

  bool accountWide;

  Set<String> inboxIds;

  Set<String> inboxTags;

  Set<String> phoneNumberIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentCapabilityScopeDto &&
     other.accountWide == accountWide &&
     other.inboxIds == inboxIds &&
     other.inboxTags == inboxTags &&
     other.phoneNumberIds == phoneNumberIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountWide.hashCode) +
    (inboxIds.hashCode) +
    (inboxTags.hashCode) +
    (phoneNumberIds.hashCode);

  @override
  String toString() => 'AgentCapabilityScopeDto[accountWide=$accountWide, inboxIds=$inboxIds, inboxTags=$inboxTags, phoneNumberIds=$phoneNumberIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accountWide'] = this.accountWide;
      json[r'inboxIds'] = this.inboxIds;
      json[r'inboxTags'] = this.inboxTags;
      json[r'phoneNumberIds'] = this.phoneNumberIds;
    return json;
  }

  /// Returns a new [AgentCapabilityScopeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentCapabilityScopeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentCapabilityScopeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentCapabilityScopeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentCapabilityScopeDto(
        accountWide: mapValueOfType<bool>(json, r'accountWide')!,
        inboxIds: json[r'inboxIds'] is Set
            ? (json[r'inboxIds'] as Set).cast<String>()
            : const {},
        inboxTags: json[r'inboxTags'] is Set
            ? (json[r'inboxTags'] as Set).cast<String>()
            : const {},
        phoneNumberIds: json[r'phoneNumberIds'] is Set
            ? (json[r'phoneNumberIds'] as Set).cast<String>()
            : const {},
      );
    }
    return null;
  }

  static List<AgentCapabilityScopeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCapabilityScopeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCapabilityScopeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentCapabilityScopeDto> mapFromJson(dynamic json) {
    final map = <String, AgentCapabilityScopeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentCapabilityScopeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentCapabilityScopeDto-objects as value to a dart map
  static Map<String, List<AgentCapabilityScopeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentCapabilityScopeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentCapabilityScopeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accountWide',
    'inboxIds',
    'inboxTags',
    'phoneNumberIds',
  };
}

