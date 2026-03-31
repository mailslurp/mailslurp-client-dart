//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DmarcReportSourceSummary {
  /// Returns a new [DmarcReportSourceSummary] instance.
  DmarcReportSourceSummary({
    required this.sourceIp,
    required this.count,
    this.disposition,
    required this.dkimAligned,
    required this.spfAligned,
    this.headerFrom,
  });

  String sourceIp;

  int count;

  String? disposition;

  bool dkimAligned;

  bool spfAligned;

  String? headerFrom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DmarcReportSourceSummary &&
     other.sourceIp == sourceIp &&
     other.count == count &&
     other.disposition == disposition &&
     other.dkimAligned == dkimAligned &&
     other.spfAligned == spfAligned &&
     other.headerFrom == headerFrom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceIp.hashCode) +
    (count.hashCode) +
    (disposition == null ? 0 : disposition!.hashCode) +
    (dkimAligned.hashCode) +
    (spfAligned.hashCode) +
    (headerFrom == null ? 0 : headerFrom!.hashCode);

  @override
  String toString() => 'DmarcReportSourceSummary[sourceIp=$sourceIp, count=$count, disposition=$disposition, dkimAligned=$dkimAligned, spfAligned=$spfAligned, headerFrom=$headerFrom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sourceIp'] = this.sourceIp;
      json[r'count'] = this.count;
    if (this.disposition != null) {
      json[r'disposition'] = this.disposition;
    } else {
      json[r'disposition'] = null;
    }
      json[r'dkimAligned'] = this.dkimAligned;
      json[r'spfAligned'] = this.spfAligned;
    if (this.headerFrom != null) {
      json[r'headerFrom'] = this.headerFrom;
    } else {
      json[r'headerFrom'] = null;
    }
    return json;
  }

  /// Returns a new [DmarcReportSourceSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DmarcReportSourceSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DmarcReportSourceSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DmarcReportSourceSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DmarcReportSourceSummary(
        sourceIp: mapValueOfType<String>(json, r'sourceIp')!,
        count: mapValueOfType<int>(json, r'count')!,
        disposition: mapValueOfType<String>(json, r'disposition'),
        dkimAligned: mapValueOfType<bool>(json, r'dkimAligned')!,
        spfAligned: mapValueOfType<bool>(json, r'spfAligned')!,
        headerFrom: mapValueOfType<String>(json, r'headerFrom'),
      );
    }
    return null;
  }

  static List<DmarcReportSourceSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DmarcReportSourceSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DmarcReportSourceSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DmarcReportSourceSummary> mapFromJson(dynamic json) {
    final map = <String, DmarcReportSourceSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DmarcReportSourceSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DmarcReportSourceSummary-objects as value to a dart map
  static Map<String, List<DmarcReportSourceSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DmarcReportSourceSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DmarcReportSourceSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sourceIp',
    'count',
    'dkimAligned',
    'spfAligned',
  };
}

