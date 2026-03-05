//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantReputationFindingsDto {
  /// Returns a new [TenantReputationFindingsDto] instance.
  TenantReputationFindingsDto({
    required this.generatedAt,
    required this.userId,
    this.findings = const [],
  });

  DateTime generatedAt;

  String userId;

  List<TenantReputationFindingDto> findings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantReputationFindingsDto &&
     other.generatedAt == generatedAt &&
     other.userId == userId &&
     other.findings == findings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (generatedAt.hashCode) +
    (userId.hashCode) +
    (findings.hashCode);

  @override
  String toString() => 'TenantReputationFindingsDto[generatedAt=$generatedAt, userId=$userId, findings=$findings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'generatedAt'] = this.generatedAt.toUtc().toIso8601String();
      json[r'userId'] = this.userId;
      json[r'findings'] = this.findings;
    return json;
  }

  /// Returns a new [TenantReputationFindingsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantReputationFindingsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TenantReputationFindingsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TenantReputationFindingsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TenantReputationFindingsDto(
        generatedAt: mapDateTime(json, r'generatedAt', '')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        findings: TenantReputationFindingDto.listFromJson(json[r'findings']),
      );
    }
    return null;
  }

  static List<TenantReputationFindingsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationFindingsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationFindingsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantReputationFindingsDto> mapFromJson(dynamic json) {
    final map = <String, TenantReputationFindingsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantReputationFindingsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantReputationFindingsDto-objects as value to a dart map
  static Map<String, List<TenantReputationFindingsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantReputationFindingsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantReputationFindingsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'generatedAt',
    'userId',
    'findings',
  };
}

