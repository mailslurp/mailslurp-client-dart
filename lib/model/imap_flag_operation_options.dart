//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapFlagOperationOptions {
  /// Returns a new [ImapFlagOperationOptions] instance.
  ImapFlagOperationOptions({
    @required this.flagOperation,
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
    (flagOperation == null ? 0 : flagOperation.hashCode) +
    (flags == null ? 0 : flags.hashCode);

  @override
  String toString() => 'ImapFlagOperationOptions[flagOperation=$flagOperation, flags=$flags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'flagOperation'] = flagOperation;
      json[r'flags'] = flags;
    return json;
  }

  /// Returns a new [ImapFlagOperationOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ImapFlagOperationOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ImapFlagOperationOptions(
        flagOperation: ImapFlagOperationOptionsFlagOperationEnum.fromJson(json[r'flagOperation']),
        flags: json[r'flags'] == null
          ? null
          : (json[r'flags'] as List).cast<String>(),
    );

  static List<ImapFlagOperationOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ImapFlagOperationOptions>[]
      : json.map((v) => ImapFlagOperationOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ImapFlagOperationOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ImapFlagOperationOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ImapFlagOperationOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ImapFlagOperationOptions-objects as value to a dart map
  static Map<String, List<ImapFlagOperationOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ImapFlagOperationOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ImapFlagOperationOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static ImapFlagOperationOptionsFlagOperationEnum fromJson(dynamic value) =>
    ImapFlagOperationOptionsFlagOperationEnumTypeTransformer().decode(value);

  static List<ImapFlagOperationOptionsFlagOperationEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ImapFlagOperationOptionsFlagOperationEnum>[]
      : json
          .map((value) => ImapFlagOperationOptionsFlagOperationEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ImapFlagOperationOptionsFlagOperationEnum] to String,
/// and [decode] dynamic data back to [ImapFlagOperationOptionsFlagOperationEnum].
class ImapFlagOperationOptionsFlagOperationEnumTypeTransformer {
  const ImapFlagOperationOptionsFlagOperationEnumTypeTransformer._();

  factory ImapFlagOperationOptionsFlagOperationEnumTypeTransformer() => _instance ??= ImapFlagOperationOptionsFlagOperationEnumTypeTransformer._();

  String encode(ImapFlagOperationOptionsFlagOperationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImapFlagOperationOptionsFlagOperationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImapFlagOperationOptionsFlagOperationEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SET_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.SET_FLAGS;
      case r'ADD_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.ADD_FLAGS;
      case r'REMOVE_FLAGS': return ImapFlagOperationOptionsFlagOperationEnum.REMOVE_FLAGS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ImapFlagOperationOptionsFlagOperationEnumTypeTransformer] instance.
  static ImapFlagOperationOptionsFlagOperationEnumTypeTransformer _instance;
}

