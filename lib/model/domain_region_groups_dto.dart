//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainRegionGroupsDto {
  /// Returns a new [DomainRegionGroupsDto] instance.
  DomainRegionGroupsDto({
    this.domainGroups = const [],
  });

  List<DomainRegionGroup> domainGroups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainRegionGroupsDto &&
     other.domainGroups == domainGroups;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainGroups.hashCode);

  @override
  String toString() => 'DomainRegionGroupsDto[domainGroups=$domainGroups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainGroups'] = this.domainGroups;
    return json;
  }

  /// Returns a new [DomainRegionGroupsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainRegionGroupsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainRegionGroupsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainRegionGroupsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainRegionGroupsDto(
        domainGroups: DomainRegionGroup.listFromJson(json[r'domainGroups']),
      );
    }
    return null;
  }

  static List<DomainRegionGroupsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionGroupsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionGroupsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainRegionGroupsDto> mapFromJson(dynamic json) {
    final map = <String, DomainRegionGroupsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainRegionGroupsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainRegionGroupsDto-objects as value to a dart map
  static Map<String, List<DomainRegionGroupsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainRegionGroupsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainRegionGroupsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domainGroups',
  };
}

