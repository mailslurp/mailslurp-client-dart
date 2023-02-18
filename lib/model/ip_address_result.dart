//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IPAddressResult {
  /// Returns a new [IPAddressResult] instance.
  IPAddressResult({
    @required this.address,
    @required this.hostname,
  });

  String address;

  String hostname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IPAddressResult &&
     other.address == address &&
     other.hostname == hostname;

  @override
  int get hashCode =>
    (address == null ? 0 : address.hashCode) +
    (hostname == null ? 0 : hostname.hashCode);

  @override
  String toString() => 'IPAddressResult[address=$address, hostname=$hostname]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'address'] = address;
      json[r'hostname'] = hostname;
    return json;
  }

  /// Returns a new [IPAddressResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IPAddressResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : IPAddressResult(
        address: json[r'address'],
        hostname: json[r'hostname'],
    );

  static List<IPAddressResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <IPAddressResult>[]
      : json.map((v) => IPAddressResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, IPAddressResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, IPAddressResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = IPAddressResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of IPAddressResult-objects as value to a dart map
  static Map<String, List<IPAddressResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IPAddressResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = IPAddressResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

