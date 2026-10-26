//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateEmailWarmupProgramOptions {
  /// Returns a new [UpdateEmailWarmupProgramOptions] instance.
  UpdateEmailWarmupProgramOptions({
    required this.expectedVersion,
    this.name,
    this.goalDailyVolume,
    this.schedulePreset,
    this.rampDurationDays,
    this.maintenanceEnabled,
    this.maintenanceDailyVolume,
    this.sendWindowStart,
    this.sendWindowEnd,
    this.timeZone,
    this.content,
  });

  /// Minimum value: 0
  int expectedVersion;

  String? name;

  /// Minimum value: 2
  /// Maximum value: 20
  int? goalDailyVolume;

  UpdateEmailWarmupProgramOptionsSchedulePresetEnum? schedulePreset;

  /// Minimum value: 7
  /// Maximum value: 90
  int? rampDurationDays;

  bool? maintenanceEnabled;

  /// Minimum value: 1
  /// Maximum value: 20
  int? maintenanceDailyVolume;

  String? sendWindowStart;

  String? sendWindowEnd;

  String? timeZone;

  EmailWarmupContentOptions? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateEmailWarmupProgramOptions &&
     other.expectedVersion == expectedVersion &&
     other.name == name &&
     other.goalDailyVolume == goalDailyVolume &&
     other.schedulePreset == schedulePreset &&
     other.rampDurationDays == rampDurationDays &&
     other.maintenanceEnabled == maintenanceEnabled &&
     other.maintenanceDailyVolume == maintenanceDailyVolume &&
     other.sendWindowStart == sendWindowStart &&
     other.sendWindowEnd == sendWindowEnd &&
     other.timeZone == timeZone &&
     other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expectedVersion.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (goalDailyVolume == null ? 0 : goalDailyVolume!.hashCode) +
    (schedulePreset == null ? 0 : schedulePreset!.hashCode) +
    (rampDurationDays == null ? 0 : rampDurationDays!.hashCode) +
    (maintenanceEnabled == null ? 0 : maintenanceEnabled!.hashCode) +
    (maintenanceDailyVolume == null ? 0 : maintenanceDailyVolume!.hashCode) +
    (sendWindowStart == null ? 0 : sendWindowStart!.hashCode) +
    (sendWindowEnd == null ? 0 : sendWindowEnd!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'UpdateEmailWarmupProgramOptions[expectedVersion=$expectedVersion, name=$name, goalDailyVolume=$goalDailyVolume, schedulePreset=$schedulePreset, rampDurationDays=$rampDurationDays, maintenanceEnabled=$maintenanceEnabled, maintenanceDailyVolume=$maintenanceDailyVolume, sendWindowStart=$sendWindowStart, sendWindowEnd=$sendWindowEnd, timeZone=$timeZone, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'expectedVersion'] = this.expectedVersion;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.goalDailyVolume != null) {
      json[r'goalDailyVolume'] = this.goalDailyVolume;
    } else {
      json[r'goalDailyVolume'] = null;
    }
    if (this.schedulePreset != null) {
      json[r'schedulePreset'] = this.schedulePreset;
    } else {
      json[r'schedulePreset'] = null;
    }
    if (this.rampDurationDays != null) {
      json[r'rampDurationDays'] = this.rampDurationDays;
    } else {
      json[r'rampDurationDays'] = null;
    }
    if (this.maintenanceEnabled != null) {
      json[r'maintenanceEnabled'] = this.maintenanceEnabled;
    } else {
      json[r'maintenanceEnabled'] = null;
    }
    if (this.maintenanceDailyVolume != null) {
      json[r'maintenanceDailyVolume'] = this.maintenanceDailyVolume;
    } else {
      json[r'maintenanceDailyVolume'] = null;
    }
    if (this.sendWindowStart != null) {
      json[r'sendWindowStart'] = this.sendWindowStart;
    } else {
      json[r'sendWindowStart'] = null;
    }
    if (this.sendWindowEnd != null) {
      json[r'sendWindowEnd'] = this.sendWindowEnd;
    } else {
      json[r'sendWindowEnd'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateEmailWarmupProgramOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateEmailWarmupProgramOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateEmailWarmupProgramOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateEmailWarmupProgramOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateEmailWarmupProgramOptions(
        expectedVersion: mapValueOfType<int>(json, r'expectedVersion')!,
        name: mapValueOfType<String>(json, r'name'),
        goalDailyVolume: mapValueOfType<int>(json, r'goalDailyVolume'),
        schedulePreset: UpdateEmailWarmupProgramOptionsSchedulePresetEnum.fromJson(json[r'schedulePreset']),
        rampDurationDays: mapValueOfType<int>(json, r'rampDurationDays'),
        maintenanceEnabled: mapValueOfType<bool>(json, r'maintenanceEnabled'),
        maintenanceDailyVolume: mapValueOfType<int>(json, r'maintenanceDailyVolume'),
        sendWindowStart: mapValueOfType<String>(json, r'sendWindowStart'),
        sendWindowEnd: mapValueOfType<String>(json, r'sendWindowEnd'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        content: EmailWarmupContentOptions.fromJson(json[r'content']),
      );
    }
    return null;
  }

  static List<UpdateEmailWarmupProgramOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEmailWarmupProgramOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEmailWarmupProgramOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateEmailWarmupProgramOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateEmailWarmupProgramOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateEmailWarmupProgramOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateEmailWarmupProgramOptions-objects as value to a dart map
  static Map<String, List<UpdateEmailWarmupProgramOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateEmailWarmupProgramOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateEmailWarmupProgramOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'expectedVersion',
  };
}


class UpdateEmailWarmupProgramOptionsSchedulePresetEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateEmailWarmupProgramOptionsSchedulePresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENTLE = UpdateEmailWarmupProgramOptionsSchedulePresetEnum._(r'GENTLE');
  static const STANDARD = UpdateEmailWarmupProgramOptionsSchedulePresetEnum._(r'STANDARD');
  static const REPAIR = UpdateEmailWarmupProgramOptionsSchedulePresetEnum._(r'REPAIR');
  static const CUSTOM = UpdateEmailWarmupProgramOptionsSchedulePresetEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][UpdateEmailWarmupProgramOptionsSchedulePresetEnum].
  static const values = <UpdateEmailWarmupProgramOptionsSchedulePresetEnum>[
    GENTLE,
    STANDARD,
    REPAIR,
    CUSTOM,
  ];

  static UpdateEmailWarmupProgramOptionsSchedulePresetEnum? fromJson(dynamic value) => UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer().decode(value);

  static List<UpdateEmailWarmupProgramOptionsSchedulePresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEmailWarmupProgramOptionsSchedulePresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEmailWarmupProgramOptionsSchedulePresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateEmailWarmupProgramOptionsSchedulePresetEnum] to String,
/// and [decode] dynamic data back to [UpdateEmailWarmupProgramOptionsSchedulePresetEnum].
class UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer {
  factory UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer() => _instance ??= const UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer._();

  const UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer._();

  String encode(UpdateEmailWarmupProgramOptionsSchedulePresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateEmailWarmupProgramOptionsSchedulePresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateEmailWarmupProgramOptionsSchedulePresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENTLE': return UpdateEmailWarmupProgramOptionsSchedulePresetEnum.GENTLE;
        case r'STANDARD': return UpdateEmailWarmupProgramOptionsSchedulePresetEnum.STANDARD;
        case r'REPAIR': return UpdateEmailWarmupProgramOptionsSchedulePresetEnum.REPAIR;
        case r'CUSTOM': return UpdateEmailWarmupProgramOptionsSchedulePresetEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer] instance.
  static UpdateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer? _instance;
}


