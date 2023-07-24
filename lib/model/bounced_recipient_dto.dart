//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BouncedRecipientDto {
  /// Returns a new [BouncedRecipientDto] instance.
  BouncedRecipientDto({
    required this.id,
    this.userId,
    this.sentEmailId,
    required this.recipient,
    this.diagnosticCode,
    this.action,
    this.status,
    required this.createdAt,
  });

  String id;

  String? userId;

  String? sentEmailId;

  String recipient;

  String? diagnosticCode;

  String? action;

  String? status;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BouncedRecipientDto &&
     other.id == id &&
     other.userId == userId &&
     other.sentEmailId == sentEmailId &&
     other.recipient == recipient &&
     other.diagnosticCode == diagnosticCode &&
     other.action == action &&
     other.status == status &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (recipient.hashCode) +
    (diagnosticCode == null ? 0 : diagnosticCode!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'BouncedRecipientDto[id=$id, userId=$userId, sentEmailId=$sentEmailId, recipient=$recipient, diagnosticCode=$diagnosticCode, action=$action, status=$status, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.sentEmailId != null) {
      json[r'sentEmailId'] = this.sentEmailId;
    } else {
      json[r'sentEmailId'] = null;
    }
      json[r'recipient'] = this.recipient;
    if (this.diagnosticCode != null) {
      json[r'diagnosticCode'] = this.diagnosticCode;
    } else {
      json[r'diagnosticCode'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BouncedRecipientDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BouncedRecipientDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BouncedRecipientDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BouncedRecipientDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BouncedRecipientDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        recipient: mapValueOfType<String>(json, r'recipient')!,
        diagnosticCode: mapValueOfType<String>(json, r'diagnosticCode'),
        action: mapValueOfType<String>(json, r'action'),
        status: mapValueOfType<String>(json, r'status'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<BouncedRecipientDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BouncedRecipientDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BouncedRecipientDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BouncedRecipientDto> mapFromJson(dynamic json) {
    final map = <String, BouncedRecipientDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BouncedRecipientDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BouncedRecipientDto-objects as value to a dart map
  static Map<String, List<BouncedRecipientDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BouncedRecipientDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BouncedRecipientDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'recipient',
    'createdAt',
  };
}

