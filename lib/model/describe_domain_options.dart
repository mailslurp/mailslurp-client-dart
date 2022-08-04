//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DescribeDomainOptions {
  /// Returns a new [DescribeDomainOptions] instance.
  DescribeDomainOptions({
    @required this.domain,
  });

  String domain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DescribeDomainOptions &&
     other.domain == domain;

  @override
  int get hashCode =>
    (domain == null ? 0 : domain.hashCode);

  @override
  String toString() => 'DescribeDomainOptions[domain=$domain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = domain;
    return json;
  }

  /// Returns a new [DescribeDomainOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DescribeDomainOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DescribeDomainOptions(
        domain: json[r'domain'],
    );

  static List<DescribeDomainOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DescribeDomainOptions>[]
      : json.map((v) => DescribeDomainOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, DescribeDomainOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DescribeDomainOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DescribeDomainOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DescribeDomainOptions-objects as value to a dart map
  static Map<String, List<DescribeDomainOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DescribeDomainOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DescribeDomainOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

