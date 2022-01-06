//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MatchOption {
  /// Returns a new [MatchOption] instance.
  MatchOption({
    this.field,
    this.should,
    @required this.value,
  });

  /// Fields of an email object that can be used to filter results
  MatchOptionFieldEnum field;

  /// How the value of the email field specified should be compared to the value given in the match options.
  MatchOptionShouldEnum should;

  /// The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MatchOption &&
     other.field == field &&
     other.should == should &&
     other.value == value;

  @override
  int get hashCode =>
    (field == null ? 0 : field.hashCode) +
    (should == null ? 0 : should.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'MatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (field != null) {
      json[r'field'] = field;
    }
    if (should != null) {
      json[r'should'] = should;
    }
      json[r'value'] = value;
    return json;
  }

  /// Returns a new [MatchOption] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MatchOption fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MatchOption(
        field: MatchOptionFieldEnum.fromJson(json[r'field']),
        should: MatchOptionShouldEnum.fromJson(json[r'should']),
        value: json[r'value'],
    );

  static List<MatchOption> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MatchOption>[]
      : json.map((v) => MatchOption.fromJson(v)).toList(growable: true == growable);

  static Map<String, MatchOption> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MatchOption>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MatchOption.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MatchOption-objects as value to a dart map
  static Map<String, List<MatchOption>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MatchOption>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MatchOption.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Fields of an email object that can be used to filter results
class MatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const MatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBJECT = MatchOptionFieldEnum._(r'SUBJECT');
  static const TO = MatchOptionFieldEnum._(r'TO');
  static const BCC = MatchOptionFieldEnum._(r'BCC');
  static const CC = MatchOptionFieldEnum._(r'CC');
  static const FROM = MatchOptionFieldEnum._(r'FROM');

  /// List of all possible values in this [enum][MatchOptionFieldEnum].
  static const values = <MatchOptionFieldEnum>[
    SUBJECT,
    TO,
    BCC,
    CC,
    FROM,
  ];

  static MatchOptionFieldEnum fromJson(dynamic value) =>
    MatchOptionFieldEnumTypeTransformer().decode(value);

  static List<MatchOptionFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MatchOptionFieldEnum>[]
      : json
          .map((value) => MatchOptionFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [MatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [MatchOptionFieldEnum].
class MatchOptionFieldEnumTypeTransformer {
  const MatchOptionFieldEnumTypeTransformer._();

  factory MatchOptionFieldEnumTypeTransformer() => _instance ??= MatchOptionFieldEnumTypeTransformer._();

  String encode(MatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MatchOptionFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUBJECT': return MatchOptionFieldEnum.SUBJECT;
      case r'TO': return MatchOptionFieldEnum.TO;
      case r'BCC': return MatchOptionFieldEnum.BCC;
      case r'CC': return MatchOptionFieldEnum.CC;
      case r'FROM': return MatchOptionFieldEnum.FROM;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [MatchOptionFieldEnumTypeTransformer] instance.
  static MatchOptionFieldEnumTypeTransformer _instance;
}

/// How the value of the email field specified should be compared to the value given in the match options.
class MatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const MatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONTAIN = MatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = MatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][MatchOptionShouldEnum].
  static const values = <MatchOptionShouldEnum>[
    CONTAIN,
    EQUAL,
  ];

  static MatchOptionShouldEnum fromJson(dynamic value) =>
    MatchOptionShouldEnumTypeTransformer().decode(value);

  static List<MatchOptionShouldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MatchOptionShouldEnum>[]
      : json
          .map((value) => MatchOptionShouldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [MatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [MatchOptionShouldEnum].
class MatchOptionShouldEnumTypeTransformer {
  const MatchOptionShouldEnumTypeTransformer._();

  factory MatchOptionShouldEnumTypeTransformer() => _instance ??= MatchOptionShouldEnumTypeTransformer._();

  String encode(MatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MatchOptionShouldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'CONTAIN': return MatchOptionShouldEnum.CONTAIN;
      case r'EQUAL': return MatchOptionShouldEnum.EQUAL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [MatchOptionShouldEnumTypeTransformer] instance.
  static MatchOptionShouldEnumTypeTransformer _instance;
}

