//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantReputationStatusSummaryDto {
  /// Returns a new [TenantReputationStatusSummaryDto] instance.
  TenantReputationStatusSummaryDto({
    required this.generatedAt,
    required this.userId,
    this.rows = const [],
  });

  DateTime generatedAt;

  String userId;

  List<TenantReputationStatusRowDto> rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantReputationStatusSummaryDto &&
     other.generatedAt == generatedAt &&
     other.userId == userId &&
     other.rows == rows;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (generatedAt.hashCode) +
    (userId.hashCode) +
    (rows.hashCode);

  @override
  String toString() => 'TenantReputationStatusSummaryDto[generatedAt=$generatedAt, userId=$userId, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'generatedAt'] = this.generatedAt.toUtc().toIso8601String();
      json[r'userId'] = this.userId;
      json[r'rows'] = this.rows;
    return json;
  }

  /// Returns a new [TenantReputationStatusSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantReputationStatusSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TenantReputationStatusSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TenantReputationStatusSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TenantReputationStatusSummaryDto(
        generatedAt: mapDateTime(json, r'generatedAt', '')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        rows: TenantReputationStatusRowDto.listFromJson(json[r'rows']),
      );
    }
    return null;
  }

  static List<TenantReputationStatusSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationStatusSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationStatusSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantReputationStatusSummaryDto> mapFromJson(dynamic json) {
    final map = <String, TenantReputationStatusSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantReputationStatusSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantReputationStatusSummaryDto-objects as value to a dart map
  static Map<String, List<TenantReputationStatusSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantReputationStatusSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantReputationStatusSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'generatedAt',
    'userId',
    'rows',
  };
}

