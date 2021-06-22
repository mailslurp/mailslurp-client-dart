//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateVariable {
  /// Returns a new [TemplateVariable] instance.
  TemplateVariable({
    @required this.name,
    @required this.variableType,
  });

  String name;

  TemplateVariableVariableTypeEnum variableType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateVariable &&
     other.name == name &&
     other.variableType == variableType;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (variableType == null ? 0 : variableType.hashCode);

  @override
  String toString() => 'TemplateVariable[name=$name, variableType=$variableType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'variableType'] = variableType;
    return json;
  }

  /// Returns a new [TemplateVariable] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateVariable fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplateVariable(
        name: json[r'name'],
        variableType: TemplateVariableVariableTypeEnum.fromJson(json[r'variableType']),
    );

  static List<TemplateVariable> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TemplateVariable>[]
      : json.map((v) => TemplateVariable.fromJson(v)).toList(growable: true == growable);

  static Map<String, TemplateVariable> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TemplateVariable>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TemplateVariable.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TemplateVariable-objects as value to a dart map
  static Map<String, List<TemplateVariable>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TemplateVariable>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TemplateVariable.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class TemplateVariableVariableTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TemplateVariableVariableTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRING = TemplateVariableVariableTypeEnum._(r'STRING');

  /// List of all possible values in this [enum][TemplateVariableVariableTypeEnum].
  static const values = <TemplateVariableVariableTypeEnum>[
    STRING,
  ];

  static TemplateVariableVariableTypeEnum fromJson(dynamic value) =>
    TemplateVariableVariableTypeEnumTypeTransformer().decode(value);

  static List<TemplateVariableVariableTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TemplateVariableVariableTypeEnum>[]
      : json
          .map((value) => TemplateVariableVariableTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TemplateVariableVariableTypeEnum] to String,
/// and [decode] dynamic data back to [TemplateVariableVariableTypeEnum].
class TemplateVariableVariableTypeEnumTypeTransformer {
  const TemplateVariableVariableTypeEnumTypeTransformer._();

  factory TemplateVariableVariableTypeEnumTypeTransformer() => _instance ??= TemplateVariableVariableTypeEnumTypeTransformer._();

  String encode(TemplateVariableVariableTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TemplateVariableVariableTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TemplateVariableVariableTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'STRING': return TemplateVariableVariableTypeEnum.STRING;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TemplateVariableVariableTypeEnumTypeTransformer] instance.
  static TemplateVariableVariableTypeEnumTypeTransformer _instance;
}

