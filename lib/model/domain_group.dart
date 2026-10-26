//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainGroup {
  /// Returns a new [DomainGroup] instance.
  DomainGroup({
    required this.label,
    this.domains = const [],
  });

  DomainGroupLabelEnum label;

  List<DomainInformation> domains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainGroup &&
     other.label == label &&
     other.domains == domains;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (domains.hashCode);

  @override
  String toString() => 'DomainGroup[label=$label, domains=$domains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'domains'] = this.domains;
    return json;
  }

  /// Returns a new [DomainGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainGroup(
        label: DomainGroupLabelEnum.fromJson(json[r'label'])!,
        domains: DomainInformation.listFromJson(json[r'domains']),
      );
    }
    return null;
  }

  static List<DomainGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainGroup> mapFromJson(dynamic json) {
    final map = <String, DomainGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainGroup-objects as value to a dart map
  static Map<String, List<DomainGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'domains',
  };
}


class DomainGroupLabelEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainGroupLabelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEFAULT = DomainGroupLabelEnum._(r'DEFAULT');
  static const DOMAIN_POOL = DomainGroupLabelEnum._(r'DOMAIN_POOL');
  static const CUSTOM = DomainGroupLabelEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][DomainGroupLabelEnum].
  static const values = <DomainGroupLabelEnum>[
    DEFAULT,
    DOMAIN_POOL,
    CUSTOM,
  ];

  static DomainGroupLabelEnum? fromJson(dynamic value) => DomainGroupLabelEnumTypeTransformer().decode(value);

  static List<DomainGroupLabelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainGroupLabelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainGroupLabelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainGroupLabelEnum] to String,
/// and [decode] dynamic data back to [DomainGroupLabelEnum].
class DomainGroupLabelEnumTypeTransformer {
  factory DomainGroupLabelEnumTypeTransformer() => _instance ??= const DomainGroupLabelEnumTypeTransformer._();

  const DomainGroupLabelEnumTypeTransformer._();

  String encode(DomainGroupLabelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainGroupLabelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainGroupLabelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEFAULT': return DomainGroupLabelEnum.DEFAULT;
        case r'DOMAIN_POOL': return DomainGroupLabelEnum.DOMAIN_POOL;
        case r'CUSTOM': return DomainGroupLabelEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainGroupLabelEnumTypeTransformer] instance.
  static DomainGroupLabelEnumTypeTransformer? _instance;
}


