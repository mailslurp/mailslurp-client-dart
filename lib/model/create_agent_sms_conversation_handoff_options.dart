//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAgentSmsConversationHandoffOptions {
  /// Returns a new [CreateAgentSmsConversationHandoffOptions] instance.
  CreateAgentSmsConversationHandoffOptions({
    required this.reasonCode,
    this.reason,
    required this.priority,
    this.sourceSmsId,
    this.expectedVersion,
  });

  String reasonCode;

  String? reason;

  CreateAgentSmsConversationHandoffOptionsPriorityEnum priority;

  String? sourceSmsId;

  int? expectedVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAgentSmsConversationHandoffOptions &&
     other.reasonCode == reasonCode &&
     other.reason == reason &&
     other.priority == priority &&
     other.sourceSmsId == sourceSmsId &&
     other.expectedVersion == expectedVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reasonCode.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (priority.hashCode) +
    (sourceSmsId == null ? 0 : sourceSmsId!.hashCode) +
    (expectedVersion == null ? 0 : expectedVersion!.hashCode);

  @override
  String toString() => 'CreateAgentSmsConversationHandoffOptions[reasonCode=$reasonCode, reason=$reason, priority=$priority, sourceSmsId=$sourceSmsId, expectedVersion=$expectedVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reasonCode'] = this.reasonCode;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'priority'] = this.priority;
    if (this.sourceSmsId != null) {
      json[r'sourceSmsId'] = this.sourceSmsId;
    } else {
      json[r'sourceSmsId'] = null;
    }
    if (this.expectedVersion != null) {
      json[r'expectedVersion'] = this.expectedVersion;
    } else {
      json[r'expectedVersion'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAgentSmsConversationHandoffOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAgentSmsConversationHandoffOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAgentSmsConversationHandoffOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAgentSmsConversationHandoffOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAgentSmsConversationHandoffOptions(
        reasonCode: mapValueOfType<String>(json, r'reasonCode')!,
        reason: mapValueOfType<String>(json, r'reason'),
        priority: CreateAgentSmsConversationHandoffOptionsPriorityEnum.fromJson(json[r'priority'])!,
        sourceSmsId: mapValueOfType<String>(json, r'sourceSmsId'),
        expectedVersion: mapValueOfType<int>(json, r'expectedVersion'),
      );
    }
    return null;
  }

  static List<CreateAgentSmsConversationHandoffOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentSmsConversationHandoffOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentSmsConversationHandoffOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAgentSmsConversationHandoffOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAgentSmsConversationHandoffOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAgentSmsConversationHandoffOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAgentSmsConversationHandoffOptions-objects as value to a dart map
  static Map<String, List<CreateAgentSmsConversationHandoffOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAgentSmsConversationHandoffOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAgentSmsConversationHandoffOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reasonCode',
    'priority',
  };
}


class CreateAgentSmsConversationHandoffOptionsPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAgentSmsConversationHandoffOptionsPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = CreateAgentSmsConversationHandoffOptionsPriorityEnum._(r'LOW');
  static const NORMAL = CreateAgentSmsConversationHandoffOptionsPriorityEnum._(r'NORMAL');
  static const HIGH = CreateAgentSmsConversationHandoffOptionsPriorityEnum._(r'HIGH');
  static const URGENT = CreateAgentSmsConversationHandoffOptionsPriorityEnum._(r'URGENT');

  /// List of all possible values in this [enum][CreateAgentSmsConversationHandoffOptionsPriorityEnum].
  static const values = <CreateAgentSmsConversationHandoffOptionsPriorityEnum>[
    LOW,
    NORMAL,
    HIGH,
    URGENT,
  ];

  static CreateAgentSmsConversationHandoffOptionsPriorityEnum? fromJson(dynamic value) => CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer().decode(value);

  static List<CreateAgentSmsConversationHandoffOptionsPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentSmsConversationHandoffOptionsPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentSmsConversationHandoffOptionsPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAgentSmsConversationHandoffOptionsPriorityEnum] to String,
/// and [decode] dynamic data back to [CreateAgentSmsConversationHandoffOptionsPriorityEnum].
class CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer {
  factory CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer() => _instance ??= const CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer._();

  const CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer._();

  String encode(CreateAgentSmsConversationHandoffOptionsPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAgentSmsConversationHandoffOptionsPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAgentSmsConversationHandoffOptionsPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return CreateAgentSmsConversationHandoffOptionsPriorityEnum.LOW;
        case r'NORMAL': return CreateAgentSmsConversationHandoffOptionsPriorityEnum.NORMAL;
        case r'HIGH': return CreateAgentSmsConversationHandoffOptionsPriorityEnum.HIGH;
        case r'URGENT': return CreateAgentSmsConversationHandoffOptionsPriorityEnum.URGENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer] instance.
  static CreateAgentSmsConversationHandoffOptionsPriorityEnumTypeTransformer? _instance;
}


