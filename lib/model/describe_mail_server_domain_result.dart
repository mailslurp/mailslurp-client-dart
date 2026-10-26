//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DescribeMailServerDomainResult {
  /// Returns a new [DescribeMailServerDomainResult] instance.
  DescribeMailServerDomainResult({
    this.mxRecords = const [],
    required this.domain,
    this.message,
  });

  List<NameServerRecord> mxRecords;

  String domain;

  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DescribeMailServerDomainResult &&
     other.mxRecords == mxRecords &&
     other.domain == domain &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mxRecords.hashCode) +
    (domain.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'DescribeMailServerDomainResult[mxRecords=$mxRecords, domain=$domain, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mxRecords'] = this.mxRecords;
      json[r'domain'] = this.domain;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [DescribeMailServerDomainResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DescribeMailServerDomainResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DescribeMailServerDomainResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DescribeMailServerDomainResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DescribeMailServerDomainResult(
        mxRecords: NameServerRecord.listFromJson(json[r'mxRecords']),
        domain: mapValueOfType<String>(json, r'domain')!,
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<DescribeMailServerDomainResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DescribeMailServerDomainResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DescribeMailServerDomainResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DescribeMailServerDomainResult> mapFromJson(dynamic json) {
    final map = <String, DescribeMailServerDomainResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DescribeMailServerDomainResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DescribeMailServerDomainResult-objects as value to a dart map
  static Map<String, List<DescribeMailServerDomainResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DescribeMailServerDomainResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DescribeMailServerDomainResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mxRecords',
    'domain',
  };
}

