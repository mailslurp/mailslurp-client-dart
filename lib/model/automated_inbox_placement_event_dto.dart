//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementEventDto {
  /// Returns a new [AutomatedInboxPlacementEventDto] instance.
  AutomatedInboxPlacementEventDto({
    required this.id,
    required this.executionId,
    required this.eventType,
    this.details = const {},
    required this.createdAt,
  });

  String id;

  String executionId;

  String eventType;

  /// Non-secret execution diagnostics. Credentials and message content are never included.
  Map<String, String> details;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementEventDto &&
     other.id == id &&
     other.executionId == executionId &&
     other.eventType == eventType &&
     other.details == details &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (executionId.hashCode) +
    (eventType.hashCode) +
    (details.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementEventDto[id=$id, executionId=$executionId, eventType=$eventType, details=$details, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'executionId'] = this.executionId;
      json[r'eventType'] = this.eventType;
      json[r'details'] = this.details;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AutomatedInboxPlacementEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementEventDto(
        id: mapValueOfType<String>(json, r'id')!,
        executionId: mapValueOfType<String>(json, r'executionId')!,
        eventType: mapValueOfType<String>(json, r'eventType')!,
        details: mapCastOfType<String, String>(json, r'details')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementEventDto> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementEventDto-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'executionId',
    'eventType',
    'details',
    'createdAt',
  };
}

