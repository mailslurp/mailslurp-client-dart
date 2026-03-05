//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobConfigDto {
  /// Returns a new [DeliverabilitySimulationJobConfigDto] instance.
  DeliverabilitySimulationJobConfigDto({
    this.senderInboxId,
    this.senderPhoneId,
    this.emailSubject,
    this.emailFromOverride,
    this.emailBodyTemplate,
    this.smsBodyTemplate,
    required this.delayMs,
    required this.batchSize,
    required this.sendsPerTarget,
  });

  String? senderInboxId;

  String? senderPhoneId;

  String? emailSubject;

  String? emailFromOverride;

  String? emailBodyTemplate;

  String? smsBodyTemplate;

  int delayMs;

  int batchSize;

  int sendsPerTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobConfigDto &&
     other.senderInboxId == senderInboxId &&
     other.senderPhoneId == senderPhoneId &&
     other.emailSubject == emailSubject &&
     other.emailFromOverride == emailFromOverride &&
     other.emailBodyTemplate == emailBodyTemplate &&
     other.smsBodyTemplate == smsBodyTemplate &&
     other.delayMs == delayMs &&
     other.batchSize == batchSize &&
     other.sendsPerTarget == sendsPerTarget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (senderInboxId == null ? 0 : senderInboxId!.hashCode) +
    (senderPhoneId == null ? 0 : senderPhoneId!.hashCode) +
    (emailSubject == null ? 0 : emailSubject!.hashCode) +
    (emailFromOverride == null ? 0 : emailFromOverride!.hashCode) +
    (emailBodyTemplate == null ? 0 : emailBodyTemplate!.hashCode) +
    (smsBodyTemplate == null ? 0 : smsBodyTemplate!.hashCode) +
    (delayMs.hashCode) +
    (batchSize.hashCode) +
    (sendsPerTarget.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobConfigDto[senderInboxId=$senderInboxId, senderPhoneId=$senderPhoneId, emailSubject=$emailSubject, emailFromOverride=$emailFromOverride, emailBodyTemplate=$emailBodyTemplate, smsBodyTemplate=$smsBodyTemplate, delayMs=$delayMs, batchSize=$batchSize, sendsPerTarget=$sendsPerTarget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.senderInboxId != null) {
      json[r'senderInboxId'] = this.senderInboxId;
    } else {
      json[r'senderInboxId'] = null;
    }
    if (this.senderPhoneId != null) {
      json[r'senderPhoneId'] = this.senderPhoneId;
    } else {
      json[r'senderPhoneId'] = null;
    }
    if (this.emailSubject != null) {
      json[r'emailSubject'] = this.emailSubject;
    } else {
      json[r'emailSubject'] = null;
    }
    if (this.emailFromOverride != null) {
      json[r'emailFromOverride'] = this.emailFromOverride;
    } else {
      json[r'emailFromOverride'] = null;
    }
    if (this.emailBodyTemplate != null) {
      json[r'emailBodyTemplate'] = this.emailBodyTemplate;
    } else {
      json[r'emailBodyTemplate'] = null;
    }
    if (this.smsBodyTemplate != null) {
      json[r'smsBodyTemplate'] = this.smsBodyTemplate;
    } else {
      json[r'smsBodyTemplate'] = null;
    }
      json[r'delayMs'] = this.delayMs;
      json[r'batchSize'] = this.batchSize;
      json[r'sendsPerTarget'] = this.sendsPerTarget;
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobConfigDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobConfigDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobConfigDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobConfigDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobConfigDto(
        senderInboxId: mapValueOfType<String>(json, r'senderInboxId'),
        senderPhoneId: mapValueOfType<String>(json, r'senderPhoneId'),
        emailSubject: mapValueOfType<String>(json, r'emailSubject'),
        emailFromOverride: mapValueOfType<String>(json, r'emailFromOverride'),
        emailBodyTemplate: mapValueOfType<String>(json, r'emailBodyTemplate'),
        smsBodyTemplate: mapValueOfType<String>(json, r'smsBodyTemplate'),
        delayMs: mapValueOfType<int>(json, r'delayMs')!,
        batchSize: mapValueOfType<int>(json, r'batchSize')!,
        sendsPerTarget: mapValueOfType<int>(json, r'sendsPerTarget')!,
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobConfigDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobConfigDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobConfigDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobConfigDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobConfigDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobConfigDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobConfigDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobConfigDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobConfigDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobConfigDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'delayMs',
    'batchSize',
    'sendsPerTarget',
  };
}

