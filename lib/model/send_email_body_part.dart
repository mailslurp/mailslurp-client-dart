//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendEmailBodyPart {
  /// Returns a new [SendEmailBodyPart] instance.
  SendEmailBodyPart({
    required this.contentType,
    required this.contentBody,
  });

  String contentType;

  String contentBody;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendEmailBodyPart &&
     other.contentType == contentType &&
     other.contentBody == contentBody;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentType.hashCode) +
    (contentBody.hashCode);

  @override
  String toString() => 'SendEmailBodyPart[contentType=$contentType, contentBody=$contentBody]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contentType'] = this.contentType;
      json[r'contentBody'] = this.contentBody;
    return json;
  }

  /// Returns a new [SendEmailBodyPart] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendEmailBodyPart? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendEmailBodyPart[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendEmailBodyPart[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendEmailBodyPart(
        contentType: mapValueOfType<String>(json, r'contentType')!,
        contentBody: mapValueOfType<String>(json, r'contentBody')!,
      );
    }
    return null;
  }

  static List<SendEmailBodyPart> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendEmailBodyPart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailBodyPart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendEmailBodyPart> mapFromJson(dynamic json) {
    final map = <String, SendEmailBodyPart>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendEmailBodyPart.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendEmailBodyPart-objects as value to a dart map
  static Map<String, List<SendEmailBodyPart>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendEmailBodyPart>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendEmailBodyPart.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contentType',
    'contentBody',
  };
}

