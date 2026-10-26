//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupDomainHealthDto {
  /// Returns a new [EmailWarmupDomainHealthDto] instance.
  EmailWarmupDomainHealthDto({
    required this.domain,
    this.monitorId,
    this.status,
    this.healthScore,
    this.spfOk,
    this.dkimOk,
    this.dmarcOk,
    this.mxOk,
    this.blacklistOk,
    this.checkedAt,
  });

  String domain;

  String? monitorId;

  String? status;

  int? healthScore;

  bool? spfOk;

  bool? dkimOk;

  bool? dmarcOk;

  bool? mxOk;

  bool? blacklistOk;

  DateTime? checkedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupDomainHealthDto &&
     other.domain == domain &&
     other.monitorId == monitorId &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.spfOk == spfOk &&
     other.dkimOk == dkimOk &&
     other.dmarcOk == dmarcOk &&
     other.mxOk == mxOk &&
     other.blacklistOk == blacklistOk &&
     other.checkedAt == checkedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (monitorId == null ? 0 : monitorId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (healthScore == null ? 0 : healthScore!.hashCode) +
    (spfOk == null ? 0 : spfOk!.hashCode) +
    (dkimOk == null ? 0 : dkimOk!.hashCode) +
    (dmarcOk == null ? 0 : dmarcOk!.hashCode) +
    (mxOk == null ? 0 : mxOk!.hashCode) +
    (blacklistOk == null ? 0 : blacklistOk!.hashCode) +
    (checkedAt == null ? 0 : checkedAt!.hashCode);

  @override
  String toString() => 'EmailWarmupDomainHealthDto[domain=$domain, monitorId=$monitorId, status=$status, healthScore=$healthScore, spfOk=$spfOk, dkimOk=$dkimOk, dmarcOk=$dmarcOk, mxOk=$mxOk, blacklistOk=$blacklistOk, checkedAt=$checkedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.monitorId != null) {
      json[r'monitorId'] = this.monitorId;
    } else {
      json[r'monitorId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.healthScore != null) {
      json[r'healthScore'] = this.healthScore;
    } else {
      json[r'healthScore'] = null;
    }
    if (this.spfOk != null) {
      json[r'spfOk'] = this.spfOk;
    } else {
      json[r'spfOk'] = null;
    }
    if (this.dkimOk != null) {
      json[r'dkimOk'] = this.dkimOk;
    } else {
      json[r'dkimOk'] = null;
    }
    if (this.dmarcOk != null) {
      json[r'dmarcOk'] = this.dmarcOk;
    } else {
      json[r'dmarcOk'] = null;
    }
    if (this.mxOk != null) {
      json[r'mxOk'] = this.mxOk;
    } else {
      json[r'mxOk'] = null;
    }
    if (this.blacklistOk != null) {
      json[r'blacklistOk'] = this.blacklistOk;
    } else {
      json[r'blacklistOk'] = null;
    }
    if (this.checkedAt != null) {
      json[r'checkedAt'] = this.checkedAt!.toUtc().toIso8601String();
    } else {
      json[r'checkedAt'] = null;
    }
    return json;
  }

  /// Returns a new [EmailWarmupDomainHealthDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupDomainHealthDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupDomainHealthDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupDomainHealthDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupDomainHealthDto(
        domain: mapValueOfType<String>(json, r'domain')!,
        monitorId: mapValueOfType<String>(json, r'monitorId'),
        status: mapValueOfType<String>(json, r'status'),
        healthScore: mapValueOfType<int>(json, r'healthScore'),
        spfOk: mapValueOfType<bool>(json, r'spfOk'),
        dkimOk: mapValueOfType<bool>(json, r'dkimOk'),
        dmarcOk: mapValueOfType<bool>(json, r'dmarcOk'),
        mxOk: mapValueOfType<bool>(json, r'mxOk'),
        blacklistOk: mapValueOfType<bool>(json, r'blacklistOk'),
        checkedAt: mapDateTime(json, r'checkedAt', ''),
      );
    }
    return null;
  }

  static List<EmailWarmupDomainHealthDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupDomainHealthDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupDomainHealthDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupDomainHealthDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupDomainHealthDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupDomainHealthDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupDomainHealthDto-objects as value to a dart map
  static Map<String, List<EmailWarmupDomainHealthDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupDomainHealthDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupDomainHealthDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

