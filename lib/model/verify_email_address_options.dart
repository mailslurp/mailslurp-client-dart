//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyEmailAddressOptions {
  /// Returns a new [VerifyEmailAddressOptions] instance.
  VerifyEmailAddressOptions({
    this.mailServerDomain,
    required this.emailAddress,
    this.senderEmailAddress,
    this.port,
  });

  String? mailServerDomain;

  String emailAddress;

  String? senderEmailAddress;

  int? port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyEmailAddressOptions &&
     other.mailServerDomain == mailServerDomain &&
     other.emailAddress == emailAddress &&
     other.senderEmailAddress == senderEmailAddress &&
     other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mailServerDomain == null ? 0 : mailServerDomain!.hashCode) +
    (emailAddress.hashCode) +
    (senderEmailAddress == null ? 0 : senderEmailAddress!.hashCode) +
    (port == null ? 0 : port!.hashCode);

  @override
  String toString() => 'VerifyEmailAddressOptions[mailServerDomain=$mailServerDomain, emailAddress=$emailAddress, senderEmailAddress=$senderEmailAddress, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mailServerDomain != null) {
      json[r'mailServerDomain'] = this.mailServerDomain;
    } else {
      json[r'mailServerDomain'] = null;
    }
      json[r'emailAddress'] = this.emailAddress;
    if (this.senderEmailAddress != null) {
      json[r'senderEmailAddress'] = this.senderEmailAddress;
    } else {
      json[r'senderEmailAddress'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyEmailAddressOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyEmailAddressOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyEmailAddressOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyEmailAddressOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyEmailAddressOptions(
        mailServerDomain: mapValueOfType<String>(json, r'mailServerDomain'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        senderEmailAddress: mapValueOfType<String>(json, r'senderEmailAddress'),
        port: mapValueOfType<int>(json, r'port'),
      );
    }
    return null;
  }

  static List<VerifyEmailAddressOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyEmailAddressOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyEmailAddressOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyEmailAddressOptions> mapFromJson(dynamic json) {
    final map = <String, VerifyEmailAddressOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyEmailAddressOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyEmailAddressOptions-objects as value to a dart map
  static Map<String, List<VerifyEmailAddressOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyEmailAddressOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyEmailAddressOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
  };
}

