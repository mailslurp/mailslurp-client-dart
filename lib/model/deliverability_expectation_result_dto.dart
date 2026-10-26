//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityExpectationResultDto {
  /// Returns a new [DeliverabilityExpectationResultDto] instance.
  DeliverabilityExpectationResultDto({
    required this.expectationIndex,
    this.expectationName,
    required this.minCount,
    required this.actualCount,
    required this.passed,
    this.from,
    this.to,
    this.subject,
  });

  int expectationIndex;

  String? expectationName;

  int minCount;

  int actualCount;

  bool passed;

  String? from;

  String? to;

  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityExpectationResultDto &&
     other.expectationIndex == expectationIndex &&
     other.expectationName == expectationName &&
     other.minCount == minCount &&
     other.actualCount == actualCount &&
     other.passed == passed &&
     other.from == from &&
     other.to == to &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expectationIndex.hashCode) +
    (expectationName == null ? 0 : expectationName!.hashCode) +
    (minCount.hashCode) +
    (actualCount.hashCode) +
    (passed.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'DeliverabilityExpectationResultDto[expectationIndex=$expectationIndex, expectationName=$expectationName, minCount=$minCount, actualCount=$actualCount, passed=$passed, from=$from, to=$to, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'expectationIndex'] = this.expectationIndex;
    if (this.expectationName != null) {
      json[r'expectationName'] = this.expectationName;
    } else {
      json[r'expectationName'] = null;
    }
      json[r'minCount'] = this.minCount;
      json[r'actualCount'] = this.actualCount;
      json[r'passed'] = this.passed;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilityExpectationResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityExpectationResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityExpectationResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityExpectationResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityExpectationResultDto(
        expectationIndex: mapValueOfType<int>(json, r'expectationIndex')!,
        expectationName: mapValueOfType<String>(json, r'expectationName'),
        minCount: mapValueOfType<int>(json, r'minCount')!,
        actualCount: mapValueOfType<int>(json, r'actualCount')!,
        passed: mapValueOfType<bool>(json, r'passed')!,
        from: mapValueOfType<String>(json, r'from'),
        to: mapValueOfType<String>(json, r'to'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<DeliverabilityExpectationResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityExpectationResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityExpectationResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityExpectationResultDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityExpectationResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityExpectationResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityExpectationResultDto-objects as value to a dart map
  static Map<String, List<DeliverabilityExpectationResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityExpectationResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityExpectationResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'expectationIndex',
    'minCount',
    'actualCount',
    'passed',
  };
}

