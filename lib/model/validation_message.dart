//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationMessage {
  /// Returns a new [ValidationMessage] instance.
  ValidationMessage({
    this.lineNumber,
    this.message,
  });

  int lineNumber;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationMessage &&
     other.lineNumber == lineNumber &&
     other.message == message;

  @override
  int get hashCode =>
    (lineNumber == null ? 0 : lineNumber.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'ValidationMessage[lineNumber=$lineNumber, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lineNumber != null) {
      json[r'lineNumber'] = lineNumber;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [ValidationMessage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ValidationMessage fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ValidationMessage(
        lineNumber: json[r'lineNumber'],
        message: json[r'message'],
    );

  static List<ValidationMessage> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ValidationMessage>[]
      : json.map((v) => ValidationMessage.fromJson(v)).toList(growable: true == growable);

  static Map<String, ValidationMessage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ValidationMessage>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ValidationMessage.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ValidationMessage-objects as value to a dart map
  static Map<String, List<ValidationMessage>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidationMessage>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ValidationMessage.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

