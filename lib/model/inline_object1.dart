//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineObject1 {
  /// Returns a new [InlineObject1] instance.
  InlineObject1({
    this.short,
    this.char,
    this.int_,
    this.long,
    this.float,
    this.double_,
    this.direct,
    this.readOnly,
  });

  int short;

  String char;

  int int_;

  int long;

  double float;

  double double_;

  bool direct;

  bool readOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject1 &&
     other.short == short &&
     other.char == char &&
     other.int_ == int_ &&
     other.long == long &&
     other.float == float &&
     other.double_ == double_ &&
     other.direct == direct &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    (short == null ? 0 : short.hashCode) +
    (char == null ? 0 : char.hashCode) +
    (int_ == null ? 0 : int_.hashCode) +
    (long == null ? 0 : long.hashCode) +
    (float == null ? 0 : float.hashCode) +
    (double_ == null ? 0 : double_.hashCode) +
    (direct == null ? 0 : direct.hashCode) +
    (readOnly == null ? 0 : readOnly.hashCode);

  @override
  String toString() => 'InlineObject1[short=$short, char=$char, int_=$int_, long=$long, float=$float, double_=$double_, direct=$direct, readOnly=$readOnly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (short != null) {
      json[r'short'] = short;
    }
    if (char != null) {
      json[r'char'] = char;
    }
    if (int_ != null) {
      json[r'int'] = int_;
    }
    if (long != null) {
      json[r'long'] = long;
    }
    if (float != null) {
      json[r'float'] = float;
    }
    if (double_ != null) {
      json[r'double'] = double_;
    }
    if (direct != null) {
      json[r'direct'] = direct;
    }
    if (readOnly != null) {
      json[r'readOnly'] = readOnly;
    }
    return json;
  }

  /// Returns a new [InlineObject1] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject1 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject1(
        short: json[r'short'],
        char: json[r'char'],
        int_: json[r'int'],
        long: json[r'long'],
        float: json[r'float'],
        double_: json[r'double'],
        direct: json[r'direct'],
        readOnly: json[r'readOnly'],
    );

  static List<InlineObject1> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject1>[]
      : json.map((v) => InlineObject1.fromJson(v)).toList(growable: true == growable);

  static Map<String, InlineObject1> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject1>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InlineObject1.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InlineObject1-objects as value to a dart map
  static Map<String, List<InlineObject1>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject1>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InlineObject1.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

