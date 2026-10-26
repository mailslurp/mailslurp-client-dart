//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewShareLinkDto {
  /// Returns a new [DevicePreviewShareLinkDto] instance.
  DevicePreviewShareLinkDto({
    required this.id,
    required this.runId,
    required this.tokenPrefix,
    this.token,
    this.shareUrl,
    this.label,
    this.expiresAt,
    this.revokedAt,
    this.lastAccessedAt,
    required this.accessCount,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String runId;

  String tokenPrefix;

  /// Raw share token. Only returned immediately after creation.
  String? token;

  /// Public share URL with social preview metadata. Only returned when the raw token is available.
  String? shareUrl;

  String? label;

  DateTime? expiresAt;

  DateTime? revokedAt;

  DateTime? lastAccessedAt;

  int accessCount;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewShareLinkDto &&
     other.id == id &&
     other.runId == runId &&
     other.tokenPrefix == tokenPrefix &&
     other.token == token &&
     other.shareUrl == shareUrl &&
     other.label == label &&
     other.expiresAt == expiresAt &&
     other.revokedAt == revokedAt &&
     other.lastAccessedAt == lastAccessedAt &&
     other.accessCount == accessCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (runId.hashCode) +
    (tokenPrefix.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (shareUrl == null ? 0 : shareUrl!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (revokedAt == null ? 0 : revokedAt!.hashCode) +
    (lastAccessedAt == null ? 0 : lastAccessedAt!.hashCode) +
    (accessCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewShareLinkDto[id=$id, runId=$runId, tokenPrefix=$tokenPrefix, token=$token, shareUrl=$shareUrl, label=$label, expiresAt=$expiresAt, revokedAt=$revokedAt, lastAccessedAt=$lastAccessedAt, accessCount=$accessCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'runId'] = this.runId;
      json[r'tokenPrefix'] = this.tokenPrefix;
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.shareUrl != null) {
      json[r'shareUrl'] = this.shareUrl;
    } else {
      json[r'shareUrl'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.revokedAt != null) {
      json[r'revokedAt'] = this.revokedAt!.toUtc().toIso8601String();
    } else {
      json[r'revokedAt'] = null;
    }
    if (this.lastAccessedAt != null) {
      json[r'lastAccessedAt'] = this.lastAccessedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastAccessedAt'] = null;
    }
      json[r'accessCount'] = this.accessCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewShareLinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewShareLinkDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewShareLinkDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewShareLinkDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewShareLinkDto(
        id: mapValueOfType<String>(json, r'id')!,
        runId: mapValueOfType<String>(json, r'runId')!,
        tokenPrefix: mapValueOfType<String>(json, r'tokenPrefix')!,
        token: mapValueOfType<String>(json, r'token'),
        shareUrl: mapValueOfType<String>(json, r'shareUrl'),
        label: mapValueOfType<String>(json, r'label'),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        revokedAt: mapDateTime(json, r'revokedAt', ''),
        lastAccessedAt: mapDateTime(json, r'lastAccessedAt', ''),
        accessCount: mapValueOfType<int>(json, r'accessCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewShareLinkDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewShareLinkDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewShareLinkDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewShareLinkDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewShareLinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewShareLinkDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewShareLinkDto-objects as value to a dart map
  static Map<String, List<DevicePreviewShareLinkDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewShareLinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewShareLinkDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'runId',
    'tokenPrefix',
    'accessCount',
    'createdAt',
    'updatedAt',
  };
}

