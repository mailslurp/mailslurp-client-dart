//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentApiErrorDto {
  /// Returns a new [AgentApiErrorDto] instance.
  AgentApiErrorDto({
    required this.code,
    required this.message,
    required this.retryable,
    this.suggestedAction,
    required this.requestId,
    this.details = const {},
  });

  String code;

  String message;

  bool retryable;

  String? suggestedAction;

  String requestId;

  Map<String, Object> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentApiErrorDto &&
     other.code == code &&
     other.message == message &&
     other.retryable == retryable &&
     other.suggestedAction == suggestedAction &&
     other.requestId == requestId &&
     other.details == details;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message.hashCode) +
    (retryable.hashCode) +
    (suggestedAction == null ? 0 : suggestedAction!.hashCode) +
    (requestId.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'AgentApiErrorDto[code=$code, message=$message, retryable=$retryable, suggestedAction=$suggestedAction, requestId=$requestId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'message'] = this.message;
      json[r'retryable'] = this.retryable;
    if (this.suggestedAction != null) {
      json[r'suggestedAction'] = this.suggestedAction;
    } else {
      json[r'suggestedAction'] = null;
    }
      json[r'requestId'] = this.requestId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [AgentApiErrorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentApiErrorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentApiErrorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentApiErrorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentApiErrorDto(
        code: mapValueOfType<String>(json, r'code')!,
        message: mapValueOfType<String>(json, r'message')!,
        retryable: mapValueOfType<bool>(json, r'retryable')!,
        suggestedAction: mapValueOfType<String>(json, r'suggestedAction'),
        requestId: mapValueOfType<String>(json, r'requestId')!,
        details: mapCastOfType<String, Object>(json, r'details')!,
      );
    }
    return null;
  }

  static List<AgentApiErrorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentApiErrorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentApiErrorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentApiErrorDto> mapFromJson(dynamic json) {
    final map = <String, AgentApiErrorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentApiErrorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentApiErrorDto-objects as value to a dart map
  static Map<String, List<AgentApiErrorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentApiErrorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentApiErrorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'message',
    'retryable',
    'requestId',
    'details',
  };
}

