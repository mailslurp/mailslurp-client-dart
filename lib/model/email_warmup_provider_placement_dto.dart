//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupProviderPlacementDto {
  /// Returns a new [EmailWarmupProviderPlacementDto] instance.
  EmailWarmupProviderPlacementDto({
    required this.provider,
    required this.totalCount,
    required this.inboxCount,
    required this.spamCount,
    required this.notReceivedCount,
    required this.inboxPercent,
  });

  String provider;

  int totalCount;

  int inboxCount;

  int spamCount;

  int notReceivedCount;

  int inboxPercent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupProviderPlacementDto &&
     other.provider == provider &&
     other.totalCount == totalCount &&
     other.inboxCount == inboxCount &&
     other.spamCount == spamCount &&
     other.notReceivedCount == notReceivedCount &&
     other.inboxPercent == inboxPercent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (totalCount.hashCode) +
    (inboxCount.hashCode) +
    (spamCount.hashCode) +
    (notReceivedCount.hashCode) +
    (inboxPercent.hashCode);

  @override
  String toString() => 'EmailWarmupProviderPlacementDto[provider=$provider, totalCount=$totalCount, inboxCount=$inboxCount, spamCount=$spamCount, notReceivedCount=$notReceivedCount, inboxPercent=$inboxPercent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'totalCount'] = this.totalCount;
      json[r'inboxCount'] = this.inboxCount;
      json[r'spamCount'] = this.spamCount;
      json[r'notReceivedCount'] = this.notReceivedCount;
      json[r'inboxPercent'] = this.inboxPercent;
    return json;
  }

  /// Returns a new [EmailWarmupProviderPlacementDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupProviderPlacementDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupProviderPlacementDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupProviderPlacementDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupProviderPlacementDto(
        provider: mapValueOfType<String>(json, r'provider')!,
        totalCount: mapValueOfType<int>(json, r'totalCount')!,
        inboxCount: mapValueOfType<int>(json, r'inboxCount')!,
        spamCount: mapValueOfType<int>(json, r'spamCount')!,
        notReceivedCount: mapValueOfType<int>(json, r'notReceivedCount')!,
        inboxPercent: mapValueOfType<int>(json, r'inboxPercent')!,
      );
    }
    return null;
  }

  static List<EmailWarmupProviderPlacementDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProviderPlacementDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProviderPlacementDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupProviderPlacementDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupProviderPlacementDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupProviderPlacementDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupProviderPlacementDto-objects as value to a dart map
  static Map<String, List<EmailWarmupProviderPlacementDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupProviderPlacementDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupProviderPlacementDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'totalCount',
    'inboxCount',
    'spamCount',
    'notReceivedCount',
    'inboxPercent',
  };
}

