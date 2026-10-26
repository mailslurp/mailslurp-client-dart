//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailBlacklistDomainResult {
  /// Returns a new [EmailBlacklistDomainResult] instance.
  EmailBlacklistDomainResult({
    required this.domain,
    required this.source_,
    this.listings = const [],
  });

  String domain;

  String source_;

  List<EmailBlacklistListingResult> listings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailBlacklistDomainResult &&
     other.domain == domain &&
     other.source_ == source_ &&
     other.listings == listings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (source_.hashCode) +
    (listings.hashCode);

  @override
  String toString() => 'EmailBlacklistDomainResult[domain=$domain, source_=$source_, listings=$listings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'source'] = this.source_;
      json[r'listings'] = this.listings;
    return json;
  }

  /// Returns a new [EmailBlacklistDomainResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailBlacklistDomainResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailBlacklistDomainResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailBlacklistDomainResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailBlacklistDomainResult(
        domain: mapValueOfType<String>(json, r'domain')!,
        source_: mapValueOfType<String>(json, r'source')!,
        listings: EmailBlacklistListingResult.listFromJson(json[r'listings']),
      );
    }
    return null;
  }

  static List<EmailBlacklistDomainResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailBlacklistDomainResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailBlacklistDomainResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailBlacklistDomainResult> mapFromJson(dynamic json) {
    final map = <String, EmailBlacklistDomainResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailBlacklistDomainResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailBlacklistDomainResult-objects as value to a dart map
  static Map<String, List<EmailBlacklistDomainResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailBlacklistDomainResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailBlacklistDomainResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'source',
    'listings',
  };
}

