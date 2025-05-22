//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateOAuthExchangeResult {
  /// Returns a new [CreateOAuthExchangeResult] instance.
  CreateOAuthExchangeResult({
    required this.success,
    this.inboxId,
    this.error,
  });

  bool success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOAuthExchangeResult &&
     other.success == success &&
     other.inboxId == inboxId &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'CreateOAuthExchangeResult[success=$success, inboxId=$inboxId, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [CreateOAuthExchangeResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOAuthExchangeResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateOAuthExchangeResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateOAuthExchangeResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateOAuthExchangeResult(
        success: mapValueOfType<bool>(json, r'success')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<CreateOAuthExchangeResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOAuthExchangeResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOAuthExchangeResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOAuthExchangeResult> mapFromJson(dynamic json) {
    final map = <String, CreateOAuthExchangeResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOAuthExchangeResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOAuthExchangeResult-objects as value to a dart map
  static Map<String, List<CreateOAuthExchangeResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOAuthExchangeResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOAuthExchangeResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

