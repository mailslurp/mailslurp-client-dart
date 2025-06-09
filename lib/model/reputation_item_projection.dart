//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReputationItemProjection {
  /// Returns a new [ReputationItemProjection] instance.
  ReputationItemProjection({
    required this.createdAt,
    this.recipient,
    required this.reputationType,
    required this.id,
    required this.severity,
    this.source_,
  });

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  ReputationItemProjectionReputationTypeEnum reputationType;

  String id;

  ReputationItemProjectionSeverityEnum severity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReputationItemProjection &&
     other.createdAt == createdAt &&
     other.recipient == recipient &&
     other.reputationType == reputationType &&
     other.id == id &&
     other.severity == severity &&
     other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (reputationType.hashCode) +
    (id.hashCode) +
    (severity.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'ReputationItemProjection[createdAt=$createdAt, recipient=$recipient, reputationType=$reputationType, id=$id, severity=$severity, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
      json[r'reputationType'] = this.reputationType;
      json[r'id'] = this.id;
      json[r'severity'] = this.severity;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [ReputationItemProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReputationItemProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReputationItemProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReputationItemProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReputationItemProjection(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        recipient: mapValueOfType<String>(json, r'recipient'),
        reputationType: ReputationItemProjectionReputationTypeEnum.fromJson(json[r'reputationType'])!,
        id: mapValueOfType<String>(json, r'id')!,
        severity: ReputationItemProjectionSeverityEnum.fromJson(json[r'severity'])!,
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<ReputationItemProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReputationItemProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReputationItemProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReputationItemProjection> mapFromJson(dynamic json) {
    final map = <String, ReputationItemProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReputationItemProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReputationItemProjection-objects as value to a dart map
  static Map<String, List<ReputationItemProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReputationItemProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReputationItemProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'reputationType',
    'id',
    'severity',
  };
}


class ReputationItemProjectionReputationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ReputationItemProjectionReputationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COMPLAINT = ReputationItemProjectionReputationTypeEnum._(r'COMPLAINT');
  static const BOUNCE = ReputationItemProjectionReputationTypeEnum._(r'BOUNCE');

  /// List of all possible values in this [enum][ReputationItemProjectionReputationTypeEnum].
  static const values = <ReputationItemProjectionReputationTypeEnum>[
    COMPLAINT,
    BOUNCE,
  ];

  static ReputationItemProjectionReputationTypeEnum? fromJson(dynamic value) => ReputationItemProjectionReputationTypeEnumTypeTransformer().decode(value);

  static List<ReputationItemProjectionReputationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReputationItemProjectionReputationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReputationItemProjectionReputationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReputationItemProjectionReputationTypeEnum] to String,
/// and [decode] dynamic data back to [ReputationItemProjectionReputationTypeEnum].
class ReputationItemProjectionReputationTypeEnumTypeTransformer {
  factory ReputationItemProjectionReputationTypeEnumTypeTransformer() => _instance ??= const ReputationItemProjectionReputationTypeEnumTypeTransformer._();

  const ReputationItemProjectionReputationTypeEnumTypeTransformer._();

  String encode(ReputationItemProjectionReputationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReputationItemProjectionReputationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReputationItemProjectionReputationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COMPLAINT': return ReputationItemProjectionReputationTypeEnum.COMPLAINT;
        case r'BOUNCE': return ReputationItemProjectionReputationTypeEnum.BOUNCE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReputationItemProjectionReputationTypeEnumTypeTransformer] instance.
  static ReputationItemProjectionReputationTypeEnumTypeTransformer? _instance;
}



class ReputationItemProjectionSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const ReputationItemProjectionSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INFO = ReputationItemProjectionSeverityEnum._(r'INFO');
  static const WARNING = ReputationItemProjectionSeverityEnum._(r'WARNING');
  static const DANGER = ReputationItemProjectionSeverityEnum._(r'DANGER');

  /// List of all possible values in this [enum][ReputationItemProjectionSeverityEnum].
  static const values = <ReputationItemProjectionSeverityEnum>[
    INFO,
    WARNING,
    DANGER,
  ];

  static ReputationItemProjectionSeverityEnum? fromJson(dynamic value) => ReputationItemProjectionSeverityEnumTypeTransformer().decode(value);

  static List<ReputationItemProjectionSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReputationItemProjectionSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReputationItemProjectionSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReputationItemProjectionSeverityEnum] to String,
/// and [decode] dynamic data back to [ReputationItemProjectionSeverityEnum].
class ReputationItemProjectionSeverityEnumTypeTransformer {
  factory ReputationItemProjectionSeverityEnumTypeTransformer() => _instance ??= const ReputationItemProjectionSeverityEnumTypeTransformer._();

  const ReputationItemProjectionSeverityEnumTypeTransformer._();

  String encode(ReputationItemProjectionSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReputationItemProjectionSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReputationItemProjectionSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INFO': return ReputationItemProjectionSeverityEnum.INFO;
        case r'WARNING': return ReputationItemProjectionSeverityEnum.WARNING;
        case r'DANGER': return ReputationItemProjectionSeverityEnum.DANGER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReputationItemProjectionSeverityEnumTypeTransformer] instance.
  static ReputationItemProjectionSeverityEnumTypeTransformer? _instance;
}


