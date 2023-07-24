//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendSMTPEnvelopeOptions {
  /// Returns a new [SendSMTPEnvelopeOptions] instance.
  SendSMTPEnvelopeOptions({
    this.rcptTo = const [],
    required this.mailFrom,
    required this.data,
  });

  List<String> rcptTo;

  String mailFrom;

  String data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendSMTPEnvelopeOptions &&
     other.rcptTo == rcptTo &&
     other.mailFrom == mailFrom &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rcptTo.hashCode) +
    (mailFrom.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'SendSMTPEnvelopeOptions[rcptTo=$rcptTo, mailFrom=$mailFrom, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rcptTo'] = this.rcptTo;
      json[r'mailFrom'] = this.mailFrom;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [SendSMTPEnvelopeOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendSMTPEnvelopeOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendSMTPEnvelopeOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendSMTPEnvelopeOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendSMTPEnvelopeOptions(
        rcptTo: json[r'rcptTo'] is List
            ? (json[r'rcptTo'] as List).cast<String>()
            : const [],
        mailFrom: mapValueOfType<String>(json, r'mailFrom')!,
        data: mapValueOfType<String>(json, r'data')!,
      );
    }
    return null;
  }

  static List<SendSMTPEnvelopeOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendSMTPEnvelopeOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendSMTPEnvelopeOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendSMTPEnvelopeOptions> mapFromJson(dynamic json) {
    final map = <String, SendSMTPEnvelopeOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendSMTPEnvelopeOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendSMTPEnvelopeOptions-objects as value to a dart map
  static Map<String, List<SendSMTPEnvelopeOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendSMTPEnvelopeOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendSMTPEnvelopeOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rcptTo',
    'mailFrom',
    'data',
  };
}

