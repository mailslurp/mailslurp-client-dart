//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainRegionGroup {
  /// Returns a new [DomainRegionGroup] instance.
  DomainRegionGroup({
    required this.label,
    this.domains = const [],
  });

  DomainRegionGroupLabelEnum label;

  List<DomainRegionInformation> domains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainRegionGroup &&
     other.label == label &&
     other.domains == domains;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (domains.hashCode);

  @override
  String toString() => 'DomainRegionGroup[label=$label, domains=$domains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'domains'] = this.domains;
    return json;
  }

  /// Returns a new [DomainRegionGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainRegionGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainRegionGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainRegionGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainRegionGroup(
        label: DomainRegionGroupLabelEnum.fromJson(json[r'label'])!,
        domains: DomainRegionInformation.listFromJson(json[r'domains']),
      );
    }
    return null;
  }

  static List<DomainRegionGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainRegionGroup> mapFromJson(dynamic json) {
    final map = <String, DomainRegionGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainRegionGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainRegionGroup-objects as value to a dart map
  static Map<String, List<DomainRegionGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainRegionGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainRegionGroup.listFromJson(entry.value, growable: growable,);
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


class DomainRegionGroupLabelEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainRegionGroupLabelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEFAULT = DomainRegionGroupLabelEnum._(r'DEFAULT');
  static const DOMAIN_POOL = DomainRegionGroupLabelEnum._(r'DOMAIN_POOL');
  static const CUSTOM = DomainRegionGroupLabelEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][DomainRegionGroupLabelEnum].
  static const values = <DomainRegionGroupLabelEnum>[
    DEFAULT,
    DOMAIN_POOL,
    CUSTOM,
  ];

  static DomainRegionGroupLabelEnum? fromJson(dynamic value) => DomainRegionGroupLabelEnumTypeTransformer().decode(value);

  static List<DomainRegionGroupLabelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionGroupLabelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionGroupLabelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainRegionGroupLabelEnum] to String,
/// and [decode] dynamic data back to [DomainRegionGroupLabelEnum].
class DomainRegionGroupLabelEnumTypeTransformer {
  factory DomainRegionGroupLabelEnumTypeTransformer() => _instance ??= const DomainRegionGroupLabelEnumTypeTransformer._();

  const DomainRegionGroupLabelEnumTypeTransformer._();

  String encode(DomainRegionGroupLabelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainRegionGroupLabelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainRegionGroupLabelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEFAULT': return DomainRegionGroupLabelEnum.DEFAULT;
        case r'DOMAIN_POOL': return DomainRegionGroupLabelEnum.DOMAIN_POOL;
        case r'CUSTOM': return DomainRegionGroupLabelEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainRegionGroupLabelEnumTypeTransformer] instance.
  static DomainRegionGroupLabelEnumTypeTransformer? _instance;
}


