//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConditionOption {
  /// Returns a new [ConditionOption] instance.
  ConditionOption({
    required this.condition,
    required this.value,
  });

  /// Condition of an email object that can be used to filter results
  ConditionOptionConditionEnum condition;

  /// Expected condition value
  ConditionOptionValueEnum value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionOption &&
     other.condition == condition &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (condition.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'ConditionOption[condition=$condition, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'condition'] = this.condition;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [ConditionOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionOption(
        condition: ConditionOptionConditionEnum.fromJson(json[r'condition'])!,
        value: ConditionOptionValueEnum.fromJson(json[r'value'])!,
      );
    }
    return null;
  }

  static List<ConditionOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionOption> mapFromJson(dynamic json) {
    final map = <String, ConditionOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionOption-objects as value to a dart map
  static Map<String, List<ConditionOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'condition',
    'value',
  };
}

/// Condition of an email object that can be used to filter results
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

  static ConditionOptionConditionEnum? fromJson(dynamic value) => ConditionOptionConditionEnumTypeTransformer().decode(value);

  static List<ConditionOptionConditionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionOptionConditionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionOptionConditionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConditionOptionConditionEnum] to String,
/// and [decode] dynamic data back to [ConditionOptionConditionEnum].
class ConditionOptionConditionEnumTypeTransformer {
  factory ConditionOptionConditionEnumTypeTransformer() => _instance ??= const ConditionOptionConditionEnumTypeTransformer._();

  const ConditionOptionConditionEnumTypeTransformer._();

  String encode(ConditionOptionConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionOptionConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionOptionConditionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HAS_ATTACHMENTS': return ConditionOptionConditionEnum.HAS_ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConditionOptionConditionEnumTypeTransformer] instance.
  static ConditionOptionConditionEnumTypeTransformer? _instance;
}


/// Expected condition value
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

  static ConditionOptionValueEnum? fromJson(dynamic value) => ConditionOptionValueEnumTypeTransformer().decode(value);

  static List<ConditionOptionValueEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionOptionValueEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionOptionValueEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConditionOptionValueEnum] to String,
/// and [decode] dynamic data back to [ConditionOptionValueEnum].
class ConditionOptionValueEnumTypeTransformer {
  factory ConditionOptionValueEnumTypeTransformer() => _instance ??= const ConditionOptionValueEnumTypeTransformer._();

  const ConditionOptionValueEnumTypeTransformer._();

  String encode(ConditionOptionValueEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionOptionValueEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionOptionValueEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TRUE': return ConditionOptionValueEnum.TRUE;
        case r'FALSE': return ConditionOptionValueEnum.FALSE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConditionOptionValueEnumTypeTransformer] instance.
  static ConditionOptionValueEnumTypeTransformer? _instance;
}


