//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserStorageInsightsDto {
  /// Returns a new [UserStorageInsightsDto] instance.
  UserStorageInsightsDto({
    this.topInboxes = const [],
    this.topDomains = const [],
    required this.generatedAt,
  });

  List<UserStorageInsightItemDto> topInboxes;

  List<UserStorageInsightItemDto> topDomains;

  DateTime generatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserStorageInsightsDto &&
     other.topInboxes == topInboxes &&
     other.topDomains == topDomains &&
     other.generatedAt == generatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topInboxes.hashCode) +
    (topDomains.hashCode) +
    (generatedAt.hashCode);

  @override
  String toString() => 'UserStorageInsightsDto[topInboxes=$topInboxes, topDomains=$topDomains, generatedAt=$generatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topInboxes'] = this.topInboxes;
      json[r'topDomains'] = this.topDomains;
      json[r'generatedAt'] = this.generatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserStorageInsightsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserStorageInsightsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserStorageInsightsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserStorageInsightsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserStorageInsightsDto(
        topInboxes: UserStorageInsightItemDto.listFromJson(json[r'topInboxes']),
        topDomains: UserStorageInsightItemDto.listFromJson(json[r'topDomains']),
        generatedAt: mapDateTime(json, r'generatedAt', '')!,
      );
    }
    return null;
  }

  static List<UserStorageInsightsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserStorageInsightsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserStorageInsightsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserStorageInsightsDto> mapFromJson(dynamic json) {
    final map = <String, UserStorageInsightsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserStorageInsightsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserStorageInsightsDto-objects as value to a dart map
  static Map<String, List<UserStorageInsightsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserStorageInsightsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserStorageInsightsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topInboxes',
    'topDomains',
    'generatedAt',
  };
}

