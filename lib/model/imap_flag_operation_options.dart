//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapFlagOperationOptions {
  /// Returns a new [ImapFlagOperationOptions] instance.
  ImapFlagOperationOptions({
    required this.flagOperation,
    this.flags = const [],
  });

  ImapFlagOperationOptionsFlagOperationEnum flagOperation;

  List<String> flags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapFlagOperationOptions &&
     other.flagOperation == flagOperation &&
     other.flags == flags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (flagOperation.hashCode) +
    (flags.hashCode);

  @override
  String toString() => 'ImapFlagOperationOptions[flagOperation=$flagOperation, flags=$flags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'flagOperation'] = this.flagOperation;
      json[r'flags'] = this.flags;
    return json;
  }

  /// Returns a new [ImapFlagOperationOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapFlagOperationOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapFlagOperationOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapFlagOperationOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapFlagOperationOptions(
        flagOperation: ImapFlagOperationOptionsFlagOperationEnum.fromJson(json[r'flagOperation'])!,
        flags: json[r'flags'] is List
            ? (json[r'flags'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ImapFlagOperationOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapFlagOperationOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapFlagOperationOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapFlagOperationOptions> mapFromJson(dynamic json) {
    final map = <String, ImapFlagOperationOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapFlagOperationOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapFlagOperationOptions-objects as value to a dart map
  static Map<String, List<ImapFlagOperationOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapFlagOperationOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapFlagOperationOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'flagOperation',
    'flags',
  };
}


class ImapFlagOperationOptionsFlagOperationEnum {
  /// Instantiate a new enum with the provided [value].
  const ImapFlagOperationOptionsFlagOperationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SET_FLAGS = ImapFlagOperationOptionsFlagOperationEnum._(r'SET_FLAGS');
  static const ADD_FLAGS = ImapFlagOperationOptionsFlagOperationEnum._(r'ADD_FLAGS');
  static const REMOVE_FLAGS = ImapFlagOperationOptionsFlagOperationEnum._(r'REMOVE_FLAGS');

  /// List of all possible values in this [enum][ImapFlagOperationOptionsFlagOperationEnum].
  static const values = <ImapFlagOperationOptionsFlagOperationEnum>[
    SET_FLAGS,
    ADD_FLAGS,
    REMOVE_FLAGS,
  ];

  static ImapFlagOperationOptionsFlagOperationEnum? fromJson(dynamic value) => ImapFlagOperationOptionsFlagOperationEnumTypeTransformer().decode(value);

  static List<ImapFlagOperationOptionsFlagOperationEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapFlagOperationOptionsFlagOperationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapFlagOperationOptionsFlagOperationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImapFlagOperationOptionsFlagOperationEnum] to String,
/// and [decode] dynamic data back to [ImapFlagOperationOptionsFlagOperationEnum].
class ImapFlagOperationOptionsFlagOperationEnumTypeTransformer {
  factory ImapFlagOperationOptionsFlagOperationEnumTypeTransformer() => _instance ??= const ImapFlagOperationOptionsFlagOperationEnumTypeTransformer._();

  const ImapFlagOperationOptionsFlagOperationEnumTypeTransformer._();

  String encode(ImapFlagOperationOptionsFlagOperationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImapFlagOperationOptionsFlagOperationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImapFlagOperationOptionsFlagOperationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SET_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.SET_FLAGS;
        case r'ADD_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.ADD_FLAGS;
        case r'REMOVE_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.REMOVE_FLAGS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImapFlagOperationOptionsFlagOperationEnumTypeTransformer] instance.
  static ImapFlagOperationOptionsFlagOperationEnumTypeTransformer? _instance;
}


