//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Sender {
  /// Returns a new [Sender] instance.
  Sender({
    @required this.emailAddress,
    this.name,
    @required this.rawValue,
  });

  String emailAddress;

  String name;

  String rawValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sender &&
     other.emailAddress == emailAddress &&
     other.name == name &&
     other.rawValue == rawValue;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (rawValue == null ? 0 : rawValue.hashCode);

  @override
  String toString() => 'Sender[emailAddress=$emailAddress, name=$name, rawValue=$rawValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = emailAddress;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'rawValue'] = rawValue;
    return json;
  }

  /// Returns a new [Sender] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Sender fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Sender(
        emailAddress: json[r'emailAddress'],
        name: json[r'name'],
        rawValue: json[r'rawValue'],
    );

  static List<Sender> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Sender>[]
      : json.map((v) => Sender.fromJson(v)).toList(growable: true == growable);

  static Map<String, Sender> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Sender>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Sender.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Sender-objects as value to a dart map
  static Map<String, List<Sender>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Sender>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Sender.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

