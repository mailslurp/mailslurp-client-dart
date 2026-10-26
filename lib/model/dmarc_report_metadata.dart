//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DmarcReportMetadata {
  /// Returns a new [DmarcReportMetadata] instance.
  DmarcReportMetadata({
    this.orgName,
    this.email,
    this.reportId,
    this.domain,
    this.adkim,
    this.aspf,
    this.policy,
    this.subdomainPolicy,
    this.percentage,
    this.dateRangeBegin,
    this.dateRangeEnd,
  });

  String? orgName;

  String? email;

  String? reportId;

  String? domain;

  String? adkim;

  String? aspf;

  String? policy;

  String? subdomainPolicy;

  int? percentage;

  DateTime? dateRangeBegin;

  DateTime? dateRangeEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DmarcReportMetadata &&
     other.orgName == orgName &&
     other.email == email &&
     other.reportId == reportId &&
     other.domain == domain &&
     other.adkim == adkim &&
     other.aspf == aspf &&
     other.policy == policy &&
     other.subdomainPolicy == subdomainPolicy &&
     other.percentage == percentage &&
     other.dateRangeBegin == dateRangeBegin &&
     other.dateRangeEnd == dateRangeEnd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orgName == null ? 0 : orgName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (reportId == null ? 0 : reportId!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (adkim == null ? 0 : adkim!.hashCode) +
    (aspf == null ? 0 : aspf!.hashCode) +
    (policy == null ? 0 : policy!.hashCode) +
    (subdomainPolicy == null ? 0 : subdomainPolicy!.hashCode) +
    (percentage == null ? 0 : percentage!.hashCode) +
    (dateRangeBegin == null ? 0 : dateRangeBegin!.hashCode) +
    (dateRangeEnd == null ? 0 : dateRangeEnd!.hashCode);

  @override
  String toString() => 'DmarcReportMetadata[orgName=$orgName, email=$email, reportId=$reportId, domain=$domain, adkim=$adkim, aspf=$aspf, policy=$policy, subdomainPolicy=$subdomainPolicy, percentage=$percentage, dateRangeBegin=$dateRangeBegin, dateRangeEnd=$dateRangeEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orgName != null) {
      json[r'orgName'] = this.orgName;
    } else {
      json[r'orgName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.reportId != null) {
      json[r'reportId'] = this.reportId;
    } else {
      json[r'reportId'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.adkim != null) {
      json[r'adkim'] = this.adkim;
    } else {
      json[r'adkim'] = null;
    }
    if (this.aspf != null) {
      json[r'aspf'] = this.aspf;
    } else {
      json[r'aspf'] = null;
    }
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
    if (this.subdomainPolicy != null) {
      json[r'subdomainPolicy'] = this.subdomainPolicy;
    } else {
      json[r'subdomainPolicy'] = null;
    }
    if (this.percentage != null) {
      json[r'percentage'] = this.percentage;
    } else {
      json[r'percentage'] = null;
    }
    if (this.dateRangeBegin != null) {
      json[r'dateRangeBegin'] = this.dateRangeBegin!.toUtc().toIso8601String();
    } else {
      json[r'dateRangeBegin'] = null;
    }
    if (this.dateRangeEnd != null) {
      json[r'dateRangeEnd'] = this.dateRangeEnd!.toUtc().toIso8601String();
    } else {
      json[r'dateRangeEnd'] = null;
    }
    return json;
  }

  /// Returns a new [DmarcReportMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DmarcReportMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DmarcReportMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DmarcReportMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DmarcReportMetadata(
        orgName: mapValueOfType<String>(json, r'orgName'),
        email: mapValueOfType<String>(json, r'email'),
        reportId: mapValueOfType<String>(json, r'reportId'),
        domain: mapValueOfType<String>(json, r'domain'),
        adkim: mapValueOfType<String>(json, r'adkim'),
        aspf: mapValueOfType<String>(json, r'aspf'),
        policy: mapValueOfType<String>(json, r'policy'),
        subdomainPolicy: mapValueOfType<String>(json, r'subdomainPolicy'),
        percentage: mapValueOfType<int>(json, r'percentage'),
        dateRangeBegin: mapDateTime(json, r'dateRangeBegin', ''),
        dateRangeEnd: mapDateTime(json, r'dateRangeEnd', ''),
      );
    }
    return null;
  }

  static List<DmarcReportMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DmarcReportMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DmarcReportMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DmarcReportMetadata> mapFromJson(dynamic json) {
    final map = <String, DmarcReportMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DmarcReportMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DmarcReportMetadata-objects as value to a dart map
  static Map<String, List<DmarcReportMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DmarcReportMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DmarcReportMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

