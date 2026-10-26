//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeferAgentWorkItemOptions {
  /// Returns a new [DeferAgentWorkItemOptions] instance.
  DeferAgentWorkItemOptions({
    required this.reasonCode,
    this.reason,
    required this.priority,
    this.sourceEmailId,
    this.draftId,
    this.expectedConversationVersion,
    this.claimId,
  });

  String reasonCode;

  String? reason;

  DeferAgentWorkItemOptionsPriorityEnum priority;

  String? sourceEmailId;

  String? draftId;

  int? expectedConversationVersion;

  String? claimId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeferAgentWorkItemOptions &&
     other.reasonCode == reasonCode &&
     other.reason == reason &&
     other.priority == priority &&
     other.sourceEmailId == sourceEmailId &&
     other.draftId == draftId &&
     other.expectedConversationVersion == expectedConversationVersion &&
     other.claimId == claimId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reasonCode.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (priority.hashCode) +
    (sourceEmailId == null ? 0 : sourceEmailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode) +
    (expectedConversationVersion == null ? 0 : expectedConversationVersion!.hashCode) +
    (claimId == null ? 0 : claimId!.hashCode);

  @override
  String toString() => 'DeferAgentWorkItemOptions[reasonCode=$reasonCode, reason=$reason, priority=$priority, sourceEmailId=$sourceEmailId, draftId=$draftId, expectedConversationVersion=$expectedConversationVersion, claimId=$claimId]';

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
    if (this.expectedConversationVersion != null) {
      json[r'expectedConversationVersion'] = this.expectedConversationVersion;
    } else {
      json[r'expectedConversationVersion'] = null;
    }
    if (this.claimId != null) {
      json[r'claimId'] = this.claimId;
    } else {
      json[r'claimId'] = null;
    }
    return json;
  }

  /// Returns a new [DeferAgentWorkItemOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeferAgentWorkItemOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeferAgentWorkItemOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeferAgentWorkItemOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeferAgentWorkItemOptions(
        reasonCode: mapValueOfType<String>(json, r'reasonCode')!,
        reason: mapValueOfType<String>(json, r'reason'),
        priority: DeferAgentWorkItemOptionsPriorityEnum.fromJson(json[r'priority'])!,
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
        expectedConversationVersion: mapValueOfType<int>(json, r'expectedConversationVersion'),
        claimId: mapValueOfType<String>(json, r'claimId'),
      );
    }
    return null;
  }

  static List<DeferAgentWorkItemOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeferAgentWorkItemOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeferAgentWorkItemOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeferAgentWorkItemOptions> mapFromJson(dynamic json) {
    final map = <String, DeferAgentWorkItemOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeferAgentWorkItemOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeferAgentWorkItemOptions-objects as value to a dart map
  static Map<String, List<DeferAgentWorkItemOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeferAgentWorkItemOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeferAgentWorkItemOptions.listFromJson(entry.value, growable: growable,);
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


class DeferAgentWorkItemOptionsPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const DeferAgentWorkItemOptionsPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = DeferAgentWorkItemOptionsPriorityEnum._(r'LOW');
  static const NORMAL = DeferAgentWorkItemOptionsPriorityEnum._(r'NORMAL');
  static const HIGH = DeferAgentWorkItemOptionsPriorityEnum._(r'HIGH');
  static const URGENT = DeferAgentWorkItemOptionsPriorityEnum._(r'URGENT');

  /// List of all possible values in this [enum][DeferAgentWorkItemOptionsPriorityEnum].
  static const values = <DeferAgentWorkItemOptionsPriorityEnum>[
    LOW,
    NORMAL,
    HIGH,
    URGENT,
  ];

  static DeferAgentWorkItemOptionsPriorityEnum? fromJson(dynamic value) => DeferAgentWorkItemOptionsPriorityEnumTypeTransformer().decode(value);

  static List<DeferAgentWorkItemOptionsPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeferAgentWorkItemOptionsPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeferAgentWorkItemOptionsPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeferAgentWorkItemOptionsPriorityEnum] to String,
/// and [decode] dynamic data back to [DeferAgentWorkItemOptionsPriorityEnum].
class DeferAgentWorkItemOptionsPriorityEnumTypeTransformer {
  factory DeferAgentWorkItemOptionsPriorityEnumTypeTransformer() => _instance ??= const DeferAgentWorkItemOptionsPriorityEnumTypeTransformer._();

  const DeferAgentWorkItemOptionsPriorityEnumTypeTransformer._();

  String encode(DeferAgentWorkItemOptionsPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeferAgentWorkItemOptionsPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeferAgentWorkItemOptionsPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return DeferAgentWorkItemOptionsPriorityEnum.LOW;
        case r'NORMAL': return DeferAgentWorkItemOptionsPriorityEnum.NORMAL;
        case r'HIGH': return DeferAgentWorkItemOptionsPriorityEnum.HIGH;
        case r'URGENT': return DeferAgentWorkItemOptionsPriorityEnum.URGENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeferAgentWorkItemOptionsPriorityEnumTypeTransformer] instance.
  static DeferAgentWorkItemOptionsPriorityEnumTypeTransformer? _instance;
}


