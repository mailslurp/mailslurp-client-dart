//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccessLinkSendResultDto {
  /// Returns a new [AccessLinkSendResultDto] instance.
  AccessLinkSendResultDto({
    required this.toEmailAddress,
    required this.fromEmailAddress,
    this.fromName,
    required this.providerCode,
  });

  /// Email address the access-link email was sent to
  String toEmailAddress;

  /// Email address the access-link email was sent from
  String fromEmailAddress;

  /// Display name used by the sender
  String? fromName;

  /// Coarse email provider code. Does not expose sender route logic.
  String providerCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccessLinkSendResultDto &&
     other.toEmailAddress == toEmailAddress &&
     other.fromEmailAddress == fromEmailAddress &&
     other.fromName == fromName &&
     other.providerCode == providerCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (toEmailAddress.hashCode) +
    (fromEmailAddress.hashCode) +
    (fromName == null ? 0 : fromName!.hashCode) +
    (providerCode.hashCode);

  @override
  String toString() => 'AccessLinkSendResultDto[toEmailAddress=$toEmailAddress, fromEmailAddress=$fromEmailAddress, fromName=$fromName, providerCode=$providerCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'toEmailAddress'] = this.toEmailAddress;
      json[r'fromEmailAddress'] = this.fromEmailAddress;
    if (this.fromName != null) {
      json[r'fromName'] = this.fromName;
    } else {
      json[r'fromName'] = null;
    }
      json[r'providerCode'] = this.providerCode;
    return json;
  }

  /// Returns a new [AccessLinkSendResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccessLinkSendResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccessLinkSendResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccessLinkSendResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccessLinkSendResultDto(
        toEmailAddress: mapValueOfType<String>(json, r'toEmailAddress')!,
        fromEmailAddress: mapValueOfType<String>(json, r'fromEmailAddress')!,
        fromName: mapValueOfType<String>(json, r'fromName'),
        providerCode: mapValueOfType<String>(json, r'providerCode')!,
      );
    }
    return null;
  }

  static List<AccessLinkSendResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccessLinkSendResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccessLinkSendResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccessLinkSendResultDto> mapFromJson(dynamic json) {
    final map = <String, AccessLinkSendResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccessLinkSendResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccessLinkSendResultDto-objects as value to a dart map
  static Map<String, List<AccessLinkSendResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccessLinkSendResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccessLinkSendResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'toEmailAddress',
    'fromEmailAddress',
    'providerCode',
  };
}

