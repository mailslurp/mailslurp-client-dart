//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpiredInboxDto {
  /// Returns a new [ExpiredInboxDto] instance.
  ExpiredInboxDto({
    required this.id,
    required this.inboxId,
    required this.emailAddress,
  });

  String id;

  String inboxId;

  String emailAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpiredInboxDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.emailAddress == emailAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId.hashCode) +
    (emailAddress.hashCode);

  @override
  String toString() => 'ExpiredInboxDto[id=$id, inboxId=$inboxId, emailAddress=$emailAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'inboxId'] = this.inboxId;
      json[r'emailAddress'] = this.emailAddress;
    return json;
  }

  /// Returns a new [ExpiredInboxDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpiredInboxDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpiredInboxDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpiredInboxDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpiredInboxDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
      );
    }
    return null;
  }

  static List<ExpiredInboxDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpiredInboxDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpiredInboxDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpiredInboxDto> mapFromJson(dynamic json) {
    final map = <String, ExpiredInboxDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpiredInboxDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpiredInboxDto-objects as value to a dart map
  static Map<String, List<ExpiredInboxDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpiredInboxDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExpiredInboxDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'inboxId',
    'emailAddress',
  };
}

