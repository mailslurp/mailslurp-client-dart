//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAutomatedInboxPlacementScheduleOptions {
  /// Returns a new [CreateAutomatedInboxPlacementScheduleOptions] instance.
  CreateAutomatedInboxPlacementScheduleOptions({
    required this.connectionId,
    required this.name,
    required this.intervalMinutes,
    required this.enabled,
    required this.requestedSegment,
    this.seedlistProfile,
    required this.subjectTemplate,
    this.textBodyTemplate,
    this.htmlBodyTemplate,
    this.sourceRunId,
  });

  String connectionId;

  String name;

  /// Minimum value: 60
  /// Maximum value: 43200
  int intervalMinutes;

  bool enabled;

  CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum requestedSegment;

  String? seedlistProfile;

  String subjectTemplate;

  String? textBodyTemplate;

  String? htmlBodyTemplate;

  String? sourceRunId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAutomatedInboxPlacementScheduleOptions &&
     other.connectionId == connectionId &&
     other.name == name &&
     other.intervalMinutes == intervalMinutes &&
     other.enabled == enabled &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.subjectTemplate == subjectTemplate &&
     other.textBodyTemplate == textBodyTemplate &&
     other.htmlBodyTemplate == htmlBodyTemplate &&
     other.sourceRunId == sourceRunId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionId.hashCode) +
    (name.hashCode) +
    (intervalMinutes.hashCode) +
    (enabled.hashCode) +
    (requestedSegment.hashCode) +
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (subjectTemplate.hashCode) +
    (textBodyTemplate == null ? 0 : textBodyTemplate!.hashCode) +
    (htmlBodyTemplate == null ? 0 : htmlBodyTemplate!.hashCode) +
    (sourceRunId == null ? 0 : sourceRunId!.hashCode);

  @override
  String toString() => 'CreateAutomatedInboxPlacementScheduleOptions[connectionId=$connectionId, name=$name, intervalMinutes=$intervalMinutes, enabled=$enabled, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, subjectTemplate=$subjectTemplate, textBodyTemplate=$textBodyTemplate, htmlBodyTemplate=$htmlBodyTemplate, sourceRunId=$sourceRunId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionId'] = this.connectionId;
      json[r'name'] = this.name;
      json[r'intervalMinutes'] = this.intervalMinutes;
      json[r'enabled'] = this.enabled;
      json[r'requestedSegment'] = this.requestedSegment;
    if (this.seedlistProfile != null) {
      json[r'seedlistProfile'] = this.seedlistProfile;
    } else {
      json[r'seedlistProfile'] = null;
    }
      json[r'subjectTemplate'] = this.subjectTemplate;
    if (this.textBodyTemplate != null) {
      json[r'textBodyTemplate'] = this.textBodyTemplate;
    } else {
      json[r'textBodyTemplate'] = null;
    }
    if (this.htmlBodyTemplate != null) {
      json[r'htmlBodyTemplate'] = this.htmlBodyTemplate;
    } else {
      json[r'htmlBodyTemplate'] = null;
    }
    if (this.sourceRunId != null) {
      json[r'sourceRunId'] = this.sourceRunId;
    } else {
      json[r'sourceRunId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAutomatedInboxPlacementScheduleOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAutomatedInboxPlacementScheduleOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAutomatedInboxPlacementScheduleOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAutomatedInboxPlacementScheduleOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAutomatedInboxPlacementScheduleOptions(
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        name: mapValueOfType<String>(json, r'name')!,
        intervalMinutes: mapValueOfType<int>(json, r'intervalMinutes')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        requestedSegment: CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.fromJson(json[r'requestedSegment'])!,
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        subjectTemplate: mapValueOfType<String>(json, r'subjectTemplate')!,
        textBodyTemplate: mapValueOfType<String>(json, r'textBodyTemplate'),
        htmlBodyTemplate: mapValueOfType<String>(json, r'htmlBodyTemplate'),
        sourceRunId: mapValueOfType<String>(json, r'sourceRunId'),
      );
    }
    return null;
  }

  static List<CreateAutomatedInboxPlacementScheduleOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAutomatedInboxPlacementScheduleOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAutomatedInboxPlacementScheduleOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAutomatedInboxPlacementScheduleOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAutomatedInboxPlacementScheduleOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAutomatedInboxPlacementScheduleOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAutomatedInboxPlacementScheduleOptions-objects as value to a dart map
  static Map<String, List<CreateAutomatedInboxPlacementScheduleOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAutomatedInboxPlacementScheduleOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAutomatedInboxPlacementScheduleOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionId',
    'name',
    'intervalMinutes',
    'enabled',
    'requestedSegment',
    'subjectTemplate',
  };
}


class CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL_INBOXES = CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum._(r'ALL_INBOXES');
  static const PERSONAL_INBOXES = CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum._(r'PERSONAL_INBOXES');
  static const PROFESSIONAL_INBOXES = CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum._(r'PROFESSIONAL_INBOXES');

  /// List of all possible values in this [enum][CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum].
  static const values = <CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum>[
    ALL_INBOXES,
    PERSONAL_INBOXES,
    PROFESSIONAL_INBOXES,
  ];

  static CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum? fromJson(dynamic value) => CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer().decode(value);

  static List<CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum] to String,
/// and [decode] dynamic data back to [CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum].
class CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer {
  factory CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer() => _instance ??= const CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer._();

  const CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer._();

  String encode(CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL_INBOXES': return CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.ALL_INBOXES;
        case r'PERSONAL_INBOXES': return CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.PERSONAL_INBOXES;
        case r'PROFESSIONAL_INBOXES': return CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnum.PROFESSIONAL_INBOXES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer] instance.
  static CreateAutomatedInboxPlacementScheduleOptionsRequestedSegmentEnumTypeTransformer? _instance;
}


