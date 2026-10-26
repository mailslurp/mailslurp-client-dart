//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsMessageMediaDto {
  /// Returns a new [SmsMessageMediaDto] instance.
  SmsMessageMediaDto({
    required this.id,
    required this.smsId,
    required this.phoneNumberId,
    required this.attachmentId,
    this.contentType,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String smsId;

  String phoneNumberId;

  String attachmentId;

  String? contentType;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsMessageMediaDto &&
     other.id == id &&
     other.smsId == smsId &&
     other.phoneNumberId == phoneNumberId &&
     other.attachmentId == attachmentId &&
     other.contentType == contentType &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (smsId.hashCode) +
    (phoneNumberId.hashCode) +
    (attachmentId.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SmsMessageMediaDto[id=$id, smsId=$smsId, phoneNumberId=$phoneNumberId, attachmentId=$attachmentId, contentType=$contentType, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'smsId'] = this.smsId;
      json[r'phoneNumberId'] = this.phoneNumberId;
      json[r'attachmentId'] = this.attachmentId;
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SmsMessageMediaDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsMessageMediaDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsMessageMediaDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsMessageMediaDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsMessageMediaDto(
        id: mapValueOfType<String>(json, r'id')!,
        smsId: mapValueOfType<String>(json, r'smsId')!,
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        contentType: mapValueOfType<String>(json, r'contentType'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<SmsMessageMediaDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsMessageMediaDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsMessageMediaDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsMessageMediaDto> mapFromJson(dynamic json) {
    final map = <String, SmsMessageMediaDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsMessageMediaDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsMessageMediaDto-objects as value to a dart map
  static Map<String, List<SmsMessageMediaDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsMessageMediaDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsMessageMediaDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'smsId',
    'phoneNumberId',
    'attachmentId',
    'createdAt',
    'updatedAt',
  };
}

