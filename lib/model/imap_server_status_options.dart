//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapServerStatusOptions {
  /// Returns a new [ImapServerStatusOptions] instance.
  ImapServerStatusOptions({
    this.name,
    this.statusItems = const [],
  });

  String? name;

  List<ImapServerStatusOptionsStatusItemsEnum>? statusItems;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapServerStatusOptions &&
     other.name == name &&
     other.statusItems == statusItems;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (statusItems == null ? 0 : statusItems!.hashCode);

  @override
  String toString() => 'ImapServerStatusOptions[name=$name, statusItems=$statusItems]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.statusItems != null) {
      json[r'statusItems'] = this.statusItems;
    } else {
      json[r'statusItems'] = null;
    }
    return json;
  }

  /// Returns a new [ImapServerStatusOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapServerStatusOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapServerStatusOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapServerStatusOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapServerStatusOptions(
        name: mapValueOfType<String>(json, r'name'),
        statusItems: ImapServerStatusOptionsStatusItemsEnum.listFromJson(json[r'statusItems']),
      );
    }
    return null;
  }

  static List<ImapServerStatusOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerStatusOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerStatusOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapServerStatusOptions> mapFromJson(dynamic json) {
    final map = <String, ImapServerStatusOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapServerStatusOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapServerStatusOptions-objects as value to a dart map
  static Map<String, List<ImapServerStatusOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapServerStatusOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapServerStatusOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ImapServerStatusOptionsStatusItemsEnum {
  /// Instantiate a new enum with the provided [value].
  const ImapServerStatusOptionsStatusItemsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MESSAGES = ImapServerStatusOptionsStatusItemsEnum._(r'MESSAGES');
  static const RECENT = ImapServerStatusOptionsStatusItemsEnum._(r'RECENT');
  static const UIDNEXT = ImapServerStatusOptionsStatusItemsEnum._(r'UIDNEXT');
  static const UIDVALIDITY = ImapServerStatusOptionsStatusItemsEnum._(r'UIDVALIDITY');
  static const UNSEEN = ImapServerStatusOptionsStatusItemsEnum._(r'UNSEEN');
  static const APPENDLIMIT = ImapServerStatusOptionsStatusItemsEnum._(r'APPENDLIMIT');

  /// List of all possible values in this [enum][ImapServerStatusOptionsStatusItemsEnum].
  static const values = <ImapServerStatusOptionsStatusItemsEnum>[
    MESSAGES,
    RECENT,
    UIDNEXT,
    UIDVALIDITY,
    UNSEEN,
    APPENDLIMIT,
  ];

  static ImapServerStatusOptionsStatusItemsEnum? fromJson(dynamic value) => ImapServerStatusOptionsStatusItemsEnumTypeTransformer().decode(value);

  static List<ImapServerStatusOptionsStatusItemsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerStatusOptionsStatusItemsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerStatusOptionsStatusItemsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImapServerStatusOptionsStatusItemsEnum] to String,
/// and [decode] dynamic data back to [ImapServerStatusOptionsStatusItemsEnum].
class ImapServerStatusOptionsStatusItemsEnumTypeTransformer {
  factory ImapServerStatusOptionsStatusItemsEnumTypeTransformer() => _instance ??= const ImapServerStatusOptionsStatusItemsEnumTypeTransformer._();

  const ImapServerStatusOptionsStatusItemsEnumTypeTransformer._();

  String encode(ImapServerStatusOptionsStatusItemsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImapServerStatusOptionsStatusItemsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImapServerStatusOptionsStatusItemsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MESSAGES': return ImapServerStatusOptionsStatusItemsEnum.MESSAGES;
        case r'RECENT': return ImapServerStatusOptionsStatusItemsEnum.RECENT;
        case r'UIDNEXT': return ImapServerStatusOptionsStatusItemsEnum.UIDNEXT;
        case r'UIDVALIDITY': return ImapServerStatusOptionsStatusItemsEnum.UIDVALIDITY;
        case r'UNSEEN': return ImapServerStatusOptionsStatusItemsEnum.UNSEEN;
        case r'APPENDLIMIT': return ImapServerStatusOptionsStatusItemsEnum.APPENDLIMIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImapServerStatusOptionsStatusItemsEnumTypeTransformer] instance.
  static ImapServerStatusOptionsStatusItemsEnumTypeTransformer? _instance;
}


