//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxExistsDto {
  /// Returns a new [InboxExistsDto] instance.
  InboxExistsDto({
    required this.exists,
    this.softBounce,
    this.hardBounce,
  });

  bool exists;

  /// Inbox is full or simulating a soft bounce via inbox replier or rulesets
  bool? softBounce;

  /// Inbox is blocking receiving emails or simulating a hard bounce via inbox replier or rulesets
  bool? hardBounce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxExistsDto &&
     other.exists == exists &&
     other.softBounce == softBounce &&
     other.hardBounce == hardBounce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exists.hashCode) +
    (softBounce == null ? 0 : softBounce!.hashCode) +
    (hardBounce == null ? 0 : hardBounce!.hashCode);

  @override
  String toString() => 'InboxExistsDto[exists=$exists, softBounce=$softBounce, hardBounce=$hardBounce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exists'] = this.exists;
    if (this.softBounce != null) {
      json[r'softBounce'] = this.softBounce;
    } else {
      json[r'softBounce'] = null;
    }
    if (this.hardBounce != null) {
      json[r'hardBounce'] = this.hardBounce;
    } else {
      json[r'hardBounce'] = null;
    }
    return json;
  }

  /// Returns a new [InboxExistsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxExistsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxExistsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxExistsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxExistsDto(
        exists: mapValueOfType<bool>(json, r'exists')!,
        softBounce: mapValueOfType<bool>(json, r'softBounce'),
        hardBounce: mapValueOfType<bool>(json, r'hardBounce'),
      );
    }
    return null;
  }

  static List<InboxExistsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxExistsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxExistsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxExistsDto> mapFromJson(dynamic json) {
    final map = <String, InboxExistsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxExistsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxExistsDto-objects as value to a dart map
  static Map<String, List<InboxExistsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxExistsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxExistsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'exists',
  };
}

