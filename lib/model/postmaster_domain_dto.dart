//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostmasterDomainDto {
  /// Returns a new [PostmasterDomainDto] instance.
  PostmasterDomainDto({
    required this.name,
    required this.domain,
    this.permission,
    this.createTime,
    this.firstSeenAt,
    this.lastSyncedAt,
  });

  String name;

  String domain;

  String? permission;

  DateTime? createTime;

  DateTime? firstSeenAt;

  DateTime? lastSyncedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostmasterDomainDto &&
     other.name == name &&
     other.domain == domain &&
     other.permission == permission &&
     other.createTime == createTime &&
     other.firstSeenAt == firstSeenAt &&
     other.lastSyncedAt == lastSyncedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (domain.hashCode) +
    (permission == null ? 0 : permission!.hashCode) +
    (createTime == null ? 0 : createTime!.hashCode) +
    (firstSeenAt == null ? 0 : firstSeenAt!.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode);

  @override
  String toString() => 'PostmasterDomainDto[name=$name, domain=$domain, permission=$permission, createTime=$createTime, firstSeenAt=$firstSeenAt, lastSyncedAt=$lastSyncedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'domain'] = this.domain;
    if (this.permission != null) {
      json[r'permission'] = this.permission;
    } else {
      json[r'permission'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.firstSeenAt != null) {
      json[r'firstSeenAt'] = this.firstSeenAt!.toUtc().toIso8601String();
    } else {
      json[r'firstSeenAt'] = null;
    }
    if (this.lastSyncedAt != null) {
      json[r'lastSyncedAt'] = this.lastSyncedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastSyncedAt'] = null;
    }
    return json;
  }

  /// Returns a new [PostmasterDomainDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostmasterDomainDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostmasterDomainDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostmasterDomainDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostmasterDomainDto(
        name: mapValueOfType<String>(json, r'name')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        permission: mapValueOfType<String>(json, r'permission'),
        createTime: mapDateTime(json, r'createTime', ''),
        firstSeenAt: mapDateTime(json, r'firstSeenAt', ''),
        lastSyncedAt: mapDateTime(json, r'lastSyncedAt', ''),
      );
    }
    return null;
  }

  static List<PostmasterDomainDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostmasterDomainDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostmasterDomainDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostmasterDomainDto> mapFromJson(dynamic json) {
    final map = <String, PostmasterDomainDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostmasterDomainDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostmasterDomainDto-objects as value to a dart map
  static Map<String, List<PostmasterDomainDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostmasterDomainDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostmasterDomainDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'domain',
  };
}

