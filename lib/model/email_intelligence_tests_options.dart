//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailIntelligenceTestsOptions {
  /// Returns a new [EmailIntelligenceTestsOptions] instance.
  EmailIntelligenceTestsOptions({
    this.checkRandomLocalPart,
    this.checkFreeProvider,
    this.checkHttpsWebsite,
    this.checkDns,
    this.checkDomainAgeHint,
  });

  /// Check local-part randomness for email inputs.
  bool? checkRandomLocalPart;

  /// Check if domain is a known free email provider.
  bool? checkFreeProvider;

  /// Check if the domain has a reachable HTTPS website.
  bool? checkHttpsWebsite;

  /// Check DNS records (A, MX, SOA) for the domain.
  bool? checkDns;

  /// Derive a domain age hint from DNS SOA serial when possible.
  bool? checkDomainAgeHint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailIntelligenceTestsOptions &&
     other.checkRandomLocalPart == checkRandomLocalPart &&
     other.checkFreeProvider == checkFreeProvider &&
     other.checkHttpsWebsite == checkHttpsWebsite &&
     other.checkDns == checkDns &&
     other.checkDomainAgeHint == checkDomainAgeHint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checkRandomLocalPart == null ? 0 : checkRandomLocalPart!.hashCode) +
    (checkFreeProvider == null ? 0 : checkFreeProvider!.hashCode) +
    (checkHttpsWebsite == null ? 0 : checkHttpsWebsite!.hashCode) +
    (checkDns == null ? 0 : checkDns!.hashCode) +
    (checkDomainAgeHint == null ? 0 : checkDomainAgeHint!.hashCode);

  @override
  String toString() => 'EmailIntelligenceTestsOptions[checkRandomLocalPart=$checkRandomLocalPart, checkFreeProvider=$checkFreeProvider, checkHttpsWebsite=$checkHttpsWebsite, checkDns=$checkDns, checkDomainAgeHint=$checkDomainAgeHint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.checkRandomLocalPart != null) {
      json[r'checkRandomLocalPart'] = this.checkRandomLocalPart;
    } else {
      json[r'checkRandomLocalPart'] = null;
    }
    if (this.checkFreeProvider != null) {
      json[r'checkFreeProvider'] = this.checkFreeProvider;
    } else {
      json[r'checkFreeProvider'] = null;
    }
    if (this.checkHttpsWebsite != null) {
      json[r'checkHttpsWebsite'] = this.checkHttpsWebsite;
    } else {
      json[r'checkHttpsWebsite'] = null;
    }
    if (this.checkDns != null) {
      json[r'checkDns'] = this.checkDns;
    } else {
      json[r'checkDns'] = null;
    }
    if (this.checkDomainAgeHint != null) {
      json[r'checkDomainAgeHint'] = this.checkDomainAgeHint;
    } else {
      json[r'checkDomainAgeHint'] = null;
    }
    return json;
  }

  /// Returns a new [EmailIntelligenceTestsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailIntelligenceTestsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailIntelligenceTestsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailIntelligenceTestsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailIntelligenceTestsOptions(
        checkRandomLocalPart: mapValueOfType<bool>(json, r'checkRandomLocalPart'),
        checkFreeProvider: mapValueOfType<bool>(json, r'checkFreeProvider'),
        checkHttpsWebsite: mapValueOfType<bool>(json, r'checkHttpsWebsite'),
        checkDns: mapValueOfType<bool>(json, r'checkDns'),
        checkDomainAgeHint: mapValueOfType<bool>(json, r'checkDomainAgeHint'),
      );
    }
    return null;
  }

  static List<EmailIntelligenceTestsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailIntelligenceTestsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailIntelligenceTestsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailIntelligenceTestsOptions> mapFromJson(dynamic json) {
    final map = <String, EmailIntelligenceTestsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailIntelligenceTestsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailIntelligenceTestsOptions-objects as value to a dart map
  static Map<String, List<EmailIntelligenceTestsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailIntelligenceTestsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailIntelligenceTestsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

