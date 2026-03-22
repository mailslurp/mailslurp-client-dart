//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AcquirePhonePoolLeaseOptions {
  /// Returns a new [AcquirePhonePoolLeaseOptions] instance.
  AcquirePhonePoolLeaseOptions({
    this.leaseName,
    this.leaseOwner,
    this.leaseDurationMillis,
    this.acquireTimeoutMillis,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leaseName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leaseOwner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? leaseDurationMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? acquireTimeoutMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AcquirePhonePoolLeaseOptions &&
     other.leaseName == leaseName &&
     other.leaseOwner == leaseOwner &&
     other.leaseDurationMillis == leaseDurationMillis &&
     other.acquireTimeoutMillis == acquireTimeoutMillis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leaseName == null ? 0 : leaseName!.hashCode) +
    (leaseOwner == null ? 0 : leaseOwner!.hashCode) +
    (leaseDurationMillis == null ? 0 : leaseDurationMillis!.hashCode) +
    (acquireTimeoutMillis == null ? 0 : acquireTimeoutMillis!.hashCode);

  @override
  String toString() => 'AcquirePhonePoolLeaseOptions[leaseName=$leaseName, leaseOwner=$leaseOwner, leaseDurationMillis=$leaseDurationMillis, acquireTimeoutMillis=$acquireTimeoutMillis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leaseName != null) {
      json[r'leaseName'] = this.leaseName;
    } else {
      json[r'leaseName'] = null;
    }
    if (this.leaseOwner != null) {
      json[r'leaseOwner'] = this.leaseOwner;
    } else {
      json[r'leaseOwner'] = null;
    }
    if (this.leaseDurationMillis != null) {
      json[r'leaseDurationMillis'] = this.leaseDurationMillis;
    } else {
      json[r'leaseDurationMillis'] = null;
    }
    if (this.acquireTimeoutMillis != null) {
      json[r'acquireTimeoutMillis'] = this.acquireTimeoutMillis;
    } else {
      json[r'acquireTimeoutMillis'] = null;
    }
    return json;
  }

  /// Returns a new [AcquirePhonePoolLeaseOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AcquirePhonePoolLeaseOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AcquirePhonePoolLeaseOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AcquirePhonePoolLeaseOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AcquirePhonePoolLeaseOptions(
        leaseName: mapValueOfType<String>(json, r'leaseName'),
        leaseOwner: mapValueOfType<String>(json, r'leaseOwner'),
        leaseDurationMillis: mapValueOfType<int>(json, r'leaseDurationMillis'),
        acquireTimeoutMillis: mapValueOfType<int>(json, r'acquireTimeoutMillis'),
      );
    }
    return null;
  }

  static List<AcquirePhonePoolLeaseOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AcquirePhonePoolLeaseOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AcquirePhonePoolLeaseOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AcquirePhonePoolLeaseOptions> mapFromJson(dynamic json) {
    final map = <String, AcquirePhonePoolLeaseOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AcquirePhonePoolLeaseOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AcquirePhonePoolLeaseOptions-objects as value to a dart map
  static Map<String, List<AcquirePhonePoolLeaseOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AcquirePhonePoolLeaseOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AcquirePhonePoolLeaseOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

