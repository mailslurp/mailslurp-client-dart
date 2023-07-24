//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateVariable {
  /// Returns a new [TemplateVariable] instance.
  TemplateVariable({
    required this.name,
    required this.variableType,
  });

  /// Name of variable. This can be used in a template as {{name}}
  String name;

  /// The type of variable
  TemplateVariableVariableTypeEnum variableType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateVariable &&
     other.name == name &&
     other.variableType == variableType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (variableType.hashCode);

  @override
  String toString() => 'TemplateVariable[name=$name, variableType=$variableType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'variableType'] = this.variableType;
    return json;
  }

  /// Returns a new [TemplateVariable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateVariable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateVariable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateVariable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateVariable(
        name: mapValueOfType<String>(json, r'name')!,
        variableType: TemplateVariableVariableTypeEnum.fromJson(json[r'variableType'])!,
      );
    }
    return null;
  }

  static List<TemplateVariable>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateVariable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateVariable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateVariable> mapFromJson(dynamic json) {
    final map = <String, TemplateVariable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateVariable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateVariable-objects as value to a dart map
  static Map<String, List<TemplateVariable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateVariable>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateVariable.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'variableType',
  };
}

/// The type of variable
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

  static TemplateVariableVariableTypeEnum? fromJson(dynamic value) => TemplateVariableVariableTypeEnumTypeTransformer().decode(value);

  static List<TemplateVariableVariableTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateVariableVariableTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateVariableVariableTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TemplateVariableVariableTypeEnum] to String,
/// and [decode] dynamic data back to [TemplateVariableVariableTypeEnum].
class TemplateVariableVariableTypeEnumTypeTransformer {
  factory TemplateVariableVariableTypeEnumTypeTransformer() => _instance ??= const TemplateVariableVariableTypeEnumTypeTransformer._();

  const TemplateVariableVariableTypeEnumTypeTransformer._();

  String encode(TemplateVariableVariableTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TemplateVariableVariableTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TemplateVariableVariableTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STRING': return TemplateVariableVariableTypeEnum.STRING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TemplateVariableVariableTypeEnumTypeTransformer] instance.
  static TemplateVariableVariableTypeEnumTypeTransformer? _instance;
}


