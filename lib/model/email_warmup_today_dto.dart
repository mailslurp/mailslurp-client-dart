//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupTodayDto {
  /// Returns a new [EmailWarmupTodayDto] instance.
  EmailWarmupTodayDto({
    required this.date,
    required this.plannedSends,
    required this.acceptedSends,
    required this.observedSends,
    required this.failedSends,
    this.nextSendAt,
  });

  DateTime date;

  int plannedSends;

  int acceptedSends;

  int observedSends;

  int failedSends;

  DateTime? nextSendAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupTodayDto &&
     other.date == date &&
     other.plannedSends == plannedSends &&
     other.acceptedSends == acceptedSends &&
     other.observedSends == observedSends &&
     other.failedSends == failedSends &&
     other.nextSendAt == nextSendAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (plannedSends.hashCode) +
    (acceptedSends.hashCode) +
    (observedSends.hashCode) +
    (failedSends.hashCode) +
    (nextSendAt == null ? 0 : nextSendAt!.hashCode);

  @override
  String toString() => 'EmailWarmupTodayDto[date=$date, plannedSends=$plannedSends, acceptedSends=$acceptedSends, observedSends=$observedSends, failedSends=$failedSends, nextSendAt=$nextSendAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'plannedSends'] = this.plannedSends;
      json[r'acceptedSends'] = this.acceptedSends;
      json[r'observedSends'] = this.observedSends;
      json[r'failedSends'] = this.failedSends;
    if (this.nextSendAt != null) {
      json[r'nextSendAt'] = this.nextSendAt!.toUtc().toIso8601String();
    } else {
      json[r'nextSendAt'] = null;
    }
    return json;
  }

  /// Returns a new [EmailWarmupTodayDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupTodayDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupTodayDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupTodayDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupTodayDto(
        date: mapDateTime(json, r'date', '')!,
        plannedSends: mapValueOfType<int>(json, r'plannedSends')!,
        acceptedSends: mapValueOfType<int>(json, r'acceptedSends')!,
        observedSends: mapValueOfType<int>(json, r'observedSends')!,
        failedSends: mapValueOfType<int>(json, r'failedSends')!,
        nextSendAt: mapDateTime(json, r'nextSendAt', ''),
      );
    }
    return null;
  }

  static List<EmailWarmupTodayDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupTodayDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupTodayDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupTodayDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupTodayDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupTodayDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupTodayDto-objects as value to a dart map
  static Map<String, List<EmailWarmupTodayDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupTodayDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupTodayDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'plannedSends',
    'acceptedSends',
    'observedSends',
    'failedSends',
  };
}

