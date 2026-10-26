//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatedFreeInboxDto {
  /// Returns a new [CreatedFreeInboxDto] instance.
  CreatedFreeInboxDto({
    required this.token,
    required this.inbox,
  });

  String token;

  FreeInboxDto inbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatedFreeInboxDto &&
     other.token == token &&
     other.inbox == inbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (inbox.hashCode);

  @override
  String toString() => 'CreatedFreeInboxDto[token=$token, inbox=$inbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'inbox'] = this.inbox;
    return json;
  }

  /// Returns a new [CreatedFreeInboxDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatedFreeInboxDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatedFreeInboxDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatedFreeInboxDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatedFreeInboxDto(
        token: mapValueOfType<String>(json, r'token')!,
        inbox: FreeInboxDto.fromJson(json[r'inbox'])!,
      );
    }
    return null;
  }

  static List<CreatedFreeInboxDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatedFreeInboxDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatedFreeInboxDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatedFreeInboxDto> mapFromJson(dynamic json) {
    final map = <String, CreatedFreeInboxDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatedFreeInboxDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatedFreeInboxDto-objects as value to a dart map
  static Map<String, List<CreatedFreeInboxDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatedFreeInboxDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatedFreeInboxDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'inbox',
  };
}

