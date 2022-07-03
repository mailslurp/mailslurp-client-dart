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
    @required this.rawValue,
    @required this.emailAddress,
    this.name,
  });

  String rawValue;

  String emailAddress;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recipient &&
     other.rawValue == rawValue &&
     other.emailAddress == emailAddress &&
     other.name == name;

  @override
  int get hashCode =>
    (rawValue == null ? 0 : rawValue.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'Recipient[rawValue=$rawValue, emailAddress=$emailAddress, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawValue'] = rawValue;
      json[r'emailAddress'] = emailAddress;
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [Recipient] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Recipient fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Recipient(
        rawValue: json[r'rawValue'],
        emailAddress: json[r'emailAddress'],
        name: json[r'name'],
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

