//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAgentConversationHandoffOptions {
  /// Returns a new [CreateAgentConversationHandoffOptions] instance.
  CreateAgentConversationHandoffOptions({
    required this.reasonCode,
    this.reason,
    required this.priority,
    this.sourceEmailId,
    this.draftId,
    this.expectedVersion,
  });

  String reasonCode;

  String? reason;

  CreateAgentConversationHandoffOptionsPriorityEnum priority;

  String? sourceEmailId;

  String? draftId;

  int? expectedVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAgentConversationHandoffOptions &&
     other.reasonCode == reasonCode &&
     other.reason == reason &&
     other.priority == priority &&
     other.sourceEmailId == sourceEmailId &&
     other.draftId == draftId &&
     other.expectedVersion == expectedVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reasonCode.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (priority.hashCode) +
    (sourceEmailId == null ? 0 : sourceEmailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode) +
    (expectedVersion == null ? 0 : expectedVersion!.hashCode);

  @override
  String toString() => 'CreateAgentConversationHandoffOptions[reasonCode=$reasonCode, reason=$reason, priority=$priority, sourceEmailId=$sourceEmailId, draftId=$draftId, expectedVersion=$expectedVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reasonCode'] = this.reasonCode;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'priority'] = this.priority;
    if (this.sourceEmailId != null) {
      json[r'sourceEmailId'] = this.sourceEmailId;
    } else {
      json[r'sourceEmailId'] = null;
    }
    if (this.draftId != null) {
      json[r'draftId'] = this.draftId;
    } else {
      json[r'draftId'] = null;
    }
    if (this.expectedVersion != null) {
      json[r'expectedVersion'] = this.expectedVersion;
    } else {
      json[r'expectedVersion'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAgentConversationHandoffOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAgentConversationHandoffOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAgentConversationHandoffOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAgentConversationHandoffOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAgentConversationHandoffOptions(
        reasonCode: mapValueOfType<String>(json, r'reasonCode')!,
        reason: mapValueOfType<String>(json, r'reason'),
        priority: CreateAgentConversationHandoffOptionsPriorityEnum.fromJson(json[r'priority'])!,
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
        expectedVersion: mapValueOfType<int>(json, r'expectedVersion'),
      );
    }
    return null;
  }

  static List<CreateAgentConversationHandoffOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentConversationHandoffOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentConversationHandoffOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAgentConversationHandoffOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAgentConversationHandoffOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAgentConversationHandoffOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAgentConversationHandoffOptions-objects as value to a dart map
  static Map<String, List<CreateAgentConversationHandoffOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAgentConversationHandoffOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAgentConversationHandoffOptions.listFromJson(entry.value, growable: growable,);
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


class CreateAgentConversationHandoffOptionsPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAgentConversationHandoffOptionsPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = CreateAgentConversationHandoffOptionsPriorityEnum._(r'LOW');
  static const NORMAL = CreateAgentConversationHandoffOptionsPriorityEnum._(r'NORMAL');
  static const HIGH = CreateAgentConversationHandoffOptionsPriorityEnum._(r'HIGH');
  static const URGENT = CreateAgentConversationHandoffOptionsPriorityEnum._(r'URGENT');

  /// List of all possible values in this [enum][CreateAgentConversationHandoffOptionsPriorityEnum].
  static const values = <CreateAgentConversationHandoffOptionsPriorityEnum>[
    LOW,
    NORMAL,
    HIGH,
    URGENT,
  ];

  static CreateAgentConversationHandoffOptionsPriorityEnum? fromJson(dynamic value) => CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer().decode(value);

  static List<CreateAgentConversationHandoffOptionsPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentConversationHandoffOptionsPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentConversationHandoffOptionsPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAgentConversationHandoffOptionsPriorityEnum] to String,
/// and [decode] dynamic data back to [CreateAgentConversationHandoffOptionsPriorityEnum].
class CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer {
  factory CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer() => _instance ??= const CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer._();

  const CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer._();

  String encode(CreateAgentConversationHandoffOptionsPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAgentConversationHandoffOptionsPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAgentConversationHandoffOptionsPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return CreateAgentConversationHandoffOptionsPriorityEnum.LOW;
        case r'NORMAL': return CreateAgentConversationHandoffOptionsPriorityEnum.NORMAL;
        case r'HIGH': return CreateAgentConversationHandoffOptionsPriorityEnum.HIGH;
        case r'URGENT': return CreateAgentConversationHandoffOptionsPriorityEnum.URGENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer] instance.
  static CreateAgentConversationHandoffOptionsPriorityEnumTypeTransformer? _instance;
}


