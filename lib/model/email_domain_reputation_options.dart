//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailDomainReputationOptions {
  /// Returns a new [EmailDomainReputationOptions] instance.
  EmailDomainReputationOptions({
    required this.target,
    this.ipAddress,
    this.mxHost,
    this.includeBlacklist,
  });

  /// Email address, domain, IP address, or MX host to inspect.
  String target;

  /// Optional explicit IP address to check directly.
  String? ipAddress;

  /// Optional explicit MX host to resolve and check.
  String? mxHost;

  bool? includeBlacklist;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailDomainReputationOptions &&
     other.target == target &&
     other.ipAddress == ipAddress &&
     other.mxHost == mxHost &&
     other.includeBlacklist == includeBlacklist;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (target.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (includeBlacklist == null ? 0 : includeBlacklist!.hashCode);

  @override
  String toString() => 'EmailDomainReputationOptions[target=$target, ipAddress=$ipAddress, mxHost=$mxHost, includeBlacklist=$includeBlacklist]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'target'] = this.target;
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.mxHost != null) {
      json[r'mxHost'] = this.mxHost;
    } else {
      json[r'mxHost'] = null;
    }
    if (this.includeBlacklist != null) {
      json[r'includeBlacklist'] = this.includeBlacklist;
    } else {
      json[r'includeBlacklist'] = null;
    }
    return json;
  }

  /// Returns a new [EmailDomainReputationOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailDomainReputationOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailDomainReputationOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailDomainReputationOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailDomainReputationOptions(
        target: mapValueOfType<String>(json, r'target')!,
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        mxHost: mapValueOfType<String>(json, r'mxHost'),
        includeBlacklist: mapValueOfType<bool>(json, r'includeBlacklist'),
      );
    }
    return null;
  }

  static List<EmailDomainReputationOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailDomainReputationOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailDomainReputationOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailDomainReputationOptions> mapFromJson(dynamic json) {
    final map = <String, EmailDomainReputationOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailDomainReputationOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailDomainReputationOptions-objects as value to a dart map
  static Map<String, List<EmailDomainReputationOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailDomainReputationOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailDomainReputationOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'target',
  };
}

