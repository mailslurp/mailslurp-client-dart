//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BulkSendEmailOptions {
  /// Returns a new [BulkSendEmailOptions] instance.
  BulkSendEmailOptions({
    this.inboxIds = const [],
    required this.sendEmailOptions,
  });

  /// Inboxes to send the email from
  List<String> inboxIds;

  SendEmailOptions sendEmailOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkSendEmailOptions &&
     other.inboxIds == inboxIds &&
     other.sendEmailOptions == sendEmailOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxIds.hashCode) +
    (sendEmailOptions.hashCode);

  @override
  String toString() => 'BulkSendEmailOptions[inboxIds=$inboxIds, sendEmailOptions=$sendEmailOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxIds'] = this.inboxIds;
      json[r'sendEmailOptions'] = this.sendEmailOptions;
    return json;
  }

  /// Returns a new [BulkSendEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkSendEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BulkSendEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BulkSendEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BulkSendEmailOptions(
        inboxIds: json[r'inboxIds'] is List
            ? (json[r'inboxIds'] as List).cast<String>()
            : const [],
        sendEmailOptions: SendEmailOptions.fromJson(json[r'sendEmailOptions'])!,
      );
    }
    return null;
  }

  static List<BulkSendEmailOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkSendEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkSendEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkSendEmailOptions> mapFromJson(dynamic json) {
    final map = <String, BulkSendEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkSendEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkSendEmailOptions-objects as value to a dart map
  static Map<String, List<BulkSendEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkSendEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkSendEmailOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxIds',
    'sendEmailOptions',
  };
}

