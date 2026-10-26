//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetNextAgentWorkItemOptions {
  /// Returns a new [GetNextAgentWorkItemOptions] instance.
  GetNextAgentWorkItemOptions({
    required this.workerId,
    required this.leaseSeconds,
    this.cursor,
    this.inboxId,
    this.hasAttachments,
  });

  String workerId;

  /// Minimum value: 5
  /// Maximum value: 300
  int leaseSeconds;

  String? cursor;

  String? inboxId;

  bool? hasAttachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetNextAgentWorkItemOptions &&
     other.workerId == workerId &&
     other.leaseSeconds == leaseSeconds &&
     other.cursor == cursor &&
     other.inboxId == inboxId &&
     other.hasAttachments == hasAttachments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId.hashCode) +
    (leaseSeconds.hashCode) +
    (cursor == null ? 0 : cursor!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (hasAttachments == null ? 0 : hasAttachments!.hashCode);

  @override
  String toString() => 'GetNextAgentWorkItemOptions[workerId=$workerId, leaseSeconds=$leaseSeconds, cursor=$cursor, inboxId=$inboxId, hasAttachments=$hasAttachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workerId'] = this.workerId;
      json[r'leaseSeconds'] = this.leaseSeconds;
    if (this.cursor != null) {
      json[r'cursor'] = this.cursor;
    } else {
      json[r'cursor'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.hasAttachments != null) {
      json[r'hasAttachments'] = this.hasAttachments;
    } else {
      json[r'hasAttachments'] = null;
    }
    return json;
  }

  /// Returns a new [GetNextAgentWorkItemOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetNextAgentWorkItemOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetNextAgentWorkItemOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetNextAgentWorkItemOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetNextAgentWorkItemOptions(
        workerId: mapValueOfType<String>(json, r'workerId')!,
        leaseSeconds: mapValueOfType<int>(json, r'leaseSeconds')!,
        cursor: mapValueOfType<String>(json, r'cursor'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        hasAttachments: mapValueOfType<bool>(json, r'hasAttachments'),
      );
    }
    return null;
  }

  static List<GetNextAgentWorkItemOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetNextAgentWorkItemOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetNextAgentWorkItemOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetNextAgentWorkItemOptions> mapFromJson(dynamic json) {
    final map = <String, GetNextAgentWorkItemOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetNextAgentWorkItemOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetNextAgentWorkItemOptions-objects as value to a dart map
  static Map<String, List<GetNextAgentWorkItemOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetNextAgentWorkItemOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetNextAgentWorkItemOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workerId',
    'leaseSeconds',
  };
}

