//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneSmsPrepaidCreditsDto {
  /// Returns a new [PhoneSmsPrepaidCreditsDto] instance.
  PhoneSmsPrepaidCreditsDto({
    required this.count,
    required this.totalRemainingCredits,
    this.items = const [],
  });

  int count;

  int totalRemainingCredits;

  List<PhoneSmsPrepaidCreditDto> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneSmsPrepaidCreditsDto &&
     other.count == count &&
     other.totalRemainingCredits == totalRemainingCredits &&
     other.items == items;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count.hashCode) +
    (totalRemainingCredits.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'PhoneSmsPrepaidCreditsDto[count=$count, totalRemainingCredits=$totalRemainingCredits, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'count'] = this.count;
      json[r'totalRemainingCredits'] = this.totalRemainingCredits;
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [PhoneSmsPrepaidCreditsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneSmsPrepaidCreditsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneSmsPrepaidCreditsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneSmsPrepaidCreditsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneSmsPrepaidCreditsDto(
        count: mapValueOfType<int>(json, r'count')!,
        totalRemainingCredits: mapValueOfType<int>(json, r'totalRemainingCredits')!,
        items: PhoneSmsPrepaidCreditDto.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<PhoneSmsPrepaidCreditsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSmsPrepaidCreditsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSmsPrepaidCreditsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneSmsPrepaidCreditsDto> mapFromJson(dynamic json) {
    final map = <String, PhoneSmsPrepaidCreditsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneSmsPrepaidCreditsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneSmsPrepaidCreditsDto-objects as value to a dart map
  static Map<String, List<PhoneSmsPrepaidCreditsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneSmsPrepaidCreditsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneSmsPrepaidCreditsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'totalRemainingCredits',
    'items',
  };
}

