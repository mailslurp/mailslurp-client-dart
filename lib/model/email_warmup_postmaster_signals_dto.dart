//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupPostmasterSignalsDto {
  /// Returns a new [EmailWarmupPostmasterSignalsDto] instance.
  EmailWarmupPostmasterSignalsDto({
    required this.reportDate,
    this.domainReputation,
    this.userReportedSpamRatio,
    this.spfSuccessRatio,
    this.dkimSuccessRatio,
    this.dmarcSuccessRatio,
  });

  DateTime reportDate;

  String? domainReputation;

  double? userReportedSpamRatio;

  double? spfSuccessRatio;

  double? dkimSuccessRatio;

  double? dmarcSuccessRatio;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupPostmasterSignalsDto &&
     other.reportDate == reportDate &&
     other.domainReputation == domainReputation &&
     other.userReportedSpamRatio == userReportedSpamRatio &&
     other.spfSuccessRatio == spfSuccessRatio &&
     other.dkimSuccessRatio == dkimSuccessRatio &&
     other.dmarcSuccessRatio == dmarcSuccessRatio;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportDate.hashCode) +
    (domainReputation == null ? 0 : domainReputation!.hashCode) +
    (userReportedSpamRatio == null ? 0 : userReportedSpamRatio!.hashCode) +
    (spfSuccessRatio == null ? 0 : spfSuccessRatio!.hashCode) +
    (dkimSuccessRatio == null ? 0 : dkimSuccessRatio!.hashCode) +
    (dmarcSuccessRatio == null ? 0 : dmarcSuccessRatio!.hashCode);

  @override
  String toString() => 'EmailWarmupPostmasterSignalsDto[reportDate=$reportDate, domainReputation=$domainReputation, userReportedSpamRatio=$userReportedSpamRatio, spfSuccessRatio=$spfSuccessRatio, dkimSuccessRatio=$dkimSuccessRatio, dmarcSuccessRatio=$dmarcSuccessRatio]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reportDate'] = _dateFormatter.format(this.reportDate.toUtc());
    if (this.domainReputation != null) {
      json[r'domainReputation'] = this.domainReputation;
    } else {
      json[r'domainReputation'] = null;
    }
    if (this.userReportedSpamRatio != null) {
      json[r'userReportedSpamRatio'] = this.userReportedSpamRatio;
    } else {
      json[r'userReportedSpamRatio'] = null;
    }
    if (this.spfSuccessRatio != null) {
      json[r'spfSuccessRatio'] = this.spfSuccessRatio;
    } else {
      json[r'spfSuccessRatio'] = null;
    }
    if (this.dkimSuccessRatio != null) {
      json[r'dkimSuccessRatio'] = this.dkimSuccessRatio;
    } else {
      json[r'dkimSuccessRatio'] = null;
    }
    if (this.dmarcSuccessRatio != null) {
      json[r'dmarcSuccessRatio'] = this.dmarcSuccessRatio;
    } else {
      json[r'dmarcSuccessRatio'] = null;
    }
    return json;
  }

  /// Returns a new [EmailWarmupPostmasterSignalsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupPostmasterSignalsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupPostmasterSignalsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupPostmasterSignalsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupPostmasterSignalsDto(
        reportDate: mapDateTime(json, r'reportDate', '')!,
        domainReputation: mapValueOfType<String>(json, r'domainReputation'),
        userReportedSpamRatio: mapValueOfType<double>(json, r'userReportedSpamRatio'),
        spfSuccessRatio: mapValueOfType<double>(json, r'spfSuccessRatio'),
        dkimSuccessRatio: mapValueOfType<double>(json, r'dkimSuccessRatio'),
        dmarcSuccessRatio: mapValueOfType<double>(json, r'dmarcSuccessRatio'),
      );
    }
    return null;
  }

  static List<EmailWarmupPostmasterSignalsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPostmasterSignalsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPostmasterSignalsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupPostmasterSignalsDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupPostmasterSignalsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupPostmasterSignalsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupPostmasterSignalsDto-objects as value to a dart map
  static Map<String, List<EmailWarmupPostmasterSignalsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupPostmasterSignalsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupPostmasterSignalsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportDate',
  };
}

