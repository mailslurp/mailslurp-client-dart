//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePublicDeviceRenderTestOptions {
  /// Returns a new [CreatePublicDeviceRenderTestOptions] instance.
  CreatePublicDeviceRenderTestOptions({
    this.captchaToken,
    this.target,
    required this.previewMode,
  });

  /// Optional captcha token when captcha protection is enabled.
  String? captchaToken;

  /// One exact device preview target key. Omit only for backwards compatibility; the service still chooses one target.
  String? target;

  /// Public preview workflow to create.
  CreatePublicDeviceRenderTestOptionsPreviewModeEnum previewMode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePublicDeviceRenderTestOptions &&
     other.captchaToken == captchaToken &&
     other.target == target &&
     other.previewMode == previewMode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (captchaToken == null ? 0 : captchaToken!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (previewMode.hashCode);

  @override
  String toString() => 'CreatePublicDeviceRenderTestOptions[captchaToken=$captchaToken, target=$target, previewMode=$previewMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
      json[r'previewMode'] = this.previewMode;
    return json;
  }

  /// Returns a new [CreatePublicDeviceRenderTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePublicDeviceRenderTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePublicDeviceRenderTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePublicDeviceRenderTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePublicDeviceRenderTestOptions(
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
        target: mapValueOfType<String>(json, r'target'),
        previewMode: CreatePublicDeviceRenderTestOptionsPreviewModeEnum.fromJson(json[r'previewMode'])!,
      );
    }
    return null;
  }

  static List<CreatePublicDeviceRenderTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicDeviceRenderTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicDeviceRenderTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePublicDeviceRenderTestOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePublicDeviceRenderTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePublicDeviceRenderTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePublicDeviceRenderTestOptions-objects as value to a dart map
  static Map<String, List<CreatePublicDeviceRenderTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePublicDeviceRenderTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePublicDeviceRenderTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'previewMode',
  };
}

/// Public preview workflow to create.
class CreatePublicDeviceRenderTestOptionsPreviewModeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePublicDeviceRenderTestOptionsPreviewModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEVICE_RENDER = CreatePublicDeviceRenderTestOptionsPreviewModeEnum._(r'DEVICE_RENDER');
  static const LIGHT_DARK = CreatePublicDeviceRenderTestOptionsPreviewModeEnum._(r'LIGHT_DARK');

  /// List of all possible values in this [enum][CreatePublicDeviceRenderTestOptionsPreviewModeEnum].
  static const values = <CreatePublicDeviceRenderTestOptionsPreviewModeEnum>[
    DEVICE_RENDER,
    LIGHT_DARK,
  ];

  static CreatePublicDeviceRenderTestOptionsPreviewModeEnum? fromJson(dynamic value) => CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer().decode(value);

  static List<CreatePublicDeviceRenderTestOptionsPreviewModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicDeviceRenderTestOptionsPreviewModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicDeviceRenderTestOptionsPreviewModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePublicDeviceRenderTestOptionsPreviewModeEnum] to String,
/// and [decode] dynamic data back to [CreatePublicDeviceRenderTestOptionsPreviewModeEnum].
class CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer {
  factory CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer() => _instance ??= const CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer._();

  const CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer._();

  String encode(CreatePublicDeviceRenderTestOptionsPreviewModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePublicDeviceRenderTestOptionsPreviewModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePublicDeviceRenderTestOptionsPreviewModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEVICE_RENDER': return CreatePublicDeviceRenderTestOptionsPreviewModeEnum.DEVICE_RENDER;
        case r'LIGHT_DARK': return CreatePublicDeviceRenderTestOptionsPreviewModeEnum.LIGHT_DARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer] instance.
  static CreatePublicDeviceRenderTestOptionsPreviewModeEnumTypeTransformer? _instance;
}


