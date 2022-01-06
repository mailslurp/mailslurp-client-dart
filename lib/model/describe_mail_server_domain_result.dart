//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DescribeMailServerDomainResult {
  /// Returns a new [DescribeMailServerDomainResult] instance.
  DescribeMailServerDomainResult({
    this.mxRecords = const [],
    this.domain,
    this.message,
  });

  List<NameServerRecord> mxRecords;

  String domain;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DescribeMailServerDomainResult &&
     other.mxRecords == mxRecords &&
     other.domain == domain &&
     other.message == message;

  @override
  int get hashCode =>
    (mxRecords == null ? 0 : mxRecords.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'DescribeMailServerDomainResult[mxRecords=$mxRecords, domain=$domain, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mxRecords != null) {
      json[r'mxRecords'] = mxRecords;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [DescribeMailServerDomainResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DescribeMailServerDomainResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DescribeMailServerDomainResult(
        mxRecords: NameServerRecord.listFromJson(json[r'mxRecords']),
        domain: json[r'domain'],
        message: json[r'message'],
    );

  static List<DescribeMailServerDomainResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DescribeMailServerDomainResult>[]
      : json.map((v) => DescribeMailServerDomainResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, DescribeMailServerDomainResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DescribeMailServerDomainResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DescribeMailServerDomainResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DescribeMailServerDomainResult-objects as value to a dart map
  static Map<String, List<DescribeMailServerDomainResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DescribeMailServerDomainResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DescribeMailServerDomainResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

