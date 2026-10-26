//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FreeInboxMessageDto {
  /// Returns a new [FreeInboxMessageDto] instance.
  FreeInboxMessageDto({
    required this.id,
    required this.sender,
    required this.subject,
    required this.text,
    required this.receivedAt,
  });

  String id;

  String sender;

  String subject;

  String text;

  DateTime receivedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FreeInboxMessageDto &&
     other.id == id &&
     other.sender == sender &&
     other.subject == subject &&
     other.text == text &&
     other.receivedAt == receivedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (sender.hashCode) +
    (subject.hashCode) +
    (text.hashCode) +
    (receivedAt.hashCode);

  @override
  String toString() => 'FreeInboxMessageDto[id=$id, sender=$sender, subject=$subject, text=$text, receivedAt=$receivedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'sender'] = this.sender;
      json[r'subject'] = this.subject;
      json[r'text'] = this.text;
      json[r'receivedAt'] = this.receivedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [FreeInboxMessageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeInboxMessageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FreeInboxMessageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FreeInboxMessageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FreeInboxMessageDto(
        id: mapValueOfType<String>(json, r'id')!,
        sender: mapValueOfType<String>(json, r'sender')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        text: mapValueOfType<String>(json, r'text')!,
        receivedAt: mapDateTime(json, r'receivedAt', '')!,
      );
    }
    return null;
  }

  static List<FreeInboxMessageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FreeInboxMessageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FreeInboxMessageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FreeInboxMessageDto> mapFromJson(dynamic json) {
    final map = <String, FreeInboxMessageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FreeInboxMessageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FreeInboxMessageDto-objects as value to a dart map
  static Map<String, List<FreeInboxMessageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FreeInboxMessageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FreeInboxMessageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'sender',
    'subject',
    'text',
    'receivedAt',
  };
}

