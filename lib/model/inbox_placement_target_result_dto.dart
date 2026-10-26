//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementTargetResultDto {
  /// Returns a new [InboxPlacementTargetResultDto] instance.
  InboxPlacementTargetResultDto({
    required this.seedAccountId,
    required this.seedAddress,
    required this.provider,
    required this.segment,
    required this.status,
    this.placementVerdict,
    this.placementFolder,
    this.receivedAt,
    this.latencyMs,
    this.evidence = const {},
  });

  int seedAccountId;

  String seedAddress;

  String provider;

  String segment;

  String status;

  String? placementVerdict;

  String? placementFolder;

  DateTime? receivedAt;

  int? latencyMs;

  Map<String, String> evidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementTargetResultDto &&
     other.seedAccountId == seedAccountId &&
     other.seedAddress == seedAddress &&
     other.provider == provider &&
     other.segment == segment &&
     other.status == status &&
     other.placementVerdict == placementVerdict &&
     other.placementFolder == placementFolder &&
     other.receivedAt == receivedAt &&
     other.latencyMs == latencyMs &&
     other.evidence == evidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (seedAccountId.hashCode) +
    (seedAddress.hashCode) +
    (provider.hashCode) +
    (segment.hashCode) +
    (status.hashCode) +
    (placementVerdict == null ? 0 : placementVerdict!.hashCode) +
    (placementFolder == null ? 0 : placementFolder!.hashCode) +
    (receivedAt == null ? 0 : receivedAt!.hashCode) +
    (latencyMs == null ? 0 : latencyMs!.hashCode) +
    (evidence.hashCode);

  @override
  String toString() => 'InboxPlacementTargetResultDto[seedAccountId=$seedAccountId, seedAddress=$seedAddress, provider=$provider, segment=$segment, status=$status, placementVerdict=$placementVerdict, placementFolder=$placementFolder, receivedAt=$receivedAt, latencyMs=$latencyMs, evidence=$evidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'seedAccountId'] = this.seedAccountId;
      json[r'seedAddress'] = this.seedAddress;
      json[r'provider'] = this.provider;
      json[r'segment'] = this.segment;
      json[r'status'] = this.status;
    if (this.placementVerdict != null) {
      json[r'placementVerdict'] = this.placementVerdict;
    } else {
      json[r'placementVerdict'] = null;
    }
    if (this.placementFolder != null) {
      json[r'placementFolder'] = this.placementFolder;
    } else {
      json[r'placementFolder'] = null;
    }
    if (this.receivedAt != null) {
      json[r'receivedAt'] = this.receivedAt!.toUtc().toIso8601String();
    } else {
      json[r'receivedAt'] = null;
    }
    if (this.latencyMs != null) {
      json[r'latencyMs'] = this.latencyMs;
    } else {
      json[r'latencyMs'] = null;
    }
      json[r'evidence'] = this.evidence;
    return json;
  }

  /// Returns a new [InboxPlacementTargetResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementTargetResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementTargetResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementTargetResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementTargetResultDto(
        seedAccountId: mapValueOfType<int>(json, r'seedAccountId')!,
        seedAddress: mapValueOfType<String>(json, r'seedAddress')!,
        provider: mapValueOfType<String>(json, r'provider')!,
        segment: mapValueOfType<String>(json, r'segment')!,
        status: mapValueOfType<String>(json, r'status')!,
        placementVerdict: mapValueOfType<String>(json, r'placementVerdict'),
        placementFolder: mapValueOfType<String>(json, r'placementFolder'),
        receivedAt: mapDateTime(json, r'receivedAt', ''),
        latencyMs: mapValueOfType<int>(json, r'latencyMs'),
        evidence: mapCastOfType<String, String>(json, r'evidence')!,
      );
    }
    return null;
  }

  static List<InboxPlacementTargetResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementTargetResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementTargetResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementTargetResultDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementTargetResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementTargetResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementTargetResultDto-objects as value to a dart map
  static Map<String, List<InboxPlacementTargetResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementTargetResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementTargetResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'seedAccountId',
    'seedAddress',
    'provider',
    'segment',
    'status',
    'evidence',
  };
}

