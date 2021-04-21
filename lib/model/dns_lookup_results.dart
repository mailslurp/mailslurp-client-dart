//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DNSLookupResults {
  /// Returns a new [DNSLookupResults] instance.
  DNSLookupResults({
    this.results = const [],
  });

  List<DNSLookupResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DNSLookupResults &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'DNSLookupResults[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [DNSLookupResults] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DNSLookupResults fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DNSLookupResults(
        results: DNSLookupResult.listFromJson(json[r'results']),
    );

  static List<DNSLookupResults> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DNSLookupResults>[]
      : json.map((v) => DNSLookupResults.fromJson(v)).toList(growable: true == growable);

  static Map<String, DNSLookupResults> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DNSLookupResults>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DNSLookupResults.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupResults-objects as value to a dart map
  static Map<String, List<DNSLookupResults>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DNSLookupResults>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DNSLookupResults.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

