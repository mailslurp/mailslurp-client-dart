//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsMatchOption {
  /// Returns a new [SmsMatchOption] instance.
  SmsMatchOption({
    @required this.field,
    @required this.should,
    @required this.value,
  });

  /// Fields of an SMS object that can be used to filter results
  SmsMatchOptionFieldEnum field;

  /// How the value of the email field specified should be compared to the value given in the match options.
  SmsMatchOptionShouldEnum should;

  /// The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsMatchOption &&
     other.field == field &&
     other.should == should &&
     other.value == value;

  @override
  int get hashCode =>
    (field == null ? 0 : field.hashCode) +
    (should == null ? 0 : should.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'SmsMatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = field;
      json[r'should'] = should;
      json[r'value'] = value;
    return json;
  }

  /// Returns a new [SmsMatchOption] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SmsMatchOption fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SmsMatchOption(
        field: SmsMatchOptionFieldEnum.fromJson(json[r'field']),
        should: SmsMatchOptionShouldEnum.fromJson(json[r'should']),
        value: json[r'value'],
    );

  static List<SmsMatchOption> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsMatchOption>[]
      : json.map((v) => SmsMatchOption.fromJson(v)).toList(growable: true == growable);

  static Map<String, SmsMatchOption> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SmsMatchOption>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SmsMatchOption.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SmsMatchOption-objects as value to a dart map
  static Map<String, List<SmsMatchOption>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SmsMatchOption>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SmsMatchOption.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Fields of an SMS object that can be used to filter results
class SmsMatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const SmsMatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BODY = SmsMatchOptionFieldEnum._(r'BODY');
  static const FROM = SmsMatchOptionFieldEnum._(r'FROM');

  /// List of all possible values in this [enum][SmsMatchOptionFieldEnum].
  static const values = <SmsMatchOptionFieldEnum>[
    BODY,
    FROM,
  ];

  static SmsMatchOptionFieldEnum fromJson(dynamic value) =>
    SmsMatchOptionFieldEnumTypeTransformer().decode(value);

  static List<SmsMatchOptionFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsMatchOptionFieldEnum>[]
      : json
          .map((value) => SmsMatchOptionFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SmsMatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [SmsMatchOptionFieldEnum].
class SmsMatchOptionFieldEnumTypeTransformer {
  const SmsMatchOptionFieldEnumTypeTransformer._();

  factory SmsMatchOptionFieldEnumTypeTransformer() => _instance ??= SmsMatchOptionFieldEnumTypeTransformer._();

  String encode(SmsMatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SmsMatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SmsMatchOptionFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BODY': return SmsMatchOptionFieldEnum.BODY;
      case r'FROM': return SmsMatchOptionFieldEnum.FROM;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SmsMatchOptionFieldEnumTypeTransformer] instance.
  static SmsMatchOptionFieldEnumTypeTransformer _instance;
}

/// How the value of the email field specified should be compared to the value given in the match options.
class SmsMatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const SmsMatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONTAIN = SmsMatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = SmsMatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][SmsMatchOptionShouldEnum].
  static const values = <SmsMatchOptionShouldEnum>[
    CONTAIN,
    EQUAL,
  ];

  static SmsMatchOptionShouldEnum fromJson(dynamic value) =>
    SmsMatchOptionShouldEnumTypeTransformer().decode(value);

  static List<SmsMatchOptionShouldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsMatchOptionShouldEnum>[]
      : json
          .map((value) => SmsMatchOptionShouldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SmsMatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [SmsMatchOptionShouldEnum].
class SmsMatchOptionShouldEnumTypeTransformer {
  const SmsMatchOptionShouldEnumTypeTransformer._();

  factory SmsMatchOptionShouldEnumTypeTransformer() => _instance ??= SmsMatchOptionShouldEnumTypeTransformer._();

  String encode(SmsMatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SmsMatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SmsMatchOptionShouldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'CONTAIN': return SmsMatchOptionShouldEnum.CONTAIN;
      case r'EQUAL': return SmsMatchOptionShouldEnum.EQUAL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SmsMatchOptionShouldEnumTypeTransformer] instance.
  static SmsMatchOptionShouldEnumTypeTransformer _instance;
}

