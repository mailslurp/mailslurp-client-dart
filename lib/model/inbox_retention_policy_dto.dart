//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRetentionPolicyDto {
  /// Returns a new [InboxRetentionPolicyDto] instance.
  InboxRetentionPolicyDto({
    required this.id,
    this.inboxId,
    required this.retentionDays,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  int retentionDays;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRetentionPolicyDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.retentionDays == retentionDays &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (retentionDays.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'InboxRetentionPolicyDto[id=$id, inboxId=$inboxId, retentionDays=$retentionDays, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'retentionDays'] = this.retentionDays;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxRetentionPolicyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRetentionPolicyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRetentionPolicyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRetentionPolicyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRetentionPolicyDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        retentionDays: mapValueOfType<int>(json, r'retentionDays')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<InboxRetentionPolicyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRetentionPolicyDto> mapFromJson(dynamic json) {
    final map = <String, InboxRetentionPolicyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRetentionPolicyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRetentionPolicyDto-objects as value to a dart map
  static Map<String, List<InboxRetentionPolicyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRetentionPolicyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRetentionPolicyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'retentionDays',
    'createdAt',
    'updatedAt',
  };
}

