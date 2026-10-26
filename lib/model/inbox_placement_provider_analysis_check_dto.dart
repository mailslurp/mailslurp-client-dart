//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementProviderAnalysisCheckDto {
  /// Returns a new [InboxPlacementProviderAnalysisCheckDto] instance.
  InboxPlacementProviderAnalysisCheckDto({
    required this.key,
    required this.label,
    required this.findingCode,
    required this.analysisVersion,
    required this.status,
    required this.severity,
    required this.confidencePercent,
    required this.confidenceLabel,
    required this.evidenceSchemaVersion,
    required this.evidenceKind,
    required this.autoVerifiable,
    required this.verificationMethod,
    required this.summary,
    this.details = const {},
    this.evidence = const {},
  });

  String key;

  String label;

  String findingCode;

  String analysisVersion;

  String status;

  String severity;

  int confidencePercent;

  String confidenceLabel;

  int evidenceSchemaVersion;

  String evidenceKind;

  bool autoVerifiable;

  String verificationMethod;

  String summary;

  Map<String, String> details;

  Map<String, String> evidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementProviderAnalysisCheckDto &&
     other.key == key &&
     other.label == label &&
     other.findingCode == findingCode &&
     other.analysisVersion == analysisVersion &&
     other.status == status &&
     other.severity == severity &&
     other.confidencePercent == confidencePercent &&
     other.confidenceLabel == confidenceLabel &&
     other.evidenceSchemaVersion == evidenceSchemaVersion &&
     other.evidenceKind == evidenceKind &&
     other.autoVerifiable == autoVerifiable &&
     other.verificationMethod == verificationMethod &&
     other.summary == summary &&
     other.details == details &&
     other.evidence == evidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (label.hashCode) +
    (findingCode.hashCode) +
    (analysisVersion.hashCode) +
    (status.hashCode) +
    (severity.hashCode) +
    (confidencePercent.hashCode) +
    (confidenceLabel.hashCode) +
    (evidenceSchemaVersion.hashCode) +
    (evidenceKind.hashCode) +
    (autoVerifiable.hashCode) +
    (verificationMethod.hashCode) +
    (summary.hashCode) +
    (details.hashCode) +
    (evidence.hashCode);

  @override
  String toString() => 'InboxPlacementProviderAnalysisCheckDto[key=$key, label=$label, findingCode=$findingCode, analysisVersion=$analysisVersion, status=$status, severity=$severity, confidencePercent=$confidencePercent, confidenceLabel=$confidenceLabel, evidenceSchemaVersion=$evidenceSchemaVersion, evidenceKind=$evidenceKind, autoVerifiable=$autoVerifiable, verificationMethod=$verificationMethod, summary=$summary, details=$details, evidence=$evidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'label'] = this.label;
      json[r'findingCode'] = this.findingCode;
      json[r'analysisVersion'] = this.analysisVersion;
      json[r'status'] = this.status;
      json[r'severity'] = this.severity;
      json[r'confidencePercent'] = this.confidencePercent;
      json[r'confidenceLabel'] = this.confidenceLabel;
      json[r'evidenceSchemaVersion'] = this.evidenceSchemaVersion;
      json[r'evidenceKind'] = this.evidenceKind;
      json[r'autoVerifiable'] = this.autoVerifiable;
      json[r'verificationMethod'] = this.verificationMethod;
      json[r'summary'] = this.summary;
      json[r'details'] = this.details;
      json[r'evidence'] = this.evidence;
    return json;
  }

  /// Returns a new [InboxPlacementProviderAnalysisCheckDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementProviderAnalysisCheckDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementProviderAnalysisCheckDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementProviderAnalysisCheckDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementProviderAnalysisCheckDto(
        key: mapValueOfType<String>(json, r'key')!,
        label: mapValueOfType<String>(json, r'label')!,
        findingCode: mapValueOfType<String>(json, r'findingCode')!,
        analysisVersion: mapValueOfType<String>(json, r'analysisVersion')!,
        status: mapValueOfType<String>(json, r'status')!,
        severity: mapValueOfType<String>(json, r'severity')!,
        confidencePercent: mapValueOfType<int>(json, r'confidencePercent')!,
        confidenceLabel: mapValueOfType<String>(json, r'confidenceLabel')!,
        evidenceSchemaVersion: mapValueOfType<int>(json, r'evidenceSchemaVersion')!,
        evidenceKind: mapValueOfType<String>(json, r'evidenceKind')!,
        autoVerifiable: mapValueOfType<bool>(json, r'autoVerifiable')!,
        verificationMethod: mapValueOfType<String>(json, r'verificationMethod')!,
        summary: mapValueOfType<String>(json, r'summary')!,
        details: mapCastOfType<String, String>(json, r'details')!,
        evidence: mapCastOfType<String, String>(json, r'evidence')!,
      );
    }
    return null;
  }

  static List<InboxPlacementProviderAnalysisCheckDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementProviderAnalysisCheckDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementProviderAnalysisCheckDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementProviderAnalysisCheckDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementProviderAnalysisCheckDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementProviderAnalysisCheckDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementProviderAnalysisCheckDto-objects as value to a dart map
  static Map<String, List<InboxPlacementProviderAnalysisCheckDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementProviderAnalysisCheckDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementProviderAnalysisCheckDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'label',
    'findingCode',
    'analysisVersion',
    'status',
    'severity',
    'confidencePercent',
    'confidenceLabel',
    'evidenceSchemaVersion',
    'evidenceKind',
    'autoVerifiable',
    'verificationMethod',
    'summary',
    'details',
    'evidence',
  };
}

