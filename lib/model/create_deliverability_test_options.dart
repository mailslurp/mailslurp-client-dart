//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDeliverabilityTestOptions {
  /// Returns a new [CreateDeliverabilityTestOptions] instance.
  CreateDeliverabilityTestOptions({
    this.name,
    this.description,
    required this.scope,
    this.startAt,
    this.maxDurationSeconds,
    this.successThresholdPercent,
    required this.selector,
    this.expectations = const [],
  });

  /// Optional name for the test
  String? name;

  /// Optional description
  String? description;

  /// Entity scope to evaluate
  CreateDeliverabilityTestOptionsScopeEnum scope;

  /// UTC instant when the receive window starts. Defaults to now if omitted.
  DateTime? startAt;

  /// Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED.
  ///
  /// Minimum value: 1
  int? maxDurationSeconds;

  /// Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 100.0
  double? successThresholdPercent;

  DeliverabilitySelectorOptions selector;

  /// One or more expectations to evaluate for each entity
  List<DeliverabilityExpectation> expectations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDeliverabilityTestOptions &&
     other.name == name &&
     other.description == description &&
     other.scope == scope &&
     other.startAt == startAt &&
     other.maxDurationSeconds == maxDurationSeconds &&
     other.successThresholdPercent == successThresholdPercent &&
     other.selector == selector &&
     other.expectations == expectations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scope.hashCode) +
    (startAt == null ? 0 : startAt!.hashCode) +
    (maxDurationSeconds == null ? 0 : maxDurationSeconds!.hashCode) +
    (successThresholdPercent == null ? 0 : successThresholdPercent!.hashCode) +
    (selector.hashCode) +
    (expectations.hashCode);

  @override
  String toString() => 'CreateDeliverabilityTestOptions[name=$name, description=$description, scope=$scope, startAt=$startAt, maxDurationSeconds=$maxDurationSeconds, successThresholdPercent=$successThresholdPercent, selector=$selector, expectations=$expectations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'scope'] = this.scope;
    if (this.startAt != null) {
      json[r'startAt'] = this.startAt!.toUtc().toIso8601String();
    } else {
      json[r'startAt'] = null;
    }
    if (this.maxDurationSeconds != null) {
      json[r'maxDurationSeconds'] = this.maxDurationSeconds;
    } else {
      json[r'maxDurationSeconds'] = null;
    }
    if (this.successThresholdPercent != null) {
      json[r'successThresholdPercent'] = this.successThresholdPercent;
    } else {
      json[r'successThresholdPercent'] = null;
    }
      json[r'selector'] = this.selector;
      json[r'expectations'] = this.expectations;
    return json;
  }

  /// Returns a new [CreateDeliverabilityTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDeliverabilityTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDeliverabilityTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDeliverabilityTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDeliverabilityTestOptions(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        scope: CreateDeliverabilityTestOptionsScopeEnum.fromJson(json[r'scope'])!,
        startAt: mapDateTime(json, r'startAt', ''),
        maxDurationSeconds: mapValueOfType<int>(json, r'maxDurationSeconds'),
        successThresholdPercent: mapValueOfType<double>(json, r'successThresholdPercent'),
        selector: DeliverabilitySelectorOptions.fromJson(json[r'selector'])!,
        expectations: DeliverabilityExpectation.listFromJson(json[r'expectations']),
      );
    }
    return null;
  }

  static List<CreateDeliverabilityTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDeliverabilityTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDeliverabilityTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDeliverabilityTestOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDeliverabilityTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDeliverabilityTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDeliverabilityTestOptions-objects as value to a dart map
  static Map<String, List<CreateDeliverabilityTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDeliverabilityTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDeliverabilityTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scope',
    'selector',
    'expectations',
  };
}

/// Entity scope to evaluate
class CreateDeliverabilityTestOptionsScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDeliverabilityTestOptionsScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = CreateDeliverabilityTestOptionsScopeEnum._(r'INBOX');
  static const PHONE = CreateDeliverabilityTestOptionsScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][CreateDeliverabilityTestOptionsScopeEnum].
  static const values = <CreateDeliverabilityTestOptionsScopeEnum>[
    INBOX,
    PHONE,
  ];

  static CreateDeliverabilityTestOptionsScopeEnum? fromJson(dynamic value) => CreateDeliverabilityTestOptionsScopeEnumTypeTransformer().decode(value);

  static List<CreateDeliverabilityTestOptionsScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDeliverabilityTestOptionsScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDeliverabilityTestOptionsScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDeliverabilityTestOptionsScopeEnum] to String,
/// and [decode] dynamic data back to [CreateDeliverabilityTestOptionsScopeEnum].
class CreateDeliverabilityTestOptionsScopeEnumTypeTransformer {
  factory CreateDeliverabilityTestOptionsScopeEnumTypeTransformer() => _instance ??= const CreateDeliverabilityTestOptionsScopeEnumTypeTransformer._();

  const CreateDeliverabilityTestOptionsScopeEnumTypeTransformer._();

  String encode(CreateDeliverabilityTestOptionsScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDeliverabilityTestOptionsScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDeliverabilityTestOptionsScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return CreateDeliverabilityTestOptionsScopeEnum.INBOX;
        case r'PHONE': return CreateDeliverabilityTestOptionsScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDeliverabilityTestOptionsScopeEnumTypeTransformer] instance.
  static CreateDeliverabilityTestOptionsScopeEnumTypeTransformer? _instance;
}


