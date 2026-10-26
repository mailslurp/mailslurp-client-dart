//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmtpMailMessageBucketPath {
  /// Returns a new [SmtpMailMessageBucketPath] instance.
  SmtpMailMessageBucketPath({
    required this.bucket,
    required this.key,
    this.sha256,
  });

  String bucket;

  String key;

  String? sha256;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmtpMailMessageBucketPath &&
     other.bucket == bucket &&
     other.key == key &&
     other.sha256 == sha256;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket.hashCode) +
    (key.hashCode) +
    (sha256 == null ? 0 : sha256!.hashCode);

  @override
  String toString() => 'SmtpMailMessageBucketPath[bucket=$bucket, key=$key, sha256=$sha256]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bucket'] = this.bucket;
      json[r'key'] = this.key;
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    return json;
  }

  /// Returns a new [SmtpMailMessageBucketPath] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmtpMailMessageBucketPath? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmtpMailMessageBucketPath[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmtpMailMessageBucketPath[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmtpMailMessageBucketPath(
        bucket: mapValueOfType<String>(json, r'bucket')!,
        key: mapValueOfType<String>(json, r'key')!,
        sha256: mapValueOfType<String>(json, r'sha256'),
      );
    }
    return null;
  }

  static List<SmtpMailMessageBucketPath> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmtpMailMessageBucketPath>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmtpMailMessageBucketPath.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmtpMailMessageBucketPath> mapFromJson(dynamic json) {
    final map = <String, SmtpMailMessageBucketPath>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmtpMailMessageBucketPath.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmtpMailMessageBucketPath-objects as value to a dart map
  static Map<String, List<SmtpMailMessageBucketPath>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmtpMailMessageBucketPath>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmtpMailMessageBucketPath.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bucket',
    'key',
  };
}

