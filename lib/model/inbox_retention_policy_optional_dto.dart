//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRetentionPolicyOptionalDto {
  /// Returns a new [InboxRetentionPolicyOptionalDto] instance.
  InboxRetentionPolicyOptionalDto({
    this.policy,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InboxRetentionPolicyDto? policy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRetentionPolicyOptionalDto &&
     other.policy == policy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (policy == null ? 0 : policy!.hashCode);

  @override
  String toString() => 'InboxRetentionPolicyOptionalDto[policy=$policy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
    return json;
  }

  /// Returns a new [InboxRetentionPolicyOptionalDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRetentionPolicyOptionalDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRetentionPolicyOptionalDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRetentionPolicyOptionalDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRetentionPolicyOptionalDto(
        policy: InboxRetentionPolicyDto.fromJson(json[r'policy']),
      );
    }
    return null;
  }

  static List<InboxRetentionPolicyOptionalDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyOptionalDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyOptionalDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRetentionPolicyOptionalDto> mapFromJson(dynamic json) {
    final map = <String, InboxRetentionPolicyOptionalDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRetentionPolicyOptionalDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRetentionPolicyOptionalDto-objects as value to a dart map
  static Map<String, List<InboxRetentionPolicyOptionalDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRetentionPolicyOptionalDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRetentionPolicyOptionalDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

