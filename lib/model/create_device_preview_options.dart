//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewOptions {
  /// Returns a new [CreateDevicePreviewOptions] instance.
  CreateDevicePreviewOptions({
    this.providers = const [],
    this.includeAllConfiguredProviders,
  });

  /// Optional providers to request for rendering. Defaults to ESP_DEFAULT_PROVIDERS when set, otherwise GMAIL and OUTLOOK.
  List<CreateDevicePreviewOptionsProvidersEnum> providers;

  /// Optional flag to request all configured providers in ESP. Defaults to false when omitted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeAllConfiguredProviders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewOptions &&
     other.providers == providers &&
     other.includeAllConfiguredProviders == includeAllConfiguredProviders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode) +
    (includeAllConfiguredProviders == null ? 0 : includeAllConfiguredProviders!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewOptions[providers=$providers, includeAllConfiguredProviders=$includeAllConfiguredProviders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
    if (this.includeAllConfiguredProviders != null) {
      json[r'includeAllConfiguredProviders'] = this.includeAllConfiguredProviders;
    } else {
      json[r'includeAllConfiguredProviders'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewOptions(
        providers: CreateDevicePreviewOptionsProvidersEnum.listFromJson(json[r'providers']),
        includeAllConfiguredProviders: mapValueOfType<bool>(json, r'includeAllConfiguredProviders'),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Optional providers to request for rendering. Defaults to ESP_DEFAULT_PROVIDERS when set, otherwise GMAIL and OUTLOOK.
class CreateDevicePreviewOptionsProvidersEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDevicePreviewOptionsProvidersEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = CreateDevicePreviewOptionsProvidersEnum._(r'GMAIL');
  static const OUTLOOK = CreateDevicePreviewOptionsProvidersEnum._(r'OUTLOOK');
  static const YAHOO = CreateDevicePreviewOptionsProvidersEnum._(r'YAHOO');

  /// List of all possible values in this [enum][CreateDevicePreviewOptionsProvidersEnum].
  static const values = <CreateDevicePreviewOptionsProvidersEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static CreateDevicePreviewOptionsProvidersEnum? fromJson(dynamic value) => CreateDevicePreviewOptionsProvidersEnumTypeTransformer().decode(value);

  static List<CreateDevicePreviewOptionsProvidersEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewOptionsProvidersEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewOptionsProvidersEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDevicePreviewOptionsProvidersEnum] to String,
/// and [decode] dynamic data back to [CreateDevicePreviewOptionsProvidersEnum].
class CreateDevicePreviewOptionsProvidersEnumTypeTransformer {
  factory CreateDevicePreviewOptionsProvidersEnumTypeTransformer() => _instance ??= const CreateDevicePreviewOptionsProvidersEnumTypeTransformer._();

  const CreateDevicePreviewOptionsProvidersEnumTypeTransformer._();

  String encode(CreateDevicePreviewOptionsProvidersEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDevicePreviewOptionsProvidersEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDevicePreviewOptionsProvidersEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return CreateDevicePreviewOptionsProvidersEnum.GMAIL;
        case r'OUTLOOK': return CreateDevicePreviewOptionsProvidersEnum.OUTLOOK;
        case r'YAHOO': return CreateDevicePreviewOptionsProvidersEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDevicePreviewOptionsProvidersEnumTypeTransformer] instance.
  static CreateDevicePreviewOptionsProvidersEnumTypeTransformer? _instance;
}


