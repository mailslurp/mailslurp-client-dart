//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDeliverabilitySimulationJobOptions {
  /// Returns a new [CreateDeliverabilitySimulationJobOptions] instance.
  CreateDeliverabilitySimulationJobOptions({
    this.senderInboxId,
    this.senderPhoneId,
    this.email,
    this.sms,
    this.delayMs,
    this.batchSize,
    this.sendsPerTarget,
  });

  /// Sender inbox ID for INBOX scope tests
  String? senderInboxId;

  /// Sender phone ID for PHONE scope tests
  String? senderPhoneId;

  DeliverabilitySimulationEmailOptions? email;

  DeliverabilitySimulationSmsOptions? sms;

  /// Delay between individual sends in milliseconds
  ///
  /// Minimum value: 50
  /// Maximum value: 60000
  int? delayMs;

  /// Maximum sends processed per scheduler batch
  ///
  /// Minimum value: 1
  /// Maximum value: 50
  int? batchSize;

  /// Optional fixed sends per target. If omitted this is derived from test expectations.
  ///
  /// Minimum value: 1
  /// Maximum value: 50
  int? sendsPerTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDeliverabilitySimulationJobOptions &&
     other.senderInboxId == senderInboxId &&
     other.senderPhoneId == senderPhoneId &&
     other.email == email &&
     other.sms == sms &&
     other.delayMs == delayMs &&
     other.batchSize == batchSize &&
     other.sendsPerTarget == sendsPerTarget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (senderInboxId == null ? 0 : senderInboxId!.hashCode) +
    (senderPhoneId == null ? 0 : senderPhoneId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (sms == null ? 0 : sms!.hashCode) +
    (delayMs == null ? 0 : delayMs!.hashCode) +
    (batchSize == null ? 0 : batchSize!.hashCode) +
    (sendsPerTarget == null ? 0 : sendsPerTarget!.hashCode);

  @override
  String toString() => 'CreateDeliverabilitySimulationJobOptions[senderInboxId=$senderInboxId, senderPhoneId=$senderPhoneId, email=$email, sms=$sms, delayMs=$delayMs, batchSize=$batchSize, sendsPerTarget=$sendsPerTarget]';

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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.sms != null) {
      json[r'sms'] = this.sms;
    } else {
      json[r'sms'] = null;
    }
    if (this.delayMs != null) {
      json[r'delayMs'] = this.delayMs;
    } else {
      json[r'delayMs'] = null;
    }
    if (this.batchSize != null) {
      json[r'batchSize'] = this.batchSize;
    } else {
      json[r'batchSize'] = null;
    }
    if (this.sendsPerTarget != null) {
      json[r'sendsPerTarget'] = this.sendsPerTarget;
    } else {
      json[r'sendsPerTarget'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDeliverabilitySimulationJobOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDeliverabilitySimulationJobOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDeliverabilitySimulationJobOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDeliverabilitySimulationJobOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDeliverabilitySimulationJobOptions(
        senderInboxId: mapValueOfType<String>(json, r'senderInboxId'),
        senderPhoneId: mapValueOfType<String>(json, r'senderPhoneId'),
        email: DeliverabilitySimulationEmailOptions.fromJson(json[r'email']),
        sms: DeliverabilitySimulationSmsOptions.fromJson(json[r'sms']),
        delayMs: mapValueOfType<int>(json, r'delayMs'),
        batchSize: mapValueOfType<int>(json, r'batchSize'),
        sendsPerTarget: mapValueOfType<int>(json, r'sendsPerTarget'),
      );
    }
    return null;
  }

  static List<CreateDeliverabilitySimulationJobOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDeliverabilitySimulationJobOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDeliverabilitySimulationJobOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDeliverabilitySimulationJobOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDeliverabilitySimulationJobOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDeliverabilitySimulationJobOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDeliverabilitySimulationJobOptions-objects as value to a dart map
  static Map<String, List<CreateDeliverabilitySimulationJobOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDeliverabilitySimulationJobOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDeliverabilitySimulationJobOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

