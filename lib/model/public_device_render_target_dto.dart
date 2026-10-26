//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicDeviceRenderTargetDto {
  /// Returns a new [PublicDeviceRenderTargetDto] instance.
  PublicDeviceRenderTargetDto({
    required this.target,
    required this.baseTarget,
    this.provider,
    required this.client,
    required this.surface,
    required this.platform,
    required this.formFactor,
    required this.engine,
    required this.appearance,
  });

  String target;

  String baseTarget;

  String? provider;

  String client;

  String surface;

  String platform;

  String formFactor;

  String engine;

  String appearance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicDeviceRenderTargetDto &&
     other.target == target &&
     other.baseTarget == baseTarget &&
     other.provider == provider &&
     other.client == client &&
     other.surface == surface &&
     other.platform == platform &&
     other.formFactor == formFactor &&
     other.engine == engine &&
     other.appearance == appearance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (target.hashCode) +
    (baseTarget.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (client.hashCode) +
    (surface.hashCode) +
    (platform.hashCode) +
    (formFactor.hashCode) +
    (engine.hashCode) +
    (appearance.hashCode);

  @override
  String toString() => 'PublicDeviceRenderTargetDto[target=$target, baseTarget=$baseTarget, provider=$provider, client=$client, surface=$surface, platform=$platform, formFactor=$formFactor, engine=$engine, appearance=$appearance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'target'] = this.target;
      json[r'baseTarget'] = this.baseTarget;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'client'] = this.client;
      json[r'surface'] = this.surface;
      json[r'platform'] = this.platform;
      json[r'formFactor'] = this.formFactor;
      json[r'engine'] = this.engine;
      json[r'appearance'] = this.appearance;
    return json;
  }

  /// Returns a new [PublicDeviceRenderTargetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicDeviceRenderTargetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicDeviceRenderTargetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicDeviceRenderTargetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicDeviceRenderTargetDto(
        target: mapValueOfType<String>(json, r'target')!,
        baseTarget: mapValueOfType<String>(json, r'baseTarget')!,
        provider: mapValueOfType<String>(json, r'provider'),
        client: mapValueOfType<String>(json, r'client')!,
        surface: mapValueOfType<String>(json, r'surface')!,
        platform: mapValueOfType<String>(json, r'platform')!,
        formFactor: mapValueOfType<String>(json, r'formFactor')!,
        engine: mapValueOfType<String>(json, r'engine')!,
        appearance: mapValueOfType<String>(json, r'appearance')!,
      );
    }
    return null;
  }

  static List<PublicDeviceRenderTargetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicDeviceRenderTargetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicDeviceRenderTargetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicDeviceRenderTargetDto> mapFromJson(dynamic json) {
    final map = <String, PublicDeviceRenderTargetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicDeviceRenderTargetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicDeviceRenderTargetDto-objects as value to a dart map
  static Map<String, List<PublicDeviceRenderTargetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicDeviceRenderTargetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicDeviceRenderTargetDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'target',
    'baseTarget',
    'client',
    'surface',
    'platform',
    'formFactor',
    'engine',
    'appearance',
  };
}

