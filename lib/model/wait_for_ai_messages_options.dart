//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForAIMessagesOptions {
  /// Returns a new [WaitForAIMessagesOptions] instance.
  WaitForAIMessagesOptions({
    this.expectations = const [],
    required this.since,
    required this.timeout,
    this.before,
    required this.allowSharedMessages,
    required this.aiOptions,
  });

  List<AIMessageExpectation> expectations;

  DateTime since;

  /// Minimum value: 1
  /// Maximum value: 120000
  int timeout;

  DateTime? before;

  bool allowSharedMessages;

  AIMessageAIOptions aiOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForAIMessagesOptions &&
     other.expectations == expectations &&
     other.since == since &&
     other.timeout == timeout &&
     other.before == before &&
     other.allowSharedMessages == allowSharedMessages &&
     other.aiOptions == aiOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expectations.hashCode) +
    (since.hashCode) +
    (timeout.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (allowSharedMessages.hashCode) +
    (aiOptions.hashCode);

  @override
  String toString() => 'WaitForAIMessagesOptions[expectations=$expectations, since=$since, timeout=$timeout, before=$before, allowSharedMessages=$allowSharedMessages, aiOptions=$aiOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'expectations'] = this.expectations;
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'timeout'] = this.timeout;
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
      json[r'allowSharedMessages'] = this.allowSharedMessages;
      json[r'aiOptions'] = this.aiOptions;
    return json;
  }

  /// Returns a new [WaitForAIMessagesOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitForAIMessagesOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitForAIMessagesOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitForAIMessagesOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitForAIMessagesOptions(
        expectations: AIMessageExpectation.listFromJson(json[r'expectations']),
        since: mapDateTime(json, r'since', '')!,
        timeout: mapValueOfType<int>(json, r'timeout')!,
        before: mapDateTime(json, r'before', ''),
        allowSharedMessages: mapValueOfType<bool>(json, r'allowSharedMessages')!,
        aiOptions: AIMessageAIOptions.fromJson(json[r'aiOptions'])!,
      );
    }
    return null;
  }

  static List<WaitForAIMessagesOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForAIMessagesOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForAIMessagesOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitForAIMessagesOptions> mapFromJson(dynamic json) {
    final map = <String, WaitForAIMessagesOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForAIMessagesOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitForAIMessagesOptions-objects as value to a dart map
  static Map<String, List<WaitForAIMessagesOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitForAIMessagesOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WaitForAIMessagesOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'expectations',
    'since',
    'timeout',
    'allowSharedMessages',
    'aiOptions',
  };
}

