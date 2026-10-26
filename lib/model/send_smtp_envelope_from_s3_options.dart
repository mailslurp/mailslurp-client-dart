//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendSMTPEnvelopeFromS3Options {
  /// Returns a new [SendSMTPEnvelopeFromS3Options] instance.
  SendSMTPEnvelopeFromS3Options({
    this.rcptTo = const [],
    required this.mailFrom,
    required this.bucketPath,
  });

  List<String> rcptTo;

  String mailFrom;

  SmtpMailMessageBucketPath bucketPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendSMTPEnvelopeFromS3Options &&
     other.rcptTo == rcptTo &&
     other.mailFrom == mailFrom &&
     other.bucketPath == bucketPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rcptTo.hashCode) +
    (mailFrom.hashCode) +
    (bucketPath.hashCode);

  @override
  String toString() => 'SendSMTPEnvelopeFromS3Options[rcptTo=$rcptTo, mailFrom=$mailFrom, bucketPath=$bucketPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rcptTo'] = this.rcptTo;
      json[r'mailFrom'] = this.mailFrom;
      json[r'bucketPath'] = this.bucketPath;
    return json;
  }

  /// Returns a new [SendSMTPEnvelopeFromS3Options] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendSMTPEnvelopeFromS3Options? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendSMTPEnvelopeFromS3Options[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendSMTPEnvelopeFromS3Options[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendSMTPEnvelopeFromS3Options(
        rcptTo: json[r'rcptTo'] is List
            ? (json[r'rcptTo'] as List).cast<String>()
            : const [],
        mailFrom: mapValueOfType<String>(json, r'mailFrom')!,
        bucketPath: SmtpMailMessageBucketPath.fromJson(json[r'bucketPath'])!,
      );
    }
    return null;
  }

  static List<SendSMTPEnvelopeFromS3Options> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendSMTPEnvelopeFromS3Options>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendSMTPEnvelopeFromS3Options.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendSMTPEnvelopeFromS3Options> mapFromJson(dynamic json) {
    final map = <String, SendSMTPEnvelopeFromS3Options>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendSMTPEnvelopeFromS3Options.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendSMTPEnvelopeFromS3Options-objects as value to a dart map
  static Map<String, List<SendSMTPEnvelopeFromS3Options>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendSMTPEnvelopeFromS3Options>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendSMTPEnvelopeFromS3Options.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rcptTo',
    'mailFrom',
    'bucketPath',
  };
}

