//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxAutomationMatchOptions {
  /// Returns a new [InboxAutomationMatchOptions] instance.
  InboxAutomationMatchOptions({
    required this.operator_,
    this.matches = const [],
    this.groups = const [],
  });

  /// Boolean operator used to combine inbox automation match rules.
  InboxAutomationMatchOptionsOperator_Enum operator_;

  /// Leaf match rules in this group.
  List<InboxAutomationMatchOption>? matches;

  /// Nested child groups.
  List<InboxAutomationMatchOptions>? groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxAutomationMatchOptions &&
     other.operator_ == operator_ &&
     other.matches == matches &&
     other.groups == groups;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operator_.hashCode) +
    (matches == null ? 0 : matches!.hashCode) +
    (groups == null ? 0 : groups!.hashCode);

  @override
  String toString() => 'InboxAutomationMatchOptions[operator_=$operator_, matches=$matches, groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operator'] = this.operator_;
    if (this.matches != null) {
      json[r'matches'] = this.matches;
    } else {
      json[r'matches'] = null;
    }
    if (this.groups != null) {
      json[r'groups'] = this.groups;
    } else {
      json[r'groups'] = null;
    }
    return json;
  }

  /// Returns a new [InboxAutomationMatchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxAutomationMatchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxAutomationMatchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxAutomationMatchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxAutomationMatchOptions(
        operator_: InboxAutomationMatchOptionsOperator_Enum.fromJson(json[r'operator'])!,
        matches: InboxAutomationMatchOption.listFromJson(json[r'matches']),
        groups: InboxAutomationMatchOptions.listFromJson(json[r'groups']),
      );
    }
    return null;
  }

  static List<InboxAutomationMatchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxAutomationMatchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxAutomationMatchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxAutomationMatchOptions> mapFromJson(dynamic json) {
    final map = <String, InboxAutomationMatchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxAutomationMatchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxAutomationMatchOptions-objects as value to a dart map
  static Map<String, List<InboxAutomationMatchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxAutomationMatchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxAutomationMatchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'operator',
  };
}

/// Boolean operator used to combine inbox automation match rules.
class InboxAutomationMatchOptionsOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const InboxAutomationMatchOptionsOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AND = InboxAutomationMatchOptionsOperator_Enum._(r'AND');
  static const OR = InboxAutomationMatchOptionsOperator_Enum._(r'OR');

  /// List of all possible values in this [enum][InboxAutomationMatchOptionsOperator_Enum].
  static const values = <InboxAutomationMatchOptionsOperator_Enum>[
    AND,
    OR,
  ];

  static InboxAutomationMatchOptionsOperator_Enum? fromJson(dynamic value) => InboxAutomationMatchOptionsOperator_EnumTypeTransformer().decode(value);

  static List<InboxAutomationMatchOptionsOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxAutomationMatchOptionsOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxAutomationMatchOptionsOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxAutomationMatchOptionsOperator_Enum] to String,
/// and [decode] dynamic data back to [InboxAutomationMatchOptionsOperator_Enum].
class InboxAutomationMatchOptionsOperator_EnumTypeTransformer {
  factory InboxAutomationMatchOptionsOperator_EnumTypeTransformer() => _instance ??= const InboxAutomationMatchOptionsOperator_EnumTypeTransformer._();

  const InboxAutomationMatchOptionsOperator_EnumTypeTransformer._();

  String encode(InboxAutomationMatchOptionsOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxAutomationMatchOptionsOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxAutomationMatchOptionsOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AND': return InboxAutomationMatchOptionsOperator_Enum.AND;
        case r'OR': return InboxAutomationMatchOptionsOperator_Enum.OR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxAutomationMatchOptionsOperator_EnumTypeTransformer] instance.
  static InboxAutomationMatchOptionsOperator_EnumTypeTransformer? _instance;
}


