//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapUpdateFlagsOptions {
  /// Returns a new [ImapUpdateFlagsOptions] instance.
  ImapUpdateFlagsOptions({
    required this.operation,
    this.flags = const [],
    this.uidSet,
    this.seqSet,
  });

  ImapUpdateFlagsOptionsOperationEnum operation;

  List<String>? flags;

  String? uidSet;

  String? seqSet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapUpdateFlagsOptions &&
     other.operation == operation &&
     other.flags == flags &&
     other.uidSet == uidSet &&
     other.seqSet == seqSet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operation.hashCode) +
    (flags == null ? 0 : flags!.hashCode) +
    (uidSet == null ? 0 : uidSet!.hashCode) +
    (seqSet == null ? 0 : seqSet!.hashCode);

  @override
  String toString() => 'ImapUpdateFlagsOptions[operation=$operation, flags=$flags, uidSet=$uidSet, seqSet=$seqSet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operation'] = this.operation;
    if (this.flags != null) {
      json[r'flags'] = this.flags;
    } else {
      json[r'flags'] = null;
    }
    if (this.uidSet != null) {
      json[r'uidSet'] = this.uidSet;
    } else {
      json[r'uidSet'] = null;
    }
    if (this.seqSet != null) {
      json[r'seqSet'] = this.seqSet;
    } else {
      json[r'seqSet'] = null;
    }
    return json;
  }

  /// Returns a new [ImapUpdateFlagsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapUpdateFlagsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapUpdateFlagsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapUpdateFlagsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapUpdateFlagsOptions(
        operation: ImapUpdateFlagsOptionsOperationEnum.fromJson(json[r'operation'])!,
        flags: json[r'flags'] is List
            ? (json[r'flags'] as List).cast<String>()
            : const [],
        uidSet: mapValueOfType<String>(json, r'uidSet'),
        seqSet: mapValueOfType<String>(json, r'seqSet'),
      );
    }
    return null;
  }

  static List<ImapUpdateFlagsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapUpdateFlagsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapUpdateFlagsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapUpdateFlagsOptions> mapFromJson(dynamic json) {
    final map = <String, ImapUpdateFlagsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapUpdateFlagsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapUpdateFlagsOptions-objects as value to a dart map
  static Map<String, List<ImapUpdateFlagsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapUpdateFlagsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapUpdateFlagsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'operation',
  };
}


class ImapUpdateFlagsOptionsOperationEnum {
  /// Instantiate a new enum with the provided [value].
  const ImapUpdateFlagsOptionsOperationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FLAGS = ImapUpdateFlagsOptionsOperationEnum._(r'FLAGS');
  static const plusFLAGS = ImapUpdateFlagsOptionsOperationEnum._(r'+FLAGS');
  static const FLAGS = ImapUpdateFlagsOptionsOperationEnum._(r'-FLAGS');

  /// List of all possible values in this [enum][ImapUpdateFlagsOptionsOperationEnum].
  static const values = <ImapUpdateFlagsOptionsOperationEnum>[
    FLAGS,
    plusFLAGS,
    FLAGS,
  ];

  static ImapUpdateFlagsOptionsOperationEnum? fromJson(dynamic value) => ImapUpdateFlagsOptionsOperationEnumTypeTransformer().decode(value);

  static List<ImapUpdateFlagsOptionsOperationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapUpdateFlagsOptionsOperationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapUpdateFlagsOptionsOperationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImapUpdateFlagsOptionsOperationEnum] to String,
/// and [decode] dynamic data back to [ImapUpdateFlagsOptionsOperationEnum].
class ImapUpdateFlagsOptionsOperationEnumTypeTransformer {
  factory ImapUpdateFlagsOptionsOperationEnumTypeTransformer() => _instance ??= const ImapUpdateFlagsOptionsOperationEnumTypeTransformer._();

  const ImapUpdateFlagsOptionsOperationEnumTypeTransformer._();

  String encode(ImapUpdateFlagsOptionsOperationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImapUpdateFlagsOptionsOperationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImapUpdateFlagsOptionsOperationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FLAGS': return ImapUpdateFlagsOptionsOperationEnum.FLAGS;
        case r'+FLAGS': return ImapUpdateFlagsOptionsOperationEnum.plusFLAGS;
        case r'-FLAGS': return ImapUpdateFlagsOptionsOperationEnum.FLAGS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImapUpdateFlagsOptionsOperationEnumTypeTransformer] instance.
  static ImapUpdateFlagsOptionsOperationEnumTypeTransformer? _instance;
}


