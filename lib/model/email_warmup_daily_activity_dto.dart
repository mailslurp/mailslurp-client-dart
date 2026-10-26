//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupDailyActivityDto {
  /// Returns a new [EmailWarmupDailyActivityDto] instance.
  EmailWarmupDailyActivityDto({
    required this.date,
    required this.scheduledSends,
    required this.acceptedSends,
    required this.observedSends,
    required this.failedSends,
  });

  DateTime date;

  int scheduledSends;

  int acceptedSends;

  int observedSends;

  int failedSends;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupDailyActivityDto &&
     other.date == date &&
     other.scheduledSends == scheduledSends &&
     other.acceptedSends == acceptedSends &&
     other.observedSends == observedSends &&
     other.failedSends == failedSends;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (scheduledSends.hashCode) +
    (acceptedSends.hashCode) +
    (observedSends.hashCode) +
    (failedSends.hashCode);

  @override
  String toString() => 'EmailWarmupDailyActivityDto[date=$date, scheduledSends=$scheduledSends, acceptedSends=$acceptedSends, observedSends=$observedSends, failedSends=$failedSends]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'scheduledSends'] = this.scheduledSends;
      json[r'acceptedSends'] = this.acceptedSends;
      json[r'observedSends'] = this.observedSends;
      json[r'failedSends'] = this.failedSends;
    return json;
  }

  /// Returns a new [EmailWarmupDailyActivityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupDailyActivityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupDailyActivityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupDailyActivityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupDailyActivityDto(
        date: mapDateTime(json, r'date', '')!,
        scheduledSends: mapValueOfType<int>(json, r'scheduledSends')!,
        acceptedSends: mapValueOfType<int>(json, r'acceptedSends')!,
        observedSends: mapValueOfType<int>(json, r'observedSends')!,
        failedSends: mapValueOfType<int>(json, r'failedSends')!,
      );
    }
    return null;
  }

  static List<EmailWarmupDailyActivityDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupDailyActivityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupDailyActivityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupDailyActivityDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupDailyActivityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupDailyActivityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupDailyActivityDto-objects as value to a dart map
  static Map<String, List<EmailWarmupDailyActivityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupDailyActivityDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupDailyActivityDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'scheduledSends',
    'acceptedSends',
    'observedSends',
    'failedSends',
  };
}

