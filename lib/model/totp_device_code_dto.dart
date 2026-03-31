//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TotpDeviceCodeDto {
  /// Returns a new [TotpDeviceCodeDto] instance.
  TotpDeviceCodeDto({
    required this.code,
    this.expiresAt,
  });

  String code;

  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TotpDeviceCodeDto &&
     other.code == code &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'TotpDeviceCodeDto[code=$code, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [TotpDeviceCodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TotpDeviceCodeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TotpDeviceCodeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TotpDeviceCodeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TotpDeviceCodeDto(
        code: mapValueOfType<String>(json, r'code')!,
        expiresAt: mapDateTime(json, r'expiresAt', ''),
      );
    }
    return null;
  }

  static List<TotpDeviceCodeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TotpDeviceCodeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TotpDeviceCodeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TotpDeviceCodeDto> mapFromJson(dynamic json) {
    final map = <String, TotpDeviceCodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TotpDeviceCodeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TotpDeviceCodeDto-objects as value to a dart map
  static Map<String, List<TotpDeviceCodeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TotpDeviceCodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TotpDeviceCodeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
}

