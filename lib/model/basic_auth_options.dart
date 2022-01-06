//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BasicAuthOptions {
  /// Returns a new [BasicAuthOptions] instance.
  BasicAuthOptions({
    this.username,
    this.password,
  });

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BasicAuthOptions &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'BasicAuthOptions[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (username != null) {
      json[r'username'] = username;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [BasicAuthOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BasicAuthOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BasicAuthOptions(
        username: json[r'username'],
        password: json[r'password'],
    );

  static List<BasicAuthOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BasicAuthOptions>[]
      : json.map((v) => BasicAuthOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, BasicAuthOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BasicAuthOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BasicAuthOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BasicAuthOptions-objects as value to a dart map
  static Map<String, List<BasicAuthOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BasicAuthOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BasicAuthOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

