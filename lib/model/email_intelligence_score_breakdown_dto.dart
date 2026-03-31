//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailIntelligenceScoreBreakdownDto {
  /// Returns a new [EmailIntelligenceScoreBreakdownDto] instance.
  EmailIntelligenceScoreBreakdownDto({
    required this.randomnessPenalty,
    required this.freeProviderPenalty,
    required this.httpsWebsitePenalty,
    required this.dnsPenalty,
    required this.domainAgePenalty,
    required this.emailValidationPenalty,
    required this.totalPenalty,
  });

  int randomnessPenalty;

  int freeProviderPenalty;

  int httpsWebsitePenalty;

  int dnsPenalty;

  int domainAgePenalty;

  int emailValidationPenalty;

  int totalPenalty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailIntelligenceScoreBreakdownDto &&
     other.randomnessPenalty == randomnessPenalty &&
     other.freeProviderPenalty == freeProviderPenalty &&
     other.httpsWebsitePenalty == httpsWebsitePenalty &&
     other.dnsPenalty == dnsPenalty &&
     other.domainAgePenalty == domainAgePenalty &&
     other.emailValidationPenalty == emailValidationPenalty &&
     other.totalPenalty == totalPenalty;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (randomnessPenalty.hashCode) +
    (freeProviderPenalty.hashCode) +
    (httpsWebsitePenalty.hashCode) +
    (dnsPenalty.hashCode) +
    (domainAgePenalty.hashCode) +
    (emailValidationPenalty.hashCode) +
    (totalPenalty.hashCode);

  @override
  String toString() => 'EmailIntelligenceScoreBreakdownDto[randomnessPenalty=$randomnessPenalty, freeProviderPenalty=$freeProviderPenalty, httpsWebsitePenalty=$httpsWebsitePenalty, dnsPenalty=$dnsPenalty, domainAgePenalty=$domainAgePenalty, emailValidationPenalty=$emailValidationPenalty, totalPenalty=$totalPenalty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'randomnessPenalty'] = this.randomnessPenalty;
      json[r'freeProviderPenalty'] = this.freeProviderPenalty;
      json[r'httpsWebsitePenalty'] = this.httpsWebsitePenalty;
      json[r'dnsPenalty'] = this.dnsPenalty;
      json[r'domainAgePenalty'] = this.domainAgePenalty;
      json[r'emailValidationPenalty'] = this.emailValidationPenalty;
      json[r'totalPenalty'] = this.totalPenalty;
    return json;
  }

  /// Returns a new [EmailIntelligenceScoreBreakdownDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailIntelligenceScoreBreakdownDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailIntelligenceScoreBreakdownDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailIntelligenceScoreBreakdownDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailIntelligenceScoreBreakdownDto(
        randomnessPenalty: mapValueOfType<int>(json, r'randomnessPenalty')!,
        freeProviderPenalty: mapValueOfType<int>(json, r'freeProviderPenalty')!,
        httpsWebsitePenalty: mapValueOfType<int>(json, r'httpsWebsitePenalty')!,
        dnsPenalty: mapValueOfType<int>(json, r'dnsPenalty')!,
        domainAgePenalty: mapValueOfType<int>(json, r'domainAgePenalty')!,
        emailValidationPenalty: mapValueOfType<int>(json, r'emailValidationPenalty')!,
        totalPenalty: mapValueOfType<int>(json, r'totalPenalty')!,
      );
    }
    return null;
  }

  static List<EmailIntelligenceScoreBreakdownDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailIntelligenceScoreBreakdownDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailIntelligenceScoreBreakdownDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailIntelligenceScoreBreakdownDto> mapFromJson(dynamic json) {
    final map = <String, EmailIntelligenceScoreBreakdownDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailIntelligenceScoreBreakdownDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailIntelligenceScoreBreakdownDto-objects as value to a dart map
  static Map<String, List<EmailIntelligenceScoreBreakdownDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailIntelligenceScoreBreakdownDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailIntelligenceScoreBreakdownDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'randomnessPenalty',
    'freeProviderPenalty',
    'httpsWebsitePenalty',
    'dnsPenalty',
    'domainAgePenalty',
    'emailValidationPenalty',
    'totalPenalty',
  };
}

