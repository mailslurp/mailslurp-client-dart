//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailIntelligenceSignalsDto {
  /// Returns a new [EmailIntelligenceSignalsDto] instance.
  EmailIntelligenceSignalsDto({
    required this.normalizedTarget,
    this.emailAddress,
    required this.domain,
    this.localPart,
    this.randomLocalPart,
    this.localPartEntropy,
    this.freeEmailProvider,
    this.hasHttpsWebsite,
    this.dnsARecordPresent,
    this.dnsMxRecordPresent,
    this.soaRecordPresent,
    this.domainAgeHintDays,
    this.neverBounceSafeToSend,
    this.notes = const [],
  });

  String normalizedTarget;

  String? emailAddress;

  String domain;

  String? localPart;

  bool? randomLocalPart;

  double? localPartEntropy;

  bool? freeEmailProvider;

  bool? hasHttpsWebsite;

  bool? dnsARecordPresent;

  bool? dnsMxRecordPresent;

  bool? soaRecordPresent;

  int? domainAgeHintDays;

  bool? neverBounceSafeToSend;

  List<String> notes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailIntelligenceSignalsDto &&
     other.normalizedTarget == normalizedTarget &&
     other.emailAddress == emailAddress &&
     other.domain == domain &&
     other.localPart == localPart &&
     other.randomLocalPart == randomLocalPart &&
     other.localPartEntropy == localPartEntropy &&
     other.freeEmailProvider == freeEmailProvider &&
     other.hasHttpsWebsite == hasHttpsWebsite &&
     other.dnsARecordPresent == dnsARecordPresent &&
     other.dnsMxRecordPresent == dnsMxRecordPresent &&
     other.soaRecordPresent == soaRecordPresent &&
     other.domainAgeHintDays == domainAgeHintDays &&
     other.neverBounceSafeToSend == neverBounceSafeToSend &&
     other.notes == notes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (normalizedTarget.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (domain.hashCode) +
    (localPart == null ? 0 : localPart!.hashCode) +
    (randomLocalPart == null ? 0 : randomLocalPart!.hashCode) +
    (localPartEntropy == null ? 0 : localPartEntropy!.hashCode) +
    (freeEmailProvider == null ? 0 : freeEmailProvider!.hashCode) +
    (hasHttpsWebsite == null ? 0 : hasHttpsWebsite!.hashCode) +
    (dnsARecordPresent == null ? 0 : dnsARecordPresent!.hashCode) +
    (dnsMxRecordPresent == null ? 0 : dnsMxRecordPresent!.hashCode) +
    (soaRecordPresent == null ? 0 : soaRecordPresent!.hashCode) +
    (domainAgeHintDays == null ? 0 : domainAgeHintDays!.hashCode) +
    (neverBounceSafeToSend == null ? 0 : neverBounceSafeToSend!.hashCode) +
    (notes.hashCode);

  @override
  String toString() => 'EmailIntelligenceSignalsDto[normalizedTarget=$normalizedTarget, emailAddress=$emailAddress, domain=$domain, localPart=$localPart, randomLocalPart=$randomLocalPart, localPartEntropy=$localPartEntropy, freeEmailProvider=$freeEmailProvider, hasHttpsWebsite=$hasHttpsWebsite, dnsARecordPresent=$dnsARecordPresent, dnsMxRecordPresent=$dnsMxRecordPresent, soaRecordPresent=$soaRecordPresent, domainAgeHintDays=$domainAgeHintDays, neverBounceSafeToSend=$neverBounceSafeToSend, notes=$notes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'normalizedTarget'] = this.normalizedTarget;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'domain'] = this.domain;
    if (this.localPart != null) {
      json[r'localPart'] = this.localPart;
    } else {
      json[r'localPart'] = null;
    }
    if (this.randomLocalPart != null) {
      json[r'randomLocalPart'] = this.randomLocalPart;
    } else {
      json[r'randomLocalPart'] = null;
    }
    if (this.localPartEntropy != null) {
      json[r'localPartEntropy'] = this.localPartEntropy;
    } else {
      json[r'localPartEntropy'] = null;
    }
    if (this.freeEmailProvider != null) {
      json[r'freeEmailProvider'] = this.freeEmailProvider;
    } else {
      json[r'freeEmailProvider'] = null;
    }
    if (this.hasHttpsWebsite != null) {
      json[r'hasHttpsWebsite'] = this.hasHttpsWebsite;
    } else {
      json[r'hasHttpsWebsite'] = null;
    }
    if (this.dnsARecordPresent != null) {
      json[r'dnsARecordPresent'] = this.dnsARecordPresent;
    } else {
      json[r'dnsARecordPresent'] = null;
    }
    if (this.dnsMxRecordPresent != null) {
      json[r'dnsMxRecordPresent'] = this.dnsMxRecordPresent;
    } else {
      json[r'dnsMxRecordPresent'] = null;
    }
    if (this.soaRecordPresent != null) {
      json[r'soaRecordPresent'] = this.soaRecordPresent;
    } else {
      json[r'soaRecordPresent'] = null;
    }
    if (this.domainAgeHintDays != null) {
      json[r'domainAgeHintDays'] = this.domainAgeHintDays;
    } else {
      json[r'domainAgeHintDays'] = null;
    }
    if (this.neverBounceSafeToSend != null) {
      json[r'neverBounceSafeToSend'] = this.neverBounceSafeToSend;
    } else {
      json[r'neverBounceSafeToSend'] = null;
    }
      json[r'notes'] = this.notes;
    return json;
  }

  /// Returns a new [EmailIntelligenceSignalsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailIntelligenceSignalsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailIntelligenceSignalsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailIntelligenceSignalsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailIntelligenceSignalsDto(
        normalizedTarget: mapValueOfType<String>(json, r'normalizedTarget')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        domain: mapValueOfType<String>(json, r'domain')!,
        localPart: mapValueOfType<String>(json, r'localPart'),
        randomLocalPart: mapValueOfType<bool>(json, r'randomLocalPart'),
        localPartEntropy: mapValueOfType<double>(json, r'localPartEntropy'),
        freeEmailProvider: mapValueOfType<bool>(json, r'freeEmailProvider'),
        hasHttpsWebsite: mapValueOfType<bool>(json, r'hasHttpsWebsite'),
        dnsARecordPresent: mapValueOfType<bool>(json, r'dnsARecordPresent'),
        dnsMxRecordPresent: mapValueOfType<bool>(json, r'dnsMxRecordPresent'),
        soaRecordPresent: mapValueOfType<bool>(json, r'soaRecordPresent'),
        domainAgeHintDays: mapValueOfType<int>(json, r'domainAgeHintDays'),
        neverBounceSafeToSend: mapValueOfType<bool>(json, r'neverBounceSafeToSend'),
        notes: json[r'notes'] is List
            ? (json[r'notes'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<EmailIntelligenceSignalsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailIntelligenceSignalsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailIntelligenceSignalsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailIntelligenceSignalsDto> mapFromJson(dynamic json) {
    final map = <String, EmailIntelligenceSignalsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailIntelligenceSignalsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailIntelligenceSignalsDto-objects as value to a dart map
  static Map<String, List<EmailIntelligenceSignalsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailIntelligenceSignalsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailIntelligenceSignalsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'normalizedTarget',
    'domain',
    'notes',
  };
}

