//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDomainMonitorAlertSinkOptions {
  /// Returns a new [CreateDomainMonitorAlertSinkOptions] instance.
  CreateDomainMonitorAlertSinkOptions({
    required this.type,
    required this.target,
    this.severityThreshold,
    this.enabled,
  });

  CreateDomainMonitorAlertSinkOptionsTypeEnum type;

  String target;

  CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum? severityThreshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDomainMonitorAlertSinkOptions &&
     other.type == type &&
     other.target == target &&
     other.severityThreshold == severityThreshold &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (target.hashCode) +
    (severityThreshold == null ? 0 : severityThreshold!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'CreateDomainMonitorAlertSinkOptions[type=$type, target=$target, severityThreshold=$severityThreshold, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'target'] = this.target;
    if (this.severityThreshold != null) {
      json[r'severityThreshold'] = this.severityThreshold;
    } else {
      json[r'severityThreshold'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDomainMonitorAlertSinkOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDomainMonitorAlertSinkOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDomainMonitorAlertSinkOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDomainMonitorAlertSinkOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDomainMonitorAlertSinkOptions(
        type: CreateDomainMonitorAlertSinkOptionsTypeEnum.fromJson(json[r'type'])!,
        target: mapValueOfType<String>(json, r'target')!,
        severityThreshold: CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.fromJson(json[r'severityThreshold']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<CreateDomainMonitorAlertSinkOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainMonitorAlertSinkOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainMonitorAlertSinkOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDomainMonitorAlertSinkOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDomainMonitorAlertSinkOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDomainMonitorAlertSinkOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDomainMonitorAlertSinkOptions-objects as value to a dart map
  static Map<String, List<CreateDomainMonitorAlertSinkOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDomainMonitorAlertSinkOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDomainMonitorAlertSinkOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'target',
  };
}


class CreateDomainMonitorAlertSinkOptionsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDomainMonitorAlertSinkOptionsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL = CreateDomainMonitorAlertSinkOptionsTypeEnum._(r'EMAIL');
  static const WEBHOOK = CreateDomainMonitorAlertSinkOptionsTypeEnum._(r'WEBHOOK');
  static const SLACK = CreateDomainMonitorAlertSinkOptionsTypeEnum._(r'SLACK');
  static const TEAMS = CreateDomainMonitorAlertSinkOptionsTypeEnum._(r'TEAMS');

  /// List of all possible values in this [enum][CreateDomainMonitorAlertSinkOptionsTypeEnum].
  static const values = <CreateDomainMonitorAlertSinkOptionsTypeEnum>[
    EMAIL,
    WEBHOOK,
    SLACK,
    TEAMS,
  ];

  static CreateDomainMonitorAlertSinkOptionsTypeEnum? fromJson(dynamic value) => CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer().decode(value);

  static List<CreateDomainMonitorAlertSinkOptionsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainMonitorAlertSinkOptionsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainMonitorAlertSinkOptionsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDomainMonitorAlertSinkOptionsTypeEnum] to String,
/// and [decode] dynamic data back to [CreateDomainMonitorAlertSinkOptionsTypeEnum].
class CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer {
  factory CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer() => _instance ??= const CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer._();

  const CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer._();

  String encode(CreateDomainMonitorAlertSinkOptionsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDomainMonitorAlertSinkOptionsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDomainMonitorAlertSinkOptionsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL': return CreateDomainMonitorAlertSinkOptionsTypeEnum.EMAIL;
        case r'WEBHOOK': return CreateDomainMonitorAlertSinkOptionsTypeEnum.WEBHOOK;
        case r'SLACK': return CreateDomainMonitorAlertSinkOptionsTypeEnum.SLACK;
        case r'TEAMS': return CreateDomainMonitorAlertSinkOptionsTypeEnum.TEAMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer] instance.
  static CreateDomainMonitorAlertSinkOptionsTypeEnumTypeTransformer? _instance;
}



class CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum._(r'LOW');
  static const MEDIUM = CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum._(r'MEDIUM');
  static const HIGH = CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum._(r'HIGH');
  static const CRITICAL = CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum._(r'CRITICAL');

  /// List of all possible values in this [enum][CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum].
  static const values = <CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum>[
    LOW,
    MEDIUM,
    HIGH,
    CRITICAL,
  ];

  static CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum? fromJson(dynamic value) => CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer().decode(value);

  static List<CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum] to String,
/// and [decode] dynamic data back to [CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum].
class CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer {
  factory CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer() => _instance ??= const CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer._();

  const CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer._();

  String encode(CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.LOW;
        case r'MEDIUM': return CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.MEDIUM;
        case r'HIGH': return CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.HIGH;
        case r'CRITICAL': return CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnum.CRITICAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer] instance.
  static CreateDomainMonitorAlertSinkOptionsSeverityThresholdEnumTypeTransformer? _instance;
}


