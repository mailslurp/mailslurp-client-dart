//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsPreview {
  /// Returns a new [SmsPreview] instance.
  SmsPreview({
    required this.id,
    required this.userId,
    required this.body,
    required this.phoneNumber,
    required this.fromNumber,
    required this.createdAt,
  });

  String id;

  String userId;

  String body;

  String phoneNumber;

  String fromNumber;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsPreview &&
     other.id == id &&
     other.userId == userId &&
     other.body == body &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (body.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'SmsPreview[id=$id, userId=$userId, body=$body, phoneNumber=$phoneNumber, fromNumber=$fromNumber, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'body'] = this.body;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SmsPreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsPreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsPreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsPreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsPreview(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        body: mapValueOfType<String>(json, r'body')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<SmsPreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsPreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsPreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsPreview> mapFromJson(dynamic json) {
    final map = <String, SmsPreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsPreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsPreview-objects as value to a dart map
  static Map<String, List<SmsPreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsPreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsPreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'body',
    'phoneNumber',
    'fromNumber',
    'createdAt',
  };
}

