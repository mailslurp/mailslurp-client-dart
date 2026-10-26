//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrepareAgentReplyOptions {
  /// Returns a new [PrepareAgentReplyOptions] instance.
  PrepareAgentReplyOptions({
    required this.sourceEmailId,
    required this.reply,
    this.expectedConversationVersion,
    this.expectedLatestEmailId,
    this.internalNote,
    this.claimId,
  });

  String sourceEmailId;

  ReplyToEmailOptions reply;

  int? expectedConversationVersion;

  String? expectedLatestEmailId;

  String? internalNote;

  String? claimId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrepareAgentReplyOptions &&
     other.sourceEmailId == sourceEmailId &&
     other.reply == reply &&
     other.expectedConversationVersion == expectedConversationVersion &&
     other.expectedLatestEmailId == expectedLatestEmailId &&
     other.internalNote == internalNote &&
     other.claimId == claimId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceEmailId.hashCode) +
    (reply.hashCode) +
    (expectedConversationVersion == null ? 0 : expectedConversationVersion!.hashCode) +
    (expectedLatestEmailId == null ? 0 : expectedLatestEmailId!.hashCode) +
    (internalNote == null ? 0 : internalNote!.hashCode) +
    (claimId == null ? 0 : claimId!.hashCode);

  @override
  String toString() => 'PrepareAgentReplyOptions[sourceEmailId=$sourceEmailId, reply=$reply, expectedConversationVersion=$expectedConversationVersion, expectedLatestEmailId=$expectedLatestEmailId, internalNote=$internalNote, claimId=$claimId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sourceEmailId'] = this.sourceEmailId;
      json[r'reply'] = this.reply;
    if (this.expectedConversationVersion != null) {
      json[r'expectedConversationVersion'] = this.expectedConversationVersion;
    } else {
      json[r'expectedConversationVersion'] = null;
    }
    if (this.expectedLatestEmailId != null) {
      json[r'expectedLatestEmailId'] = this.expectedLatestEmailId;
    } else {
      json[r'expectedLatestEmailId'] = null;
    }
    if (this.internalNote != null) {
      json[r'internalNote'] = this.internalNote;
    } else {
      json[r'internalNote'] = null;
    }
    if (this.claimId != null) {
      json[r'claimId'] = this.claimId;
    } else {
      json[r'claimId'] = null;
    }
    return json;
  }

  /// Returns a new [PrepareAgentReplyOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrepareAgentReplyOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrepareAgentReplyOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrepareAgentReplyOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrepareAgentReplyOptions(
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId')!,
        reply: ReplyToEmailOptions.fromJson(json[r'reply'])!,
        expectedConversationVersion: mapValueOfType<int>(json, r'expectedConversationVersion'),
        expectedLatestEmailId: mapValueOfType<String>(json, r'expectedLatestEmailId'),
        internalNote: mapValueOfType<String>(json, r'internalNote'),
        claimId: mapValueOfType<String>(json, r'claimId'),
      );
    }
    return null;
  }

  static List<PrepareAgentReplyOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrepareAgentReplyOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrepareAgentReplyOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrepareAgentReplyOptions> mapFromJson(dynamic json) {
    final map = <String, PrepareAgentReplyOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrepareAgentReplyOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrepareAgentReplyOptions-objects as value to a dart map
  static Map<String, List<PrepareAgentReplyOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrepareAgentReplyOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrepareAgentReplyOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sourceEmailId',
    'reply',
  };
}

