//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConditionOption {
  /// Returns a new [ConditionOption] instance.
  ConditionOption({
    this.condition,
    this.value,
  });

  /// The condition to evaluate against the email
  ConditionOptionConditionEnum condition;

  /// What the condition should evaluate to. A string 'TRUE|FALSE' not a boolean.
  ConditionOptionValueEnum value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionOption &&
     other.condition == condition &&
     other.value == value;

  @override
  int get hashCode =>
    (condition == null ? 0 : condition.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'ConditionOption[condition=$condition, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (condition != null) {
      json[r'condition'] = condition;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [ConditionOption] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionOption fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConditionOption(
        condition: ConditionOptionConditionEnum.fromJson(json[r'condition']),
        value: ConditionOptionValueEnum.fromJson(json[r'value']),
    );

  static List<ConditionOption> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConditionOption>[]
      : json.map((v) => ConditionOption.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConditionOption> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConditionOption>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConditionOption.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConditionOption-objects as value to a dart map
  static Map<String, List<ConditionOption>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConditionOption>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConditionOption.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The condition to evaluate against the email
class ConditionOptionConditionEnum {
  /// Instantiate a new enum with the provided [value].
  const ConditionOptionConditionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HAS_ATTACHMENTS = ConditionOptionConditionEnum._(r'HAS_ATTACHMENTS');

  /// List of all possible values in this [enum][ConditionOptionConditionEnum].
  static const values = <ConditionOptionConditionEnum>[
    HAS_ATTACHMENTS,
  ];

  static ConditionOptionConditionEnum fromJson(dynamic value) =>
    ConditionOptionConditionEnumTypeTransformer().decode(value);

  static List<ConditionOptionConditionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConditionOptionConditionEnum>[]
      : json
          .map((value) => ConditionOptionConditionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConditionOptionConditionEnum] to String,
/// and [decode] dynamic data back to [ConditionOptionConditionEnum].
class ConditionOptionConditionEnumTypeTransformer {
  const ConditionOptionConditionEnumTypeTransformer._();

  factory ConditionOptionConditionEnumTypeTransformer() => _instance ??= ConditionOptionConditionEnumTypeTransformer._();

  String encode(ConditionOptionConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionOptionConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionOptionConditionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HAS_ATTACHMENTS': return ConditionOptionConditionEnum.HAS_ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionOptionConditionEnumTypeTransformer] instance.
  static ConditionOptionConditionEnumTypeTransformer _instance;
}

/// What the condition should evaluate to. A string 'TRUE|FALSE' not a boolean.
class ConditionOptionValueEnum {
  /// Instantiate a new enum with the provided [value].
  const ConditionOptionValueEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TRUE = ConditionOptionValueEnum._(r'TRUE');
  static const FALSE = ConditionOptionValueEnum._(r'FALSE');

  /// List of all possible values in this [enum][ConditionOptionValueEnum].
  static const values = <ConditionOptionValueEnum>[
    TRUE,
    FALSE,
  ];

  static ConditionOptionValueEnum fromJson(dynamic value) =>
    ConditionOptionValueEnumTypeTransformer().decode(value);

  static List<ConditionOptionValueEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConditionOptionValueEnum>[]
      : json
          .map((value) => ConditionOptionValueEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ConditionOptionValueEnum] to String,
/// and [decode] dynamic data back to [ConditionOptionValueEnum].
class ConditionOptionValueEnumTypeTransformer {
  const ConditionOptionValueEnumTypeTransformer._();

  factory ConditionOptionValueEnumTypeTransformer() => _instance ??= ConditionOptionValueEnumTypeTransformer._();

  String encode(ConditionOptionValueEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionOptionValueEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionOptionValueEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'TRUE': return ConditionOptionValueEnum.TRUE;
      case r'FALSE': return ConditionOptionValueEnum.FALSE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionOptionValueEnumTypeTransformer] instance.
  static ConditionOptionValueEnumTypeTransformer _instance;
}

