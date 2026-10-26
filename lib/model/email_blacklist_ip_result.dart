//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailBlacklistIpResult {
  /// Returns a new [EmailBlacklistIpResult] instance.
  EmailBlacklistIpResult({
    required this.ipAddress,
    required this.source_,
    this.listings = const [],
  });

  String ipAddress;

  String source_;

  List<EmailBlacklistListingResult> listings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailBlacklistIpResult &&
     other.ipAddress == ipAddress &&
     other.source_ == source_ &&
     other.listings == listings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ipAddress.hashCode) +
    (source_.hashCode) +
    (listings.hashCode);

  @override
  String toString() => 'EmailBlacklistIpResult[ipAddress=$ipAddress, source_=$source_, listings=$listings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ipAddress'] = this.ipAddress;
      json[r'source'] = this.source_;
      json[r'listings'] = this.listings;
    return json;
  }

  /// Returns a new [EmailBlacklistIpResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailBlacklistIpResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailBlacklistIpResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailBlacklistIpResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailBlacklistIpResult(
        ipAddress: mapValueOfType<String>(json, r'ipAddress')!,
        source_: mapValueOfType<String>(json, r'source')!,
        listings: EmailBlacklistListingResult.listFromJson(json[r'listings']),
      );
    }
    return null;
  }

  static List<EmailBlacklistIpResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailBlacklistIpResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailBlacklistIpResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailBlacklistIpResult> mapFromJson(dynamic json) {
    final map = <String, EmailBlacklistIpResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailBlacklistIpResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailBlacklistIpResult-objects as value to a dart map
  static Map<String, List<EmailBlacklistIpResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailBlacklistIpResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailBlacklistIpResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ipAddress',
    'source',
    'listings',
  };
}

