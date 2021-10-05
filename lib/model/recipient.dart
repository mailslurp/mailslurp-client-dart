//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Recipient {
  /// Returns a new [Recipient] instance.
  Recipient({
    @required this.emailAddress,
    this.name,
    @required this.rawValue,
  });

  String emailAddress;

  String name;

  String rawValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recipient &&
     other.emailAddress == emailAddress &&
     other.name == name &&
     other.rawValue == rawValue;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (rawValue == null ? 0 : rawValue.hashCode);

  @override
  String toString() => 'Recipient[emailAddress=$emailAddress, name=$name, rawValue=$rawValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = emailAddress;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'rawValue'] = rawValue;
    return json;
  }

  /// Returns a new [Recipient] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Recipient fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Recipient(
        emailAddress: json[r'emailAddress'],
        name: json[r'name'],
        rawValue: json[r'rawValue'],
    );

  static List<Recipient> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Recipient>[]
      : json.map((v) => Recipient.fromJson(v)).toList(growable: true == growable);

  static Map<String, Recipient> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Recipient>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Recipient.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Recipient-objects as value to a dart map
  static Map<String, List<Recipient>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Recipient>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Recipient.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

